var http = require('http');
var fs = require('fs');
var path = require('path');

http.createServer(function (request, response) {
	var filePath = path.join(__dirname, 'Dockerfile');
	var stat = fs.statSync(filePath);

  	response.writeHead(200, {
  		'Content-Type': 'text/plain',
  		'Content-Length': stat.size
  	});

  	var readStream = fs.createReadStream(filePath);
  	readStream.pipe(response);
}).listen(8080);

console.log('Server started');
