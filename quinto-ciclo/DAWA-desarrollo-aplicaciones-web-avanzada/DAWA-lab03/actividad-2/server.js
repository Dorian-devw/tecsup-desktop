const http = require('http');
const ExcelJS = require('exceljs');

const server = http.createServer(async (req, res) => {
    if (req.url === '/reporte') {
        try {
            res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            res.setHeader('Content-Disposition', 'attachment; filename="reporte_ventas.xlsx"');
            const workbook = new ExcelJS.stream.xlsx.WorkbookWriter({
                stream: res,
                useStyles: true
            });

            const worksheet = workbook.addWorksheet('Ventas');

            worksheet.columns = [
                { header: 'Producto', key: 'producto', width: 20 },
                { header: 'Cantidad', key: 'cantidad', width: 10 },
                { header: 'Precio', key: 'precio', width: 10 }
            ];

            for (let i = 1; i <= 20; i++) {
                worksheet.addRow({
                    producto: `Laptop Modelo ${String.fromCharCode(64 + i)}`,
                    cantidad: Math.floor(Math.random() * 50) + 1,
                    precio: (Math.random() * 1000 + 500).toFixed(2)
                }).commit();
            }

            await workbook.commit();
            console.log('Streaming de Excel completado');

        } catch (error) {
            console.error('Error al generar el Excel:', error);
            if (!res.headersSent) {
                res.writeHead(500, { 'Content-Type': 'text/plain; charset=utf-8' });
                res.end('Error interno del servidor al generar el reporte.');
            }
        }
    } else {
        res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
        res.end('Visita /reporte para descargar el Excel');
    }
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Servidor ejecutándose en http://localhost:${PORT}`);
});
