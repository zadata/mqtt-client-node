# NOTE: replace username and password with one you get fro ZADATA website
# NOTE: replace CLIENTID
#
# Uses this npm module:
# 	https://www.npmjs.org/package/mqtt
#	https://github.com/adamvr/MQTT.js
#
# REQUIRED:
# 	npm install -g mqtt

mqtt = require("mqtt")

client = mqtt.connect("mqtt://USERNAME:PASSWORD@mqtt.zadata.com:1883?clientId=CLIENTID")
client.subscribe "hello"
client.publish "hello", "Hello, World!", {retain: true}
client.on "message", (topic, message) ->
  console.log "Topic: #{topic} Message: #{message}"
  return
