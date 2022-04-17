# Wifi and MQTT connctivity to local LAN mosquitto broker and to Hive Cloud broker
# Integration with BME680 over i2c 

done with esp32s2 target

Uses APIs from `esp-tls` `esp-mqtt` UncleRus 'esp-idf-lib'  components to make

1) a MQTT over unsecure TCP to local LAN Mosquitto server(mqtt://)
2) a MQTT over a TLS secure connection to HiveCloud broker (mqtts://)
3) init BME 680 sensor and poll reading and sent over MQTT
 
i2c settings done via menuconfig and Kconfig.probuild(if you want to change the GPIOs used for different platforms)

Following GPIOs are used for esp32 target.
 ```text
 +------------------+   +----------+
 | ESP8266 / ESP32  |   | BME680   |
 |                  |   |          |
 |   GPIO 14 (SCL)  ----> SCL      |
 |   GPIO 13 (SDA)  <---> SDA      |
 +------------------+   +----------+
```

Using ESP-IDF powershell for compiling and ESP flashing.
Powershell enviroment setup using Espressif guides.

Change Makefile to include where you installed UncleRus esp-idf-lib components directory