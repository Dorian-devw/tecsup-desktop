import pandas as pd

data = [
    {'DNI': 10424472, 'Nombre': 'N/A (Error 500)', 'Estado': 'Sitio ONPE Inestable', 'Ubicacion': 'N/A', 'Direccion Local': 'N/A'},
    {'DNI': 60978226, 'Nombre': 'PAULO NICOLAS SANTOS ZUASNABAR', 'Estado': 'ERES SECRETARIO', 'Ubicacion': 'LIMA / LIMA / ATE', 'Direccion Local': 'IE 1227 INDIRA GANDHI - CALLE RIO NAPO SN'},
    {'DNI': 74051911, 'Nombre': 'FRANK JOEL SINCA OROZCO', 'Estado': 'NO ERES MIEMBRO DE MESA', 'Ubicacion': 'LIMA / LIMA / SANTA ANITA', 'Direccion Local': 'IEP CESAR VALLEJO DE LAS PRADERAS - SECUNDARIA'}
]

df = pd.DataFrame(data)
output_file = 'resultados_analisis.xlsx'

with pd.ExcelWriter(output_file, engine='openpyxl') as writer:
    df.to_excel(writer, index=False)
    worksheet = writer.sheets['Sheet1']
    for idx, col in enumerate(df.columns):
        max_len = max(
            df[col].astype(str).map(len).max(),
            len(str(col))
        ) + 2
        # chr(65 + idx) works for columns A-Z (which we have here)
        worksheet.column_dimensions[chr(65 + idx)].width = max_len
print(f"Excel generado con columnas auto-ajustadas en {output_file}")
