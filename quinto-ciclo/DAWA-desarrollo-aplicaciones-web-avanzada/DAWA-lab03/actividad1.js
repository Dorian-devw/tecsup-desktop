const { Transform } = require('stream');
const fs = require('fs');

const transformStream = new Transform({
    transform(chunk, encoding, callback) {
        callback(null, chunk.toString().toUpperCase());
    }
});

const readStream = fs.createReadStream('texto.txt', { encoding: 'utf8' });
const writeStream = fs.createWriteStream('texto_mayusculas.txt');

readStream
    .pipe(transformStream)
    .pipe(writeStream);

writeStream.on('finish', () => {
    console.log('Transformación completada. Revisa "texto_mayusculas.txt"');
});

readStream.on('error', (err) => console.error('Error de lectura:', err));
writeStream.on('error', (err) => console.error('Error de escritura:', err));
transformStream.on('error', (err) => console.error('Error de transformación:', err));
