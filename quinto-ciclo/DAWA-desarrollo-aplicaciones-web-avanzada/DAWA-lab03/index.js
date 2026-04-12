const fs = require('fs');

const readable = fs.createReadStream('datos.txt', { encoding: 'utf8' });

readable.on('data', (chunk) => {
    console.log('Fragmento recibido', chunk);
});

readable.on('end', () => {
    console.log('Lectura del archivo');
});

readable.on('error', (err) => {
    console.log('Error', err);
});

const writable = fs.createWriteStream('salida.txt', { encoding: 'utf8' });

writable.write('Este es un mensaje de prueba. \n')

writable.on('finish', () => {
    console.log('Escritura completada');
});


const zlib = require('zlib');

const readStream = fs.createReadStream('entrada.txt');
const writeStream = fs.createWriteStream('salida.txt.gz');
const gzip = zlib.createGzip();

readStream.pipe(gzip).pipe(writeStream);

writeStream.on('finish', () => {
    console.log('Compresión completada');
});


readable.on('data', (chunk) => {
    if (!writable.write(chunk)) {
        readable.pause();
    }
});

writable.on('drain', () => readable.resume());