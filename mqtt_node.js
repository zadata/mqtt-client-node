// NOTE: replace username and password with one you get fro ZADATA website
// NOTE: replace CLIENTID
//
// Uses this npm module:
// 	https://www.npmjs.org/package/mqtt
//	https://github.com/adamvr/MQTT.js
//
// REQUIRED:
// 	npm install -g mqtt

var mqtt = require('mqtt');

var client = mqtt.connect("mqtt://USERNAME:PASSWORD@mqtt.zadata.com:1883?clientId=CLIENTID");

client.subscribe('hello');
client.publish('hello', 'Hello, World!');
client.on('message', function(topic, message) {
	console.log('Topic: ' + topic + ' Message: ' + message);
});
