var net = require('net');
var fs = require('fs');
var server = net.createServer();
server.listen(1050,'127.0.0.1');
server.on('listening',function () {
    console.log('服务已经开启')
});
server.on('connection',function (socket) {
    socket.on('data',function (data) {
        var url = data.toString().split('\r\n')[0].split(' ')[1];
        try{
            var dataFiles = fs.readFileSync(__dirname  +  url);
            socket.write('HTTP/1.1 200OK\r\n\r\n');
            socket.write(dataFiles)
        }catch (e){
            socket.write("HTTP/1.1 404NotFound\r\n\r\n<html><body>404NotFound</body></html>");
        }
        socket.end()
    })
});