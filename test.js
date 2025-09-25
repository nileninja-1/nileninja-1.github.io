module.exports = function (cb) {
  const htmlContent = `
    <!DOCTYPE html>
    <html>
      <head>
        <title>Hello Page</title>
      </head>
      <body>
        <h1>Hello World!</h1>
        <p>This is HTML content.</p>
      </body>
    </html>
  `;
  
  cb(null, htmlContent);
};
