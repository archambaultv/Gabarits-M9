const http = require('http');

const serveur = http.createServer((req, res) => {
  if (req.url === '/') {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Bienvenue');
  } else {
    res.writeHead(404);
    res.end('Introuvable');
  }
});

serveur.listen(3000);
