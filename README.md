mqtt-client-node
================

Example of connecting to ZADATA via MQTT using Node.js

``` bash
git clone git@github.com:zadata/mqtt-client-node.git
cd mqtt-client-node/

npm install -g mqtt
```

To find your MQTT Username and Password
login into your `ZADATA` account on http://ZADATA.com and click navbar -> `Settings` -> `Credentials`

NOTE: you have two MQTT passwords (one for subscribers only, the other with subscriber and publisher priveleges - use the one for publishers).

``` bash
export MQTT_USER=...
export MQTT_PWD=...
node mqtt_client.js
```

or for CoffeeScript:

``` bash
export MQTT_USER=...
export MQTT_PWD=...
coffee mqtt_client.coffee
```
