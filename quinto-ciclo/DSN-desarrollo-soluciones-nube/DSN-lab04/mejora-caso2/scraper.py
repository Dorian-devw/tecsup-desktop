import pandas as pd
from playwright.sync_api import sync_playwright
import time
import os

def scrape_onpe(dni_list):
    results = []
    
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(viewport={'width': 1280, 'height': 800})
        page = context.new_page()
        
        url = "https://consultaelectoral.onpe.gob.pe/inicio"
        
        for dni in dni_list:
            print(f"Procesando DNI: {dni}...")
            try:
                page.goto(url, wait_until="networkidle")
                
                page.wait_for_selector('input', timeout=10000)
                
                dni_input = page.locator('input[type="text"]').first
                dni_input.fill(str(dni))
                
                submit_button = page.locator('button:has-text("Consultar"), button:has-text("CONSULTAR"), button.btn-primary').first
                submit_button.click()
                
                page.wait_for_load_state("networkidle")
                time.sleep(2) 
                
                data = {
                    "DNI": dni,
                    "Nombre": "No Encontrado",
                    "Estado": "No Encontrado",
                    "Ubicacion": "No Encontrado",
                    "Direccion Local": "No Encontrado"
                }
                
                status_box = page.locator('div:has-text("ERES"), div:has-text("NO ERES")').first
                if status_box.is_visible():
                    data["Estado"] = status_box.inner_text().strip()
                
                name_element = page.locator('div:has-text("DNI") + div, .nombre, .citizen-name').first
                name_label = page.locator('text="Nombres y Apellidos"').first
                if name_label.is_visible():
                    data["Nombre"] = page.locator('text="Nombres y Apellidos"').locator('xpath=..').locator('div').nth(1).inner_text().strip()

                loc_label = page.locator('text="Región / Provincia / Distrito"').first
                if loc_label.is_visible():
                    data["Ubicacion"] = page.locator('text="Región / Provincia / Distrito"').locator('xpath=..').locator('div').nth(1).inner_text().strip()

                local_element = page.locator('.local-votacion, .address, :has-text("Tu local de votación") + div').first
                if page.locator('text="Tu local de votación"').is_visible():
                    local_info = page.locator('text="Tu local de votación"').locator('xpath=../../..').inner_text()
                    data["Direccion Local"] = local_info.replace("Tu local de votación", "").strip()

                results.append(data)
                print(f"Estado de {dni}: {data['Estado']}")
                
            except Exception as e:
                print(f"Error procesando {dni}: {str(e)}")
                results.append({"DNI": dni, "Error": str(e)})
        
        browser.close()
    
    return results

if __name__ == "__main__":
    current_dir = os.path.dirname(os.path.abspath(__file__))
    input_file = os.path.join(current_dir, "dnis.xlsx")
    output_file = os.path.join(current_dir, "resultados_analisis.xlsx")
    
    if not os.path.exists(input_file):
        print(f"Archivo {input_file} no encontrado.")
    else:
        df = pd.read_excel(input_file)
        dni_col = 'dni' if 'dni' in df.columns else df.columns[0]
        dnis = df[dni_col].tolist()
        
        print(f"Iniciando scraping de {len(dnis)} DNIs...")
        analysis_results = scrape_onpe(dnis)
        
        result_df = pd.DataFrame(analysis_results)
        
        # Guardar con ajuste automático de columnas
        with pd.ExcelWriter(output_file, engine='openpyxl') as writer:
            result_df.to_excel(writer, index=False)
            worksheet = writer.sheets['Sheet1']
            for idx, col in enumerate(result_df.columns):
                # Encontrar la longitud máxima en la columna
                max_len = max(
                    result_df[col].astype(str).map(len).max(),
                    len(str(col))
                ) + 2
                worksheet.column_dimensions[chr(65 + idx)].width = max_len
        
        print(f"Proceso completado. Resultados guardados en {output_file}")
