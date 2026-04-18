CREATE TABLE IF NOT EXISTS sock (
	sock_id varchar(40) NOT NULL,
	name varchar(100),
	description varchar(500),
	price float,
	count int,
	image_url_1 varchar(100),
	image_url_2 varchar(100),
	PRIMARY KEY(sock_id)
);

CREATE TABLE IF NOT EXISTS tag (
	tag_id MEDIUMINT NOT NULL AUTO_INCREMENT,
	name varchar(20),
	PRIMARY KEY(tag_id)
);

CREATE TABLE IF NOT EXISTS sock_tag (
	sock_id varchar(40),
	tag_id MEDIUMINT NOT NULL,
	FOREIGN KEY (sock_id)
		REFERENCES sock(sock_id),
	FOREIGN KEY(tag_id)
		REFERENCES tag(tag_id)
);

-- ── Products ─────────────────────────────────────────

INSERT INTO sock VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Arduino Uno R3 - ATmega328P 5V 16MHz MCU Board", "The classic 8-bit AVR microcontroller. 14 digital I/O pins, 6 PWM outputs, 6 analog inputs, 32KB Flash, 2KB SRAM. The standard starting point for embedded systems projects.", 12.99, 200, "/catalogue/images/arduino-uno.jpg", "/catalogue/images/arduino-uno-2.jpg");

INSERT INTO sock VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Raspberry Pi 4 Model B 4GB LPDDR4 SBC", "Quad-core Cortex-A72 at 1.8GHz, 4GB LPDDR4, dual 4K HDMI, USB 3.0, Gigabit Ethernet, 802.11ac WiFi, Bluetooth 5.0. The most capable Pi yet.", 55.00, 85, "/catalogue/images/rpi4b.jpg", "/catalogue/images/rpi4b-2.jpg");

INSERT INTO sock VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "ESP32 DevKit V1 Dual-Core 240MHz WiFi+BT", "Dual-core 240MHz Xtensa LX6, 520KB SRAM, 4MB Flash, integrated 802.11b/g/n WiFi and Bluetooth 4.2. 38 GPIO pins. Ideal for IoT and wireless projects.", 8.50, 320, "/catalogue/images/esp32-devboard.jpg", "/catalogue/images/esp32-devboard-2.jpg");

INSERT INTO sock VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "STM32 Nucleo-64 Cortex-M4 80MHz Dev Board", "ARM Cortex-M4 at 80MHz, 1MB Flash, 128KB SRAM, Arduino-compatible headers, built-in ST-LINK/V2-1 debugger and programmer. 3.3V operation.", 18.00, 60, "/catalogue/images/stm32-nucleo.jpg", "/catalogue/images/stm32-nucleo-2.jpg");

INSERT INTO sock VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "Raspberry Pi Pico RP2040 Dual-Core 133MHz MCU", "RP2040 dual-core Cortex-M0+ at 133MHz, 264KB SRAM, 2MB Flash, 26 GPIO pins, 2× SPI, 2× I2C, 2× UART, 3× ADC. Ultra-low-cost microcontroller board.", 4.00, 500, "/catalogue/images/rpi-pico.jpg", "/catalogue/images/rpi-pico-2.jpg");

INSERT INTO sock VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "NodeMCU ESP8266 80MHz 4MB Flash WiFi Dev Board", "ESP8266 802.11b/g/n WiFi SoC, 80/160MHz, 4MB Flash, 11 digital I/O pins. Breadboard-friendly. The go-to board for low-cost WiFi IoT projects.", 5.99, 450, "/catalogue/images/esp32-devboard.jpg", "/catalogue/images/esp32-devboard-2.jpg");

INSERT INTO sock VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Arduino Mega 2560 ATmega2560 54-Pin MCU Board", "ATmega2560 at 16MHz, 256KB Flash, 8KB SRAM, 54 digital I/O pins, 16 analog inputs, 4 UARTs. For projects needing more pins and memory.", 22.00, 110, "/catalogue/images/arduino-mega.jpg", "/catalogue/images/arduino-mega-2.jpg");

INSERT INTO sock VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Jetson Nano Dev Kit 128-Core Maxwell GPU 4GB", "NVIDIA Maxwell 128-core GPU, quad-core Cortex-A57 at 1.43GHz, 4GB LPDDR4. Runs CUDA, TensorFlow, PyTorch for edge AI and computer vision.", 99.00, 30, "/catalogue/images/jetson-nano.jpg", "/catalogue/images/jetson-nano-2.jpg");

INSERT INTO sock VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "BeagleBone Black AM335x 1GHz Cortex-A8 SBC", "AM335x 1GHz ARM Cortex-A8, 512MB DDR3, 4GB eMMC, 92 expansion pins, 2× PRU real-time coprocessors, HDMI, USB, Ethernet.", 45.00, 50, "/catalogue/images/beaglebone-black.jpg", "/catalogue/images/beaglebone-black-2.jpg");

INSERT INTO sock VALUES ("c1000010-0000-4000-a000-000000000010", "Arduino Nano ATmega328P 5V 16MHz Compact MCU", "ATmega328P at 16MHz in a compact 18×45mm form factor. 22 I/O pins, 8 analog inputs, USB-B mini connector. Drop-in replacement for Uno in tight spaces.", 9.99, 300, "/catalogue/images/arduino-uno.jpg", "/catalogue/images/arduino-uno-2.jpg");

INSERT INTO sock VALUES ("c1000011-0000-4000-a000-000000000011", "Arduino Leonardo ATmega32U4 Native USB HID Board", "ATmega32U4 with native USB — emulates keyboard, mouse, or joystick. 20 digital I/O, 12 analog, 7 PWM outputs. 5V, 16MHz. Great for HID projects.", 19.99, 75, "/catalogue/images/arduino-uno-2.jpg", "/catalogue/images/arduino-uno.jpg");

INSERT INTO sock VALUES ("c1000012-0000-4000-a000-000000000012", "Raspberry Pi 5 Quad-Core 2.4GHz BCM2712 4GB SBC", "BCM2712 quad-core Cortex-A76 at 2.4GHz, 4GB LPDDR4X, PCIe 2.0 FPC connector, dual 4K60 HDMI, USB 3.0, Gigabit Ethernet. 2-3x faster than RPi 4.", 80.00, 40, "/catalogue/images/rpi4b.jpg", "/catalogue/images/rpi4b-2.jpg");

INSERT INTO sock VALUES ("c1000013-0000-4000-a000-000000000013", "Raspberry Pi Zero 2W Quad-Core 1GHz 512MB WiFi SBC", "RP3A0 quad-core Cortex-A53 at 1GHz, 512MB LPDDR2, 802.11b/g/n/ac WiFi, Bluetooth 4.2 LE. Smallest wireless Pi. 65×30mm form factor.", 18.00, 120, "/catalogue/images/rpi-pico.jpg", "/catalogue/images/rpi-pico-2.jpg");

INSERT INTO sock VALUES ("c1000014-0000-4000-a000-000000000014", "ESP32-S3 DevKit Dual-Core LX7 240MHz AI USB OTG", "Xtensa dual-core LX7 at 240MHz, 512KB SRAM, 8MB Flash, vector AI extensions, 802.11b/g/n WiFi, Bluetooth 5 LE, USB OTG. Next-gen ESP32 for AI workloads.", 12.99, 200, "/catalogue/images/esp32-devboard.jpg", "/catalogue/images/esp32-devboard-2.jpg");

INSERT INTO sock VALUES ("c1000015-0000-4000-a000-000000000015", "ESP32-CAM Module OV2640 2MP Camera WiFi Bluetooth", "ESP32-S with 2MP OV2640 camera, 520KB SRAM, 4MB Flash, microSD slot, 802.11b/g/n WiFi, Bluetooth. For video streaming and vision projects.", 9.50, 180, "/catalogue/images/esp32-devboard-2.jpg", "/catalogue/images/esp32-devboard.jpg");

INSERT INTO sock VALUES ("c1000016-0000-4000-a000-000000000016", "Teensy 4.1 Cortex-M7 600MHz USB High-Speed MCU", "ARM Cortex-M7 at 600MHz, 1MB RAM, 8MB Flash, 55 I/O pins, USB 2.0 480Mbit, Ethernet, microSD. The most powerful Arduino-compatible MCU board available.", 29.99, 45, "/catalogue/images/arduino-mega.jpg", "/catalogue/images/arduino-mega-2.jpg");

INSERT INTO sock VALUES ("c1000017-0000-4000-a000-000000000017", "STM32 Blue Pill STM32F103C8T6 72MHz Cortex-M3", "STM32F103C8T6 Cortex-M3 at 72MHz, 64KB Flash, 20KB SRAM, 37 I/O pins, CAN, USB, SPI, I2C, UART. The most popular sub-$3 ARM board in the maker community.", 3.50, 400, "/catalogue/images/stm32-nucleo-2.jpg", "/catalogue/images/stm32-nucleo.jpg");

INSERT INTO sock VALUES ("c1000018-0000-4000-a000-000000000018", "Orange Pi Zero 2 Allwinner H616 Quad-Core 1.5GHz", "Allwinner H616 quad-core Cortex-A53 at 1.5GHz, 1GB LPDDR3, 802.11 b/g/n/ac WiFi, Bluetooth 5.0, Gigabit Ethernet, USB 3.0, 26-pin GPIO.", 28.00, 65, "/catalogue/images/rpi4b-2.jpg", "/catalogue/images/rpi4b.jpg");

INSERT INTO sock VALUES ("c1000019-0000-4000-a000-000000000019", "Rock Pi 4B RK3399 Hexa-Core 4GB LPDDR4 SBC", "Rockchip RK3399 hexa-core big.LITTLE (2× A72 + 4× A53), 4GB LPDDR4, 4K HDMI, USB 3.0, PCIe, Gigabit Ethernet, WiFi, Bluetooth 5.0.", 65.00, 25, "/catalogue/images/beaglebone-black.jpg", "/catalogue/images/beaglebone-black-2.jpg");

INSERT INTO sock VALUES ("c1000020-0000-4000-a000-000000000020", "DHT22 Digital Temperature & Humidity Sensor Module", "Single-wire digital interface. Range: -40 to 80°C (±0.5°C accuracy), 0–100% RH (±2–5%). 3.3–5V supply. Includes pull-up resistor breakout.", 3.20, 600, "/catalogue/images/rpi-pico.jpg", "/catalogue/images/rpi-pico-2.jpg");

INSERT INTO sock VALUES ("c1000021-0000-4000-a000-000000000021", "BME280 Barometric Pressure Temperature Humidity I2C", "±1 hPa pressure (300–1100 hPa), ±1°C temperature, ±3% humidity. I2C and SPI interfaces. Ultra-low 3.6μA current draw. 3.3V operation.", 4.50, 400, "/catalogue/images/esp32-devboard.jpg", "/catalogue/images/esp32-devboard-2.jpg");

INSERT INTO sock VALUES ("c1000022-0000-4000-a000-000000000022", "MPU-6050 6-Axis Gyroscope Accelerometer IMU Module", "3-axis gyroscope (±250–2000°/s) + 3-axis accelerometer (±2–16g). Built-in DMP for motion processing. I2C interface. 3.3–5V tolerant.", 3.80, 500, "/catalogue/images/stm32-nucleo-2.jpg", "/catalogue/images/stm32-nucleo.jpg");

INSERT INTO sock VALUES ("c1000023-0000-4000-a000-000000000023", "HC-SR04 Ultrasonic Distance Sensor Module 2-400cm", "Measures distance 2–400cm with ±3mm accuracy. 5V supply, Trigger and Echo pins. 15° beam angle. Common in robotics and obstacle avoidance.", 1.80, 800, "/catalogue/images/arduino-uno-2.jpg", "/catalogue/images/arduino-uno.jpg");

INSERT INTO sock VALUES ("c1000024-0000-4000-a000-000000000024", "HC-SR501 PIR Motion Sensor Adjustable Range 7m", "Passive infrared motion detector. 3–7m detection range, 110° cone angle. Adjustable sensitivity and hold-time potentiometers. 5–12V supply.", 2.50, 700, "/catalogue/images/rpi-pico-2.jpg", "/catalogue/images/rpi-pico.jpg");

INSERT INTO sock VALUES ("c1000025-0000-4000-a000-000000000025", "SX1276 LoRa Module 868/915MHz Long-Range 10km", "SX1276 transceiver, 868/915MHz ISM band, up to 10km line-of-sight range, -148dBm sensitivity, +20dBm output power. SPI interface. 3.3V.", 8.99, 150, "/catalogue/images/stm32-nucleo.jpg", "/catalogue/images/stm32-nucleo-2.jpg");

INSERT INTO sock VALUES ("c1000026-0000-4000-a000-000000000026", "SSD1306 0.96in OLED 128x64 Pixel I2C Display", "SSD1306 controller, 128×64 white pixels, I2C address 0x3C (switchable to 0x3D). 3.3–5V. No backlight needed. Wide viewing angle.", 3.99, 350, "/catalogue/images/arduino-uno.jpg", "/catalogue/images/arduino-uno-2.jpg");

INSERT INTO sock VALUES ("c1000027-0000-4000-a000-000000000027", "8-Channel USB Logic Analyzer 24MHz Sigrok Compatible", "8-channel USB logic analyzer, 24MHz sample rate. Compatible with Sigrok/PulseView. Decodes SPI, I2C, UART, 1-Wire, and more. USB bus powered.", 12.00, 90, "/catalogue/images/arduino-mega.jpg", "/catalogue/images/arduino-mega-2.jpg");

INSERT INTO sock VALUES ("c1000028-0000-4000-a000-000000000028", "CP2102 USB to UART Bridge 3.3V/5V Selectable", "Silicon Labs CP2102 USB-to-UART bridge. 3.3V and 5V selectable I/O. Baud rates up to 921600. Plug-and-play on Linux, macOS, Windows.", 2.20, 500, "/catalogue/images/arduino-uno.jpg", "/catalogue/images/arduino-uno-2.jpg");

INSERT INTO sock VALUES ("c1000029-0000-4000-a000-000000000029", "L298N Dual H-Bridge 2A DC Motor Driver Module", "Dual H-bridge driver for 2× DC motors or 1× stepper. 2A per channel (3A peak), 5–46V motor supply, 5V logic. Speed control via PWM.", 3.50, 250, "/catalogue/images/products/l298n/l298n-1.jpg", "/catalogue/images/products/l298n/l298n-2.jpg");

INSERT INTO sock VALUES ("c1000030-0000-4000-a000-000000000030", "830-Tie Solderless Breadboard Half-Size Prototyping", "830 tie-point solderless breadboard. Two power rails, standard 2.54mm pitch. Fits all DIP ICs and most modules. Pairs with Arduino and Pi.", 2.80, 1000, "/catalogue/images/arduino-uno-2.jpg", "/catalogue/images/arduino-uno.jpg");

-- ── Tags ─────────────────────────────────────────────

INSERT INTO tag (name) VALUES ("Microcontroller");
INSERT INTO tag (name) VALUES ("SBC");
INSERT INTO tag (name) VALUES ("WiFi");
INSERT INTO tag (name) VALUES ("Bluetooth");
INSERT INTO tag (name) VALUES ("ARM");
INSERT INTO tag (name) VALUES ("5V");
INSERT INTO tag (name) VALUES ("3.3V");
INSERT INTO tag (name) VALUES ("Arduino");
INSERT INTO tag (name) VALUES ("Raspberry Pi");
INSERT INTO tag (name) VALUES ("Espressif");
INSERT INTO tag (name) VALUES ("Beginner");
INSERT INTO tag (name) VALUES ("AI");
INSERT INTO tag (name) VALUES ("Sensor");
INSERT INTO tag (name) VALUES ("Display");
INSERT INTO tag (name) VALUES ("LoRa");
INSERT INTO tag (name) VALUES ("Motor");
INSERT INTO tag (name) VALUES ("Tool");

-- ── Tag assignments ───────────────────────────────────

-- Arduino Uno R3
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "6");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "8");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "11");

-- Raspberry Pi 4B
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "2");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "3");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "4");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "5");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "9");

-- ESP32 DevKit
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "1");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "4");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "7");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "10");

-- STM32 Nucleo-64
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "1");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "5");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "7");

-- Raspberry Pi Pico
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "1");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "5");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "7");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "9");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "11");

-- NodeMCU ESP8266
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "1");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "3");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "7");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "10");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "11");

-- Arduino Mega 2560
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "6");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "8");

-- Jetson Nano
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "2");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "5");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "12");

-- BeagleBone Black
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "2");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "1");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "5");

-- Arduino Nano
INSERT INTO sock_tag VALUES ("c1000010-0000-4000-a000-000000000010", "1");
INSERT INTO sock_tag VALUES ("c1000010-0000-4000-a000-000000000010", "6");
INSERT INTO sock_tag VALUES ("c1000010-0000-4000-a000-000000000010", "8");
INSERT INTO sock_tag VALUES ("c1000010-0000-4000-a000-000000000010", "11");

-- Arduino Leonardo
INSERT INTO sock_tag VALUES ("c1000011-0000-4000-a000-000000000011", "1");
INSERT INTO sock_tag VALUES ("c1000011-0000-4000-a000-000000000011", "6");
INSERT INTO sock_tag VALUES ("c1000011-0000-4000-a000-000000000011", "8");

-- Raspberry Pi 5
INSERT INTO sock_tag VALUES ("c1000012-0000-4000-a000-000000000012", "2");
INSERT INTO sock_tag VALUES ("c1000012-0000-4000-a000-000000000012", "3");
INSERT INTO sock_tag VALUES ("c1000012-0000-4000-a000-000000000012", "4");
INSERT INTO sock_tag VALUES ("c1000012-0000-4000-a000-000000000012", "5");
INSERT INTO sock_tag VALUES ("c1000012-0000-4000-a000-000000000012", "9");

-- Raspberry Pi Zero 2W
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "2");
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "3");
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "4");
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "5");
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "9");
INSERT INTO sock_tag VALUES ("c1000013-0000-4000-a000-000000000013", "11");

-- ESP32-S3 DevKit
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "1");
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "3");
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "4");
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "7");
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "10");
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014", "12");

-- ESP32-CAM
INSERT INTO sock_tag VALUES ("c1000015-0000-4000-a000-000000000015", "1");
INSERT INTO sock_tag VALUES ("c1000015-0000-4000-a000-000000000015", "3");
INSERT INTO sock_tag VALUES ("c1000015-0000-4000-a000-000000000015", "7");
INSERT INTO sock_tag VALUES ("c1000015-0000-4000-a000-000000000015", "10");

-- Teensy 4.1
INSERT INTO sock_tag VALUES ("c1000016-0000-4000-a000-000000000016", "1");
INSERT INTO sock_tag VALUES ("c1000016-0000-4000-a000-000000000016", "5");
INSERT INTO sock_tag VALUES ("c1000016-0000-4000-a000-000000000016", "7");

-- STM32 Blue Pill
INSERT INTO sock_tag VALUES ("c1000017-0000-4000-a000-000000000017", "1");
INSERT INTO sock_tag VALUES ("c1000017-0000-4000-a000-000000000017", "5");
INSERT INTO sock_tag VALUES ("c1000017-0000-4000-a000-000000000017", "7");

-- Orange Pi Zero 2
INSERT INTO sock_tag VALUES ("c1000018-0000-4000-a000-000000000018", "2");
INSERT INTO sock_tag VALUES ("c1000018-0000-4000-a000-000000000018", "3");
INSERT INTO sock_tag VALUES ("c1000018-0000-4000-a000-000000000018", "4");
INSERT INTO sock_tag VALUES ("c1000018-0000-4000-a000-000000000018", "5");

-- Rock Pi 4B
INSERT INTO sock_tag VALUES ("c1000019-0000-4000-a000-000000000019", "2");
INSERT INTO sock_tag VALUES ("c1000019-0000-4000-a000-000000000019", "3");
INSERT INTO sock_tag VALUES ("c1000019-0000-4000-a000-000000000019", "4");
INSERT INTO sock_tag VALUES ("c1000019-0000-4000-a000-000000000019", "5");

-- DHT22
INSERT INTO sock_tag VALUES ("c1000020-0000-4000-a000-000000000020", "13");
INSERT INTO sock_tag VALUES ("c1000020-0000-4000-a000-000000000020", "6");
INSERT INTO sock_tag VALUES ("c1000020-0000-4000-a000-000000000020", "11");

-- BME280
INSERT INTO sock_tag VALUES ("c1000021-0000-4000-a000-000000000021", "13");
INSERT INTO sock_tag VALUES ("c1000021-0000-4000-a000-000000000021", "7");

-- MPU-6050
INSERT INTO sock_tag VALUES ("c1000022-0000-4000-a000-000000000022", "13");
INSERT INTO sock_tag VALUES ("c1000022-0000-4000-a000-000000000022", "7");

-- HC-SR04
INSERT INTO sock_tag VALUES ("c1000023-0000-4000-a000-000000000023", "13");
INSERT INTO sock_tag VALUES ("c1000023-0000-4000-a000-000000000023", "6");
INSERT INTO sock_tag VALUES ("c1000023-0000-4000-a000-000000000023", "11");

-- HC-SR501 PIR
INSERT INTO sock_tag VALUES ("c1000024-0000-4000-a000-000000000024", "13");
INSERT INTO sock_tag VALUES ("c1000024-0000-4000-a000-000000000024", "6");
INSERT INTO sock_tag VALUES ("c1000024-0000-4000-a000-000000000024", "11");

-- SX1276 LoRa
INSERT INTO sock_tag VALUES ("c1000025-0000-4000-a000-000000000025", "15");
INSERT INTO sock_tag VALUES ("c1000025-0000-4000-a000-000000000025", "7");

-- SSD1306 OLED
INSERT INTO sock_tag VALUES ("c1000026-0000-4000-a000-000000000026", "14");
INSERT INTO sock_tag VALUES ("c1000026-0000-4000-a000-000000000026", "7");
INSERT INTO sock_tag VALUES ("c1000026-0000-4000-a000-000000000026", "11");

-- Logic Analyzer
INSERT INTO sock_tag VALUES ("c1000027-0000-4000-a000-000000000027", "17");

-- CP2102
INSERT INTO sock_tag VALUES ("c1000028-0000-4000-a000-000000000028", "17");
INSERT INTO sock_tag VALUES ("c1000028-0000-4000-a000-000000000028", "11");

-- L298N Motor Driver
INSERT INTO sock_tag VALUES ("c1000029-0000-4000-a000-000000000029", "16");
INSERT INTO sock_tag VALUES ("c1000029-0000-4000-a000-000000000029", "6");

-- Breadboard
INSERT INTO sock_tag VALUES ("c1000030-0000-4000-a000-000000000030", "17");
INSERT INTO sock_tag VALUES ("c1000030-0000-4000-a000-000000000030", "11");

-- ── New tags ──────────────────────────────────────────
INSERT INTO tag (name) VALUES ("Servo");      -- 18
INSERT INTO tag (name) VALUES ("Stepper");    -- 19
INSERT INTO tag (name) VALUES ("RF");         -- 20
INSERT INTO tag (name) VALUES ("GSM");        -- 21
INSERT INTO tag (name) VALUES ("Power");      -- 22
INSERT INTO tag (name) VALUES ("Ethernet");   -- 23
INSERT INTO tag (name) VALUES ("Camera");     -- 24
INSERT INTO tag (name) VALUES ("Wireless");   -- 25

-- ── New products ──────────────────────────────────────

-- SENSORS
INSERT INTO sock VALUES ("c2000001-0000-4000-a000-000000000001","DS18B20 Waterproof Digital Temperature Probe 1-Wire","1-Wire digital thermometer in waterproof stainless probe. Range -55 to 125°C, ±0.5°C accuracy. 3–5.5V supply. Up to 127 sensors on a single bus.",2.50,800,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000002-0000-4000-a000-000000000002","MQ-2 Flammable Gas Smoke Sensor Module","Detects LPG, propane, methane, alcohol, hydrogen and smoke. 5V supply, analog and digital outputs. Detection range 200–10000ppm. Adjustable threshold potentiometer.",2.20,600,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000003-0000-4000-a000-000000000003","ADXL345 3-Axis Accelerometer ±16g I2C/SPI","±2g/4g/8g/16g selectable range, 13-bit resolution, I2C and SPI. Built-in FIFO, tap/freefall detection interrupts. Ultra-low 40µA current draw. 3.3V/5V.",3.50,450,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");
INSERT INTO sock VALUES ("c2000004-0000-4000-a000-000000000004","BMP180 Barometric Pressure Altitude Sensor I2C","300–1100 hPa range, ±0.12 hPa accuracy, temperature co-sensing -40 to 85°C. I2C interface. 3.3V/5V. Low 5µA current. Altitude resolution 0.17m.",2.80,500,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");
INSERT INTO sock VALUES ("c2000005-0000-4000-a000-000000000005","ACS712 5A Current Sensor Module Hall Effect","Hall-effect linear current sensor. ±5A range, 185mV/A sensitivity, 2.1kV isolation. 5V supply, analog output. Measures both AC and DC current.",3.20,350,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");
INSERT INTO sock VALUES ("c2000006-0000-4000-a000-000000000006","KY-040 Rotary Encoder Module 20 Pulses/Rev","Incremental rotary encoder, 20 pulses per revolution, push-button click. 5V supply. CLK, DT, SW outputs. Infinite rotation. Common for menu navigation.",1.50,700,"/catalogue/images/rpi-pico-2.jpg","/catalogue/images/rpi-pico.jpg");
INSERT INTO sock VALUES ("c2000007-0000-4000-a000-000000000007","TCS3200 Color Sensor Module RGB Detection","Programmable color-to-frequency converter. 4-photodiode array with RGB and clear filters. Output: 2–500kHz square wave proportional to light intensity. 3–5V.",4.20,300,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000008-0000-4000-a000-000000000008","VL53L0X Time-of-Flight Distance Sensor I2C 2m","Laser ToF ranging, 0–2m range, ±3% accuracy. I2C address 0x29 (adjustable). 2.8V operation, 3.3V/5V breakout. Fast 10ms measurement cycle.",4.80,280,"/catalogue/images/stm32-nucleo-2.jpg","/catalogue/images/stm32-nucleo.jpg");
INSERT INTO sock VALUES ("c2000009-0000-4000-a000-000000000009","FC-37 Rain Sensor Detection Module","Analog and digital outputs. Detects rain, water, or liquid on surface. 3.3–5V supply. Adjustable sensitivity via potentiometer. Comes with sensing pad.",1.40,600,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000010-0000-4000-a000-000000000010","INA219 Current Voltage Power Monitor I2C","Bidirectional 26V current/voltage monitor over I2C. ±3.2A range, 0.8mA resolution. Calculates power directly. 3.3–5V. Up to 16 per bus with address pins.",3.60,320,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");
INSERT INTO sock VALUES ("c2000011-0000-4000-a000-000000000011","MQ-135 Air Quality CO2 NH3 Benzene Sensor","Detects CO2, NH3, benzene, alcohol, smoke. 5V supply, analog and digital output. Pre-heat 24h for stable readings. Detection range 10–300ppm.",2.40,450,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000012-0000-4000-a000-000000000012","HCSR505 Mini PIR Motion Sensor 3.3V–12V","Miniature passive infrared motion sensor. 3.3–12V supply, 3-pin output. Sensitivity 5m, 100° detection angle. Latching output. Smaller than HC-SR501.",1.80,550,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");

-- DISPLAYS
INSERT INTO sock VALUES ("c2000013-0000-4000-a000-000000000013","1.8in TFT ST7735 128x160 SPI Color Display Module","ST7735 controller, 128×160 TFT, 262K colors. 4-wire SPI, 3.3V logic. Includes microSD card slot on board. 40ms full-screen refresh. Arduino/Pi libraries.",5.50,200,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000014-0000-4000-a000-000000000014","16x2 LCD Character Display I2C Blue Backlight","HD44780-compatible, I2C backpack (PCF8574 expander), address 0x27. 5V supply. 2 rows × 16 characters. Blue backlight, black text. 4 contrast screws.",3.20,400,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000015-0000-4000-a000-000000000015","4x20 LCD Character Display I2C Yellow-Green","HD44780, I2C backpack, address 0x27 (configurable). 5V. 4 rows × 20 characters. Yellow-green backlight. Pins: SDA, SCL, VCC, GND. Bright, high contrast.",5.80,150,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");
INSERT INTO sock VALUES ("c2000016-0000-4000-a000-000000000016","MAX7219 8x8 LED Dot Matrix Module Cascadable","MAX7219 SPI controller, 8×8 red LED matrix. Cascadable up to 8 modules. 5V. SPI interface with CS, CLK, DIN. Hardware-controlled brightness. 3.3V logic safe.",3.50,300,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000017-0000-4000-a000-000000000017","2.4in TFT ILI9341 240x320 SPI Touch Display","ILI9341 controller, 240×320 TFT, 262K colors. 4-wire SPI + XPT2046 resistive touch. 3.3V/5V (level shifted). MicroSD slot. 65K colors.",9.90,120,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");

-- WIRELESS / RF
INSERT INTO sock VALUES ("c2000018-0000-4000-a000-000000000018","HC-05 Bluetooth 2.0 Serial Module Master/Slave","Bluetooth 2.0 SPP slave/master. AT commands for pairing, baud rate up to 1.38Mbps. 3.3V logic, 5V supply. UART interface. 10m range indoor.",4.20,300,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000019-0000-4000-a000-000000000019","HC-06 Bluetooth 2.0 Serial Slave Module","Bluetooth 2.0 SPP slave only. AT commands for name/PIN/baud. UART 9600 default. 3.3V logic level, 5V tolerant VCC. Pairs with Android/PC easily.",3.50,350,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");
INSERT INTO sock VALUES ("c2000020-0000-4000-a000-000000000020","NRF24L01+ 2.4GHz 250kbps RF Transceiver Module","Nordic nRF24L01+, 2.4GHz ISM band, 250kbps/1Mbps/2Mbps. SPI interface, 3.3V logic. 125 channels. -94dBm sensitivity, +7dBm max output. 1km LOS PA+LNA version.",3.20,400,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");
INSERT INTO sock VALUES ("c2000021-0000-4000-a000-000000000021","SIM800L GPRS GSM Module Quad-Band 850/900/1800/1900","SIM800L quad-band GSM/GPRS. SMS, call, GPRS data. AT command set. 3.7V Li-Ion supply (LDO onboard). UART interface. Antenna connector. Nano-SIM slot.",8.50,120,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000022-0000-4000-a000-000000000022","ESP-01S ESP8266 WiFi Serial Module 1MB Flash","ESP8266 802.11b/g/n, 1MB Flash, UART AT firmware. 3.3V, 2 GPIO pins. Breadboard adapter recommended. Perfect for adding WiFi to 5V Arduino via level shifter.",2.80,500,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000023-0000-4000-a000-000000000023","W5500 Ethernet Module SPI Hardwired TCP/IP","WIZnet W5500 hardwired TCP/IP stack. SPI interface. 10/100Mbps. Supports TCP, UDP, ICMP, IPv4, ARP, IGMP, PPPoE. 3.3V logic, 5V supply. RJ45 onboard.",7.20,180,"/catalogue/images/arduino-mega-2.jpg","/catalogue/images/arduino-mega.jpg");

-- MOTORS / ACTUATORS
INSERT INTO sock VALUES ("c2000024-0000-4000-a000-000000000024","SG90 9g Micro Servo 180-Degree PWM Control","9g servo, 180° rotation, 1.2kg·cm torque. 50Hz PWM (1–2ms pulse). 4.8–6V supply. Includes 3 horns and mounting hardware. White plastic gear.",2.50,600,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000025-0000-4000-a000-000000000025","MG996R Metal Gear Servo 55g High-Torque","Metal gear servo, 180° rotation, 9.4kg·cm torque at 4.8V. 50Hz PWM. 4.8–7.2V supply. Faster than SG90, suitable for robotics arms and steering.",4.80,250,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");
INSERT INTO sock VALUES ("c2000026-0000-4000-a000-000000000026","NEMA17 Bipolar Stepper Motor 1.7A 45Ncm","NEMA17 frame, 200 steps/rev (1.8°), 1.7A rated, 45Ncm holding torque. 4-wire bipolar. Use with A4988 or DRV8825 driver. Common in 3D printers and CNC.",8.50,150,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000027-0000-4000-a000-000000000027","28BYJ-48 5V Stepper Motor + ULN2003 Driver Kit","5V unipolar stepper, 64:1 reduction, 512 steps/rev effective. Includes ULN2003 driver board with LED indicators. 4-wire half-step drive. Quiet and precise.",2.20,500,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000028-0000-4000-a000-000000000028","DRV8825 Stepper Motor Driver Module 1/32 Microstepping","TI DRV8825, 1/32 microstepping, 2.2A max per coil. 8.2–45V motor supply. Adjustable current via potentiometer. Over-temp and overcurrent protection. Pololu-compatible.",3.80,280,"/catalogue/images/stm32-nucleo-2.jpg","/catalogue/images/stm32-nucleo.jpg");
INSERT INTO sock VALUES ("c2000029-0000-4000-a000-000000000029","A4988 Stepper Motor Driver Module 1/16 Microstepping","Allegro A4988, 1/16 microstepping, 2A max per coil. 8–35V motor supply. STEP/DIR interface. Thermal shutdown, overcurrent protection. Pololu-compatible footprint.",2.50,350,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");

-- TOOLS & PROTOTYPING
INSERT INTO sock VALUES ("c2000030-0000-4000-a000-000000000030","Jumper Wire Kit 120pcs M-M M-F F-F 20cm DuPont","120 jumper wires: 40× male-to-male, 40× male-to-female, 40× female-to-female. 20cm length. 26AWG tinned copper. 2.54mm pitch. Rainbow-coded for easy identification.",3.50,1000,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000031-0000-4000-a000-000000000031","40-Pin Male Header Strip 2.54mm Single Row 5pcs","Gold-plated single-row 40-pin male headers. 2.54mm pitch, 11.5mm pin length. Break-to-size. Standard for Arduino shields, PCB prototyping, breadboard use.",1.20,2000,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");
INSERT INTO sock VALUES ("c2000032-0000-4000-a000-000000000032","USB Power Meter Voltage Current Energy Tester","USB-A + USB-C tester. Measures 4–24V, 0–6A, power in watts, energy in mAh/mWh. OLED display. Tests chargers, cables, power banks. D+/D- display for charging protocol.",5.50,200,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000033-0000-4000-a000-000000000033","Digital Multimeter AC/DC Voltage Current Resistance","Auto-range digital multimeter. DC/AC voltage to 600V, DC/AC current to 10A, resistance to 20MΩ, diode/continuity test. 4000-count display. Probes included.",12.00,150,"/catalogue/images/arduino-mega-2.jpg","/catalogue/images/arduino-mega.jpg");
INSERT INTO sock VALUES ("c2000034-0000-4000-a000-000000000034","Soldering Iron Kit 60W Adjustable Temperature","60W soldering iron, 200–450°C adjustable, ceramic heating element. Includes solder wire, 5 tip types, flux, desoldering pump, tweezers, helping hands.",18.00,80,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000035-0000-4000-a000-000000000035","MicroSD Card SPI Module 3.3V/5V Level Shifting","SPI-interface microSD socket with level shifting. 3.3V/5V compatible. SPI, MISO, MOSI, SCK, CS, GND, VCC pins. FAT16/FAT32 support. Fits cards up to 32GB.",1.80,600,"/catalogue/images/rpi-pico-2.jpg","/catalogue/images/rpi-pico.jpg");

-- POWER MANAGEMENT
INSERT INTO sock VALUES ("c2000036-0000-4000-a000-000000000036","LM2596 DC-DC Buck Converter Module 4.5-40V to 1.25-35V","LM2596S step-down converter. Input 4.5–40V, output 1.25–35V adjustable, 3A continuous. Adjustable via potentiometer. 92% efficiency. LED power indicator.",2.80,400,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000037-0000-4000-a000-000000000037","MT3608 DC-DC Boost Converter Module 2-24V to 5-28V","MT3608 step-up converter. Input 2–24V, output 5–28V adjustable, 2A. Automatically adjusts output. 93% efficiency. Compact 27×14mm. Common for Li-Ion to 5V boost.",1.80,500,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000038-0000-4000-a000-000000000038","TP4056 Micro-USB Li-Ion Charger Module with Protection","TP4056 1A Li-Ion/LiPo charger via micro-USB. DW01A + FS8205A protection IC adds over-charge, over-discharge, short-circuit protection. Charge/full indicator LEDs.",1.50,700,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000039-0000-4000-a000-000000000039","AMS1117 3.3V LDO Voltage Regulator Module","AMS1117-3.3 LDO regulator. Input 4.5–12V, output 3.3V at 1A. LED power indicator. Screw terminal input/output. 800mV dropout. Common for 5V to 3.3V conversion.",1.20,800,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");

-- ── Tag assignments for new products ─────────────────

-- DS18B20
INSERT INTO sock_tag VALUES ("c2000001-0000-4000-a000-000000000001","13");
INSERT INTO sock_tag VALUES ("c2000001-0000-4000-a000-000000000001","6");
INSERT INTO sock_tag VALUES ("c2000001-0000-4000-a000-000000000001","11");
-- MQ-2 Gas Sensor
INSERT INTO sock_tag VALUES ("c2000002-0000-4000-a000-000000000002","13");
INSERT INTO sock_tag VALUES ("c2000002-0000-4000-a000-000000000002","6");
INSERT INTO sock_tag VALUES ("c2000002-0000-4000-a000-000000000002","11");
-- ADXL345
INSERT INTO sock_tag VALUES ("c2000003-0000-4000-a000-000000000003","13");
INSERT INTO sock_tag VALUES ("c2000003-0000-4000-a000-000000000003","7");
-- BMP180
INSERT INTO sock_tag VALUES ("c2000004-0000-4000-a000-000000000004","13");
INSERT INTO sock_tag VALUES ("c2000004-0000-4000-a000-000000000004","7");
INSERT INTO sock_tag VALUES ("c2000004-0000-4000-a000-000000000004","11");
-- ACS712
INSERT INTO sock_tag VALUES ("c2000005-0000-4000-a000-000000000005","13");
INSERT INTO sock_tag VALUES ("c2000005-0000-4000-a000-000000000005","6");
INSERT INTO sock_tag VALUES ("c2000005-0000-4000-a000-000000000005","22");
-- KY-040 Encoder
INSERT INTO sock_tag VALUES ("c2000006-0000-4000-a000-000000000006","13");
INSERT INTO sock_tag VALUES ("c2000006-0000-4000-a000-000000000006","6");
INSERT INTO sock_tag VALUES ("c2000006-0000-4000-a000-000000000006","11");
-- TCS3200 Color
INSERT INTO sock_tag VALUES ("c2000007-0000-4000-a000-000000000007","13");
INSERT INTO sock_tag VALUES ("c2000007-0000-4000-a000-000000000007","7");
-- VL53L0X ToF
INSERT INTO sock_tag VALUES ("c2000008-0000-4000-a000-000000000008","13");
INSERT INTO sock_tag VALUES ("c2000008-0000-4000-a000-000000000008","7");
-- Rain Sensor
INSERT INTO sock_tag VALUES ("c2000009-0000-4000-a000-000000000009","13");
INSERT INTO sock_tag VALUES ("c2000009-0000-4000-a000-000000000009","6");
INSERT INTO sock_tag VALUES ("c2000009-0000-4000-a000-000000000009","11");
-- INA219
INSERT INTO sock_tag VALUES ("c2000010-0000-4000-a000-000000000010","13");
INSERT INTO sock_tag VALUES ("c2000010-0000-4000-a000-000000000010","7");
INSERT INTO sock_tag VALUES ("c2000010-0000-4000-a000-000000000010","22");
-- MQ-135
INSERT INTO sock_tag VALUES ("c2000011-0000-4000-a000-000000000011","13");
INSERT INTO sock_tag VALUES ("c2000011-0000-4000-a000-000000000011","6");
-- HCSR505 Mini PIR
INSERT INTO sock_tag VALUES ("c2000012-0000-4000-a000-000000000012","13");
INSERT INTO sock_tag VALUES ("c2000012-0000-4000-a000-000000000012","6");
INSERT INTO sock_tag VALUES ("c2000012-0000-4000-a000-000000000012","11");
-- 1.8in TFT
INSERT INTO sock_tag VALUES ("c2000013-0000-4000-a000-000000000013","14");
INSERT INTO sock_tag VALUES ("c2000013-0000-4000-a000-000000000013","7");
INSERT INTO sock_tag VALUES ("c2000013-0000-4000-a000-000000000013","11");
-- 16x2 LCD
INSERT INTO sock_tag VALUES ("c2000014-0000-4000-a000-000000000014","14");
INSERT INTO sock_tag VALUES ("c2000014-0000-4000-a000-000000000014","6");
INSERT INTO sock_tag VALUES ("c2000014-0000-4000-a000-000000000014","11");
-- 4x20 LCD
INSERT INTO sock_tag VALUES ("c2000015-0000-4000-a000-000000000015","14");
INSERT INTO sock_tag VALUES ("c2000015-0000-4000-a000-000000000015","6");
-- MAX7219 Matrix
INSERT INTO sock_tag VALUES ("c2000016-0000-4000-a000-000000000016","14");
INSERT INTO sock_tag VALUES ("c2000016-0000-4000-a000-000000000016","6");
INSERT INTO sock_tag VALUES ("c2000016-0000-4000-a000-000000000016","11");
-- 2.4in TFT ILI9341
INSERT INTO sock_tag VALUES ("c2000017-0000-4000-a000-000000000017","14");
INSERT INTO sock_tag VALUES ("c2000017-0000-4000-a000-000000000017","7");
-- HC-05 Bluetooth
INSERT INTO sock_tag VALUES ("c2000018-0000-4000-a000-000000000018","4");
INSERT INTO sock_tag VALUES ("c2000018-0000-4000-a000-000000000018","25");
-- HC-06 Bluetooth
INSERT INTO sock_tag VALUES ("c2000019-0000-4000-a000-000000000019","4");
INSERT INTO sock_tag VALUES ("c2000019-0000-4000-a000-000000000019","25");
INSERT INTO sock_tag VALUES ("c2000019-0000-4000-a000-000000000019","11");
-- NRF24L01+
INSERT INTO sock_tag VALUES ("c2000020-0000-4000-a000-000000000020","20");
INSERT INTO sock_tag VALUES ("c2000020-0000-4000-a000-000000000020","25");
-- SIM800L GSM
INSERT INTO sock_tag VALUES ("c2000021-0000-4000-a000-000000000021","21");
INSERT INTO sock_tag VALUES ("c2000021-0000-4000-a000-000000000021","25");
-- ESP-01S WiFi
INSERT INTO sock_tag VALUES ("c2000022-0000-4000-a000-000000000022","3");
INSERT INTO sock_tag VALUES ("c2000022-0000-4000-a000-000000000022","10");
INSERT INTO sock_tag VALUES ("c2000022-0000-4000-a000-000000000022","25");
INSERT INTO sock_tag VALUES ("c2000022-0000-4000-a000-000000000022","11");
-- W5500 Ethernet
INSERT INTO sock_tag VALUES ("c2000023-0000-4000-a000-000000000023","23");
INSERT INTO sock_tag VALUES ("c2000023-0000-4000-a000-000000000023","25");
-- SG90 Servo
INSERT INTO sock_tag VALUES ("c2000024-0000-4000-a000-000000000024","18");
INSERT INTO sock_tag VALUES ("c2000024-0000-4000-a000-000000000024","6");
INSERT INTO sock_tag VALUES ("c2000024-0000-4000-a000-000000000024","11");
-- MG996R Servo
INSERT INTO sock_tag VALUES ("c2000025-0000-4000-a000-000000000025","18");
INSERT INTO sock_tag VALUES ("c2000025-0000-4000-a000-000000000025","6");
-- NEMA17 Stepper
INSERT INTO sock_tag VALUES ("c2000026-0000-4000-a000-000000000026","19");
INSERT INTO sock_tag VALUES ("c2000026-0000-4000-a000-000000000026","16");
-- 28BYJ-48 Stepper
INSERT INTO sock_tag VALUES ("c2000027-0000-4000-a000-000000000027","19");
INSERT INTO sock_tag VALUES ("c2000027-0000-4000-a000-000000000027","16");
INSERT INTO sock_tag VALUES ("c2000027-0000-4000-a000-000000000027","6");
INSERT INTO sock_tag VALUES ("c2000027-0000-4000-a000-000000000027","11");
-- DRV8825 Driver
INSERT INTO sock_tag VALUES ("c2000028-0000-4000-a000-000000000028","19");
INSERT INTO sock_tag VALUES ("c2000028-0000-4000-a000-000000000028","16");
INSERT INTO sock_tag VALUES ("c2000028-0000-4000-a000-000000000028","7");
-- A4988 Driver
INSERT INTO sock_tag VALUES ("c2000029-0000-4000-a000-000000000029","19");
INSERT INTO sock_tag VALUES ("c2000029-0000-4000-a000-000000000029","16");
INSERT INTO sock_tag VALUES ("c2000029-0000-4000-a000-000000000029","6");
-- Jumper Wires
INSERT INTO sock_tag VALUES ("c2000030-0000-4000-a000-000000000030","17");
INSERT INTO sock_tag VALUES ("c2000030-0000-4000-a000-000000000030","11");
-- Male Headers
INSERT INTO sock_tag VALUES ("c2000031-0000-4000-a000-000000000031","17");
INSERT INTO sock_tag VALUES ("c2000031-0000-4000-a000-000000000031","11");
-- USB Power Meter
INSERT INTO sock_tag VALUES ("c2000032-0000-4000-a000-000000000032","17");
INSERT INTO sock_tag VALUES ("c2000032-0000-4000-a000-000000000032","22");
-- Digital Multimeter
INSERT INTO sock_tag VALUES ("c2000033-0000-4000-a000-000000000033","17");
-- Soldering Iron Kit
INSERT INTO sock_tag VALUES ("c2000034-0000-4000-a000-000000000034","17");
-- MicroSD Module
INSERT INTO sock_tag VALUES ("c2000035-0000-4000-a000-000000000035","17");
INSERT INTO sock_tag VALUES ("c2000035-0000-4000-a000-000000000035","7");
INSERT INTO sock_tag VALUES ("c2000035-0000-4000-a000-000000000035","11");
-- LM2596 Buck
INSERT INTO sock_tag VALUES ("c2000036-0000-4000-a000-000000000036","22");
INSERT INTO sock_tag VALUES ("c2000036-0000-4000-a000-000000000036","17");
INSERT INTO sock_tag VALUES ("c2000036-0000-4000-a000-000000000036","11");
-- MT3608 Boost
INSERT INTO sock_tag VALUES ("c2000037-0000-4000-a000-000000000037","22");
INSERT INTO sock_tag VALUES ("c2000037-0000-4000-a000-000000000037","17");
-- TP4056 Charger
INSERT INTO sock_tag VALUES ("c2000038-0000-4000-a000-000000000038","22");
INSERT INTO sock_tag VALUES ("c2000038-0000-4000-a000-000000000038","17");
INSERT INTO sock_tag VALUES ("c2000038-0000-4000-a000-000000000038","11");
-- AMS1117 LDO
INSERT INTO sock_tag VALUES ("c2000039-0000-4000-a000-000000000039","22");
INSERT INTO sock_tag VALUES ("c2000039-0000-4000-a000-000000000039","17");
INSERT INTO sock_tag VALUES ("c2000039-0000-4000-a000-000000000039","7");

-- Also tag existing WiFi products with Wireless (tag 25)
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d","25");  -- ESP32
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b","25");  -- NodeMCU
INSERT INTO sock_tag VALUES ("c1000014-0000-4000-a000-000000000014","25");  -- ESP32-S3
INSERT INTO sock_tag VALUES ("c1000015-0000-4000-a000-000000000015","25");  -- ESP32-CAM
INSERT INTO sock_tag VALUES ("c1000025-0000-4000-a000-000000000025","25");  -- SX1276 LoRa

-- ═══════════════════════════════════════════════════════
-- BATCH 3 — EXPANDED CATALOGUE
-- ═══════════════════════════════════════════════════════

-- ── Microcontrollers ─────────────────────────────────

INSERT INTO sock VALUES ("c2000040-0000-4000-a000-000000000040","Raspberry Pi Pico W Dual-Core 133MHz WiFi","The wireless version of the RP2040. Dual-core Cortex M0+ at 133MHz, 2MB Flash, 264KB SRAM. On-board Infineon CYW43439 chip provides 2.4GHz 802.11n WiFi and Bluetooth 5.2 LE. Perfect for low-power IoT. MicroPython and C/C++ SDK supported.",7.00,500,"/catalogue/images/rpi-pico.jpg","/catalogue/images/rpi-pico-2.jpg");
INSERT INTO sock VALUES ("c2000041-0000-4000-a000-000000000041","STM32F401 Black Pill Cortex-M4 84MHz MCU","High-performance ARM Cortex-M4 at 84MHz, 256KB Flash, 64KB SRAM. Significant speed upgrade over the Blue Pill. Features native USB Type-C, 3.3V I/O, 36 GPIO pins, SPI, I2C, UART, 12-bit ADC.",6.50,200,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");
INSERT INTO sock VALUES ("c2000042-0000-4000-a000-000000000042","Teensy 4.0 ARM Cortex-M7 600MHz USB MCU","One of the fastest MCU boards available. ARM Cortex-M7 at 600MHz, 1MB RAM, 2MB Flash. Native USB 2.0. Ideal for high-speed DSP, complex robotics calculations and audio synthesis in a 1.4x0.7in form factor.",25.00,50,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000043-0000-4000-a000-000000000043","ESP32-S2 Saola-1 Single-Core 240MHz Native USB","Single-core 240MHz Xtensa LX7, 4MB Flash, 2MB PSRAM. 43 GPIO pins, native USB OTG/CDC. Security-focused design with RSA-3072 digital signature and AES-XTS encryption. 3.3V.",9.00,150,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000044-0000-4000-a000-000000000044","Arduino GIGA R1 WiFi Dual-Core STM32H7 Board","Dual-core STM32H7: Cortex-M7 at 480MHz and Cortex-M4 at 240MHz. 76 GPIO pins, 12-bit DAC for audio, 2MB Flash, integrated WiFi (u-blox NINA-W102) and Bluetooth 4.2. USB-A host port.",75.00,30,"/catalogue/images/arduino-mega-2.jpg","/catalogue/images/arduino-mega.jpg");

-- ── Single Board Computers ────────────────────────────

INSERT INTO sock VALUES ("c2000046-0000-4000-a000-000000000046","Orange Pi 5 RK3588S 8-Core 8GB LPDDR4X SBC","Rockchip RK3588S 8-core 64-bit CPU (4x Cortex-A76 + 4x Cortex-A55), 8GB LPDDR4X RAM. 6 TOPS NPU for AI acceleration, supports 8K video output, PCIe 3.0, USB 3.1, 802.11ac WiFi, BT 5.0.",115.00,40,"/catalogue/images/rpi4b.jpg","/catalogue/images/rpi4b-2.jpg");
INSERT INTO sock VALUES ("c2000047-0000-4000-a000-000000000047","Libre Renegade ROC-RK3328-CC Quad-Core 2GB","Rockchip RK3328 quad-core 64-bit Cortex-A53, 2GB DDR4. USB 3.0, Gigabit Ethernet, HDMI 2.0 4K@60fps. Strong open-source Linux community. Solid alternative for server and media applications.",48.00,60,"/catalogue/images/rpi4b-2.jpg","/catalogue/images/rpi4b.jpg");
INSERT INTO sock VALUES ("c2000048-0000-4000-a000-000000000048","Rock 5B RK3588 Hexa-Core up to 16GB SBC","High-end Rockchip RK3588 hexa-core SBC. Supports up to 16GB LPDDR4X RAM, dual 4K HDMI, PCIe 3.0 M.2 NVMe, 2.5G Ethernet. Designed for server-grade workloads and heavy edge computing.",145.00,20,"/catalogue/images/beaglebone-black.jpg","/catalogue/images/beaglebone-black-2.jpg");
INSERT INTO sock VALUES ("c2000049-0000-4000-a000-000000000049","Jetson Orin Nano Dev Kit 8GB 40 TOPS AI","NVIDIA Ampere 1024-core GPU + 32-core NVDLA. 40 TOPS AI performance, 6-core Arm Cortex-A78AE CPU, 8GB LPDDR5. Runs full JetPack SDK. Leading choice for robotics and edge AI applications.",495.00,15,"/catalogue/images/jetson-nano.jpg","/catalogue/images/jetson-nano-2.jpg");
INSERT INTO sock VALUES ("c3000001-0000-4000-a000-000000000001","Banana Pi BPI-M5 Amlogic S905X3 4GB eMMC SBC","Amlogic S905X3 quad-core Cortex-A55 at 2.0GHz, 4GB LPDDR4, 16GB eMMC. Gigabit Ethernet, USB 3.0, HDMI 2.0, 40-pin GPIO. Strong Android and Linux support. Capable Raspberry Pi alternative.",52.00,45,"/catalogue/images/rpi4b.jpg","/catalogue/images/rpi4b-2.jpg");
INSERT INTO sock VALUES ("c3000002-0000-4000-a000-000000000002","BeagleV-Ahead TH1520 Quad-Core RISC-V SBC","Open-source RISC-V SBC with a quad-core T-Head TH1520 RISC-V processor at 1.85GHz, 4GB LPDDR4. Supports Linux. Ideal for engineers exploring RISC-V architecture in real embedded systems.",89.00,25,"/catalogue/images/beaglebone-black-2.jpg","/catalogue/images/beaglebone-black.jpg");

-- ── Sensors ───────────────────────────────────────────

INSERT INTO sock VALUES ("c2000050-0000-4000-a000-000000000050","AHT20 + BMP280 Precision Climate Sensor I2C","Dual-sensor module for high-precision temperature, humidity and barometric pressure over I2C. AHT20: ±0.3°C, ±2% RH. BMP280: ±1 hPa. More accurate and stable than DHT22. 3.3V.",5.50,300,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000051-0000-4000-a000-000000000051","SCD41 Photoacoustic True CO2 Sensor I2C","True photoacoustic CO2 sensor with integrated temperature and humidity. 400–5000 ppm range, ±40 ppm accuracy. I2C interface, 3.3V. Provides laboratory-grade indoor air quality data.",38.00,50,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000052-0000-4000-a000-000000000052","TFMini-S LiDAR ToF Distance Module 12m 1000Hz","Compact single-point ToF LiDAR. 0.1–12m range, ±1% accuracy. 1000Hz frame rate, UART or I2C. Ideal for drone altitude hold, robotic obstacle avoidance and proximity detection. 5V.",42.00,80,"/catalogue/images/stm32-nucleo-2.jpg","/catalogue/images/stm32-nucleo.jpg");
INSERT INTO sock VALUES ("c2000053-0000-4000-a000-000000000053","MAX30102 Pulse Oximetry Heart-Rate Sensor I2C","Integrated SpO2 and heart-rate biosensor. Red and IR LEDs, photodetector, and low-noise AFE with ambient light rejection. I2C, 3.3V. Used in wearable health devices and fitness trackers.",4.20,250,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");
INSERT INTO sock VALUES ("c2000054-0000-4000-a000-000000000054","AS5600 12-Bit Contactless Magnetic Encoder I2C","12-bit (4096 steps/rev) contactless rotary position sensor. I2C or PWM/analog output. Detects NdFeB magnet. Ideal for closed-loop motor control, precise knobs, and joint angle sensing. 3.3V.",3.80,400,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");

-- ── Wireless & RF ─────────────────────────────────────

INSERT INTO sock VALUES ("c2000055-0000-4000-a000-000000000055","RA-02 LoRa SX1278 433MHz 10km Long-Range Module","SX1278 spread spectrum transceiver, 433MHz ISM band, up to 10km LOS range, -148dBm sensitivity, +20dBm output. SPI interface, 3.3V. Stamp-hole pads for direct PCB mounting.",6.50,150,"/catalogue/images/stm32-nucleo.jpg","/catalogue/images/stm32-nucleo-2.jpg");
INSERT INTO sock VALUES ("c2000056-0000-4000-a000-000000000056","SIM7600G-H Global 4G LTE Cat-4 GPS Module","Global 4G/LTE Cat-4 module with integrated GNSS (GPS/GLONASS/BeiDou). Supports African LTE bands. 150 Mbps downlink, UART+USB interface. Ideal for fleet tracking and IoT gateways. 5V.",65.00,40,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000057-0000-4000-a000-000000000057","HC-12 433MHz 100-Channel UART Wireless Module","Transparent serial wireless module. 433.4–473.0MHz, 100 channels, up to 1km range. Simple UART plug-and-play, no complex SPI coding. Adjustable power 0.8–100mW. 3.3–5V.",5.00,300,"/catalogue/images/esp32-devboard.jpg","/catalogue/images/esp32-devboard-2.jpg");
INSERT INTO sock VALUES ("c2000058-0000-4000-a000-000000000058","RYLR896 LoRa AT-Command UART Module 915MHz","SX1276 LoRa module with built-in STM32 MCU handling the full LoRa stack. Controlled via AT commands over UART. No SPI needed. 915MHz, -148dBm sensitivity, up to 15km LOS. 3.3V.",12.00,100,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");
INSERT INTO sock VALUES ("c2000059-0000-4000-a000-000000000059","nRF52840 BLE 5.0 Thread Zigbee USB Dongle","Nordic nRF52840 multiprotocol SoC. Bluetooth 5 LE, Thread, Zigbee, ANT, 2.4GHz. Native USB. 64MHz Cortex-M4F, 1MB Flash, 256KB RAM. Works as PC BLE sniffer or standalone IoT node. 3.3V.",14.00,75,"/catalogue/images/stm32-nucleo-2.jpg","/catalogue/images/stm32-nucleo.jpg");

-- ── Motors & Actuators ────────────────────────────────

INSERT INTO sock VALUES ("c2000060-0000-4000-a000-000000000060","MG90S Metal Gear Micro Servo 2.2kg/cm 180°","Full metal gear upgrade from the SG90. 2.2kg·cm torque at 4.8V, 180° rotation, 50Hz PWM (1–2ms pulse). More durable for robotic grippers, steering linkages and joint actuation.",3.50,400,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");
INSERT INTO sock VALUES ("c2000061-0000-4000-a000-000000000061","DS3218 Digital High-Torque Servo 20kg/cm 270°","Heavy-duty digital servo. Stainless steel gears, 20kg·cm at 6.8V, 270° rotation. Waterproof. Designed for large robotic arms, RC planes and industrial automation. 4.8–7.2V supply.",18.00,60,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000062-0000-4000-a000-000000000062","TB6612FNG Dual DC Motor Driver 1.2A per Channel","MOSFET-based dual H-bridge. 1.2A per channel (3.2A peak), 15V max. Standby mode (low power), PWM speed control, built-in thermal shutdown. Superior efficiency over L298N. 3.3V/5V logic.",4.50,200,"/catalogue/images/arduino-mega-2.jpg","/catalogue/images/arduino-mega.jpg");
INSERT INTO sock VALUES ("c2000063-0000-4000-a000-000000000063","PCA9685 16-Channel 12-Bit I2C PWM Servo Driver","Controls 16 servos or LEDs using just 2 I2C wires. 12-bit resolution per channel, 24–1526Hz PWM frequency. Cascadable to 62 boards (992 outputs). Separate servo power rail. 3.3V/5V.",5.50,150,"/catalogue/images/stm32-nucleo-2.jpg","/catalogue/images/stm32-nucleo.jpg");
INSERT INTO sock VALUES ("c3000003-0000-4000-a000-000000000003","L9110S Dual Channel DC Motor Driver 800mA","Compact dual H-bridge using L9110S. 2.5–12V motor supply, 800mA per channel, PWM control. Drives 2 DC motors or 1 stepper. Built-in reverse EMF protection. Lower cost alternative to L298N.",2.20,350,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");

-- ── Tools & Equipment ────────────────────────────────

INSERT INTO sock VALUES ("c2000065-0000-4000-a000-000000000065","TS101 Smart Portable Soldering Iron USB-C PD","Programmable digital soldering iron with OLED display. Powered by USB-C PD (65W) or DC jack. Heats to 350°C in 6 seconds. Tip-swap system, sleep mode, precise 1°C control. 200–420°C range.",65.00,30,"/catalogue/images/arduino-mega.jpg","/catalogue/images/arduino-mega-2.jpg");
INSERT INTO sock VALUES ("c2000066-0000-4000-a000-000000000066","Bus Pirate v3.6 Universal Serial Protocol Debugger","Open-source universal serial interface. Talks to chips via I2C, SPI, UART, 1-Wire, JTAG and more using a terminal. Tests hardware commands before writing firmware. Eliminates write-flash-debug cycles.",32.00,25,"/catalogue/images/arduino-uno-2.jpg","/catalogue/images/arduino-uno.jpg");
INSERT INTO sock VALUES ("c2000068-0000-4000-a000-000000000068","FNIRSI-138 Pro Handheld 200kHz Digital Oscilloscope","Portable battery-powered oscilloscope. 200kHz bandwidth, 2.5 MS/s sample rate, 2.4-inch LCD, auto-trigger. Measures frequency, duty cycle, Vpp. Ideal for field testing sensor and signal waveforms.",28.00,40,"/catalogue/images/esp32-devboard-2.jpg","/catalogue/images/esp32-devboard.jpg");
INSERT INTO sock VALUES ("c2000069-0000-4000-a000-000000000069","Precision ESD Anti-Static Tweezers 6-Piece Set","Professional ESD-safe stainless steel tweezers. Includes straight, curved, angled and reverse-action variants. Anti-static coating prevents damage to sensitive ICs and SMD components.",8.50,100,"/catalogue/images/arduino-uno.jpg","/catalogue/images/arduino-uno-2.jpg");

-- ── Tag assignments — batch 3 ─────────────────────────

-- Pico W: MCU, WiFi, 3.3V, Raspberry Pi, Beginner, Wireless
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","1");
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","3");
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","7");
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","9");
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","11");
INSERT INTO sock_tag VALUES ("c2000040-0000-4000-a000-000000000040","25");
-- STM32 Black Pill: MCU, ARM, 3.3V
INSERT INTO sock_tag VALUES ("c2000041-0000-4000-a000-000000000041","1");
INSERT INTO sock_tag VALUES ("c2000041-0000-4000-a000-000000000041","5");
INSERT INTO sock_tag VALUES ("c2000041-0000-4000-a000-000000000041","7");
-- Teensy 4.0: MCU, ARM, 3.3V
INSERT INTO sock_tag VALUES ("c2000042-0000-4000-a000-000000000042","1");
INSERT INTO sock_tag VALUES ("c2000042-0000-4000-a000-000000000042","5");
INSERT INTO sock_tag VALUES ("c2000042-0000-4000-a000-000000000042","7");
-- ESP32-S2: MCU, WiFi, 3.3V, Espressif, Wireless
INSERT INTO sock_tag VALUES ("c2000043-0000-4000-a000-000000000043","1");
INSERT INTO sock_tag VALUES ("c2000043-0000-4000-a000-000000000043","3");
INSERT INTO sock_tag VALUES ("c2000043-0000-4000-a000-000000000043","7");
INSERT INTO sock_tag VALUES ("c2000043-0000-4000-a000-000000000043","10");
INSERT INTO sock_tag VALUES ("c2000043-0000-4000-a000-000000000043","25");
-- Arduino GIGA R1: MCU, WiFi, Bluetooth, ARM, Arduino, Wireless
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","1");
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","3");
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","4");
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","5");
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","8");
INSERT INTO sock_tag VALUES ("c2000044-0000-4000-a000-000000000044","25");
-- Orange Pi 5: SBC, ARM, WiFi, Bluetooth, AI, Wireless
INSERT INTO sock_tag VALUES ("c2000046-0000-4000-a000-000000000046","2");
INSERT INTO sock_tag VALUES ("c2000046-0000-4000-a000-000000000046","3");
INSERT INTO sock_tag VALUES ("c2000046-0000-4000-a000-000000000046","4");
INSERT INTO sock_tag VALUES ("c2000046-0000-4000-a000-000000000046","5");
INSERT INTO sock_tag VALUES ("c2000046-0000-4000-a000-000000000046","12");
-- Libre Renegade: SBC, ARM
INSERT INTO sock_tag VALUES ("c2000047-0000-4000-a000-000000000047","2");
INSERT INTO sock_tag VALUES ("c2000047-0000-4000-a000-000000000047","5");
-- Rock 5B: SBC, ARM, WiFi, Bluetooth, Ethernet, Wireless
INSERT INTO sock_tag VALUES ("c2000048-0000-4000-a000-000000000048","2");
INSERT INTO sock_tag VALUES ("c2000048-0000-4000-a000-000000000048","3");
INSERT INTO sock_tag VALUES ("c2000048-0000-4000-a000-000000000048","4");
INSERT INTO sock_tag VALUES ("c2000048-0000-4000-a000-000000000048","5");
INSERT INTO sock_tag VALUES ("c2000048-0000-4000-a000-000000000048","23");
-- Jetson Orin Nano: SBC, ARM, AI
INSERT INTO sock_tag VALUES ("c2000049-0000-4000-a000-000000000049","2");
INSERT INTO sock_tag VALUES ("c2000049-0000-4000-a000-000000000049","5");
INSERT INTO sock_tag VALUES ("c2000049-0000-4000-a000-000000000049","12");
-- Banana Pi BPI-M5: SBC, ARM
INSERT INTO sock_tag VALUES ("c3000001-0000-4000-a000-000000000001","2");
INSERT INTO sock_tag VALUES ("c3000001-0000-4000-a000-000000000001","5");
-- BeagleV-Ahead: SBC
INSERT INTO sock_tag VALUES ("c3000002-0000-4000-a000-000000000002","2");
-- AHT20+BMP280: Sensor, 3.3V, Beginner
INSERT INTO sock_tag VALUES ("c2000050-0000-4000-a000-000000000050","13");
INSERT INTO sock_tag VALUES ("c2000050-0000-4000-a000-000000000050","7");
INSERT INTO sock_tag VALUES ("c2000050-0000-4000-a000-000000000050","11");
-- SCD41: Sensor, 3.3V
INSERT INTO sock_tag VALUES ("c2000051-0000-4000-a000-000000000051","13");
INSERT INTO sock_tag VALUES ("c2000051-0000-4000-a000-000000000051","7");
-- TFMini-S LiDAR: Sensor, 5V
INSERT INTO sock_tag VALUES ("c2000052-0000-4000-a000-000000000052","13");
INSERT INTO sock_tag VALUES ("c2000052-0000-4000-a000-000000000052","6");
-- MAX30102: Sensor, 3.3V
INSERT INTO sock_tag VALUES ("c2000053-0000-4000-a000-000000000053","13");
INSERT INTO sock_tag VALUES ("c2000053-0000-4000-a000-000000000053","7");
-- AS5600: Sensor, 3.3V
INSERT INTO sock_tag VALUES ("c2000054-0000-4000-a000-000000000054","13");
INSERT INTO sock_tag VALUES ("c2000054-0000-4000-a000-000000000054","7");
-- RA-02 LoRa: LoRa, Wireless, 3.3V
INSERT INTO sock_tag VALUES ("c2000055-0000-4000-a000-000000000055","15");
INSERT INTO sock_tag VALUES ("c2000055-0000-4000-a000-000000000055","25");
INSERT INTO sock_tag VALUES ("c2000055-0000-4000-a000-000000000055","7");
-- SIM7600G-H: GSM, Wireless, 5V
INSERT INTO sock_tag VALUES ("c2000056-0000-4000-a000-000000000056","21");
INSERT INTO sock_tag VALUES ("c2000056-0000-4000-a000-000000000056","25");
INSERT INTO sock_tag VALUES ("c2000056-0000-4000-a000-000000000056","6");
-- HC-12: RF, Wireless
INSERT INTO sock_tag VALUES ("c2000057-0000-4000-a000-000000000057","20");
INSERT INTO sock_tag VALUES ("c2000057-0000-4000-a000-000000000057","25");
INSERT INTO sock_tag VALUES ("c2000057-0000-4000-a000-000000000057","11");
-- RYLR896 LoRa: LoRa, Wireless, 3.3V
INSERT INTO sock_tag VALUES ("c2000058-0000-4000-a000-000000000058","15");
INSERT INTO sock_tag VALUES ("c2000058-0000-4000-a000-000000000058","25");
INSERT INTO sock_tag VALUES ("c2000058-0000-4000-a000-000000000058","7");
-- nRF52840: Bluetooth, Wireless, 3.3V
INSERT INTO sock_tag VALUES ("c2000059-0000-4000-a000-000000000059","4");
INSERT INTO sock_tag VALUES ("c2000059-0000-4000-a000-000000000059","25");
INSERT INTO sock_tag VALUES ("c2000059-0000-4000-a000-000000000059","7");
-- MG90S: Servo, Motor, 5V, Beginner
INSERT INTO sock_tag VALUES ("c2000060-0000-4000-a000-000000000060","18");
INSERT INTO sock_tag VALUES ("c2000060-0000-4000-a000-000000000060","16");
INSERT INTO sock_tag VALUES ("c2000060-0000-4000-a000-000000000060","6");
INSERT INTO sock_tag VALUES ("c2000060-0000-4000-a000-000000000060","11");
-- DS3218: Servo, Motor, 5V
INSERT INTO sock_tag VALUES ("c2000061-0000-4000-a000-000000000061","18");
INSERT INTO sock_tag VALUES ("c2000061-0000-4000-a000-000000000061","16");
INSERT INTO sock_tag VALUES ("c2000061-0000-4000-a000-000000000061","6");
-- TB6612FNG: Motor, 3.3V
INSERT INTO sock_tag VALUES ("c2000062-0000-4000-a000-000000000062","16");
INSERT INTO sock_tag VALUES ("c2000062-0000-4000-a000-000000000062","7");
-- PCA9685: Servo, Motor, 3.3V
INSERT INTO sock_tag VALUES ("c2000063-0000-4000-a000-000000000063","18");
INSERT INTO sock_tag VALUES ("c2000063-0000-4000-a000-000000000063","16");
INSERT INTO sock_tag VALUES ("c2000063-0000-4000-a000-000000000063","7");
-- L9110S: Motor, 5V, Beginner
INSERT INTO sock_tag VALUES ("c3000003-0000-4000-a000-000000000003","16");
INSERT INTO sock_tag VALUES ("c3000003-0000-4000-a000-000000000003","6");
INSERT INTO sock_tag VALUES ("c3000003-0000-4000-a000-000000000003","11");
-- TS101 Soldering Iron: Tool
INSERT INTO sock_tag VALUES ("c2000065-0000-4000-a000-000000000065","17");
-- Bus Pirate: Tool
INSERT INTO sock_tag VALUES ("c2000066-0000-4000-a000-000000000066","17");
-- FNIRSI Oscilloscope: Tool
INSERT INTO sock_tag VALUES ("c2000068-0000-4000-a000-000000000068","17");
-- Anti-Static Tweezers: Tool
INSERT INTO sock_tag VALUES ("c2000069-0000-4000-a000-000000000069","17");

-- ═══════════════════════════════════════════════════════
-- PRODUCT IMAGES TABLE
-- Replaces image_url_1 / image_url_2 on sock table.
-- sort_order controls display order; add more rows for
-- additional images per product.
-- ═══════════════════════════════════════════════════════

CREATE TABLE IF NOT EXISTS product_images (
    id         INT          NOT NULL AUTO_INCREMENT,
    sock_id    varchar(40)  NOT NULL,
    file_path  varchar(200) NOT NULL,
    sort_order INT          NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    FOREIGN KEY (sock_id) REFERENCES sock(sock_id)
);

-- ── Seed: migrate existing image_url_1 / image_url_2 ─────────────────────────

INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('a0a4f044-b040-410d-8ead-4de0446aec7e', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('a0a4f044-b040-410d-8ead-4de0446aec7e', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('808a2de1-1aaa-4c25-a9b9-6612e8f29a38', '/catalogue/images/rpi4b.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('808a2de1-1aaa-4c25-a9b9-6612e8f29a38', '/catalogue/images/rpi4b-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('510a0d7e-8e83-4193-b483-e27e09ddc34d', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('510a0d7e-8e83-4193-b483-e27e09ddc34d', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('03fef6ac-1896-4ce8-bd69-b798f85c6e0b', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('03fef6ac-1896-4ce8-bd69-b798f85c6e0b', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('d3588630-ad8e-49df-bbd7-3167f7efb246', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('d3588630-ad8e-49df-bbd7-3167f7efb246', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('819e1fbf-8b7e-4f6d-811f-693534916a8b', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('819e1fbf-8b7e-4f6d-811f-693534916a8b', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('zzz4f044-b040-410d-8ead-4de0446aec7e', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('zzz4f044-b040-410d-8ead-4de0446aec7e', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('3395a43e-2d88-40de-b95f-e00e1502085b', '/catalogue/images/jetson-nano.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('3395a43e-2d88-40de-b95f-e00e1502085b', '/catalogue/images/jetson-nano-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('837ab141-399e-4c1f-9abc-bace40296bac', '/catalogue/images/beaglebone-black.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('837ab141-399e-4c1f-9abc-bace40296bac', '/catalogue/images/beaglebone-black-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000010-0000-4000-a000-000000000010', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000010-0000-4000-a000-000000000010', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000011-0000-4000-a000-000000000011', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000011-0000-4000-a000-000000000011', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000012-0000-4000-a000-000000000012', '/catalogue/images/rpi4b.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000012-0000-4000-a000-000000000012', '/catalogue/images/rpi4b-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000013-0000-4000-a000-000000000013', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000013-0000-4000-a000-000000000013', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000014-0000-4000-a000-000000000014', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000014-0000-4000-a000-000000000014', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000015-0000-4000-a000-000000000015', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000015-0000-4000-a000-000000000015', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000016-0000-4000-a000-000000000016', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000016-0000-4000-a000-000000000016', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000017-0000-4000-a000-000000000017', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000017-0000-4000-a000-000000000017', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000018-0000-4000-a000-000000000018', '/catalogue/images/rpi4b-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000018-0000-4000-a000-000000000018', '/catalogue/images/rpi4b.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000019-0000-4000-a000-000000000019', '/catalogue/images/beaglebone-black.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000019-0000-4000-a000-000000000019', '/catalogue/images/beaglebone-black-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000020-0000-4000-a000-000000000020', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000020-0000-4000-a000-000000000020', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000021-0000-4000-a000-000000000021', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000021-0000-4000-a000-000000000021', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000022-0000-4000-a000-000000000022', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000022-0000-4000-a000-000000000022', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000023-0000-4000-a000-000000000023', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000023-0000-4000-a000-000000000023', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000024-0000-4000-a000-000000000024', '/catalogue/images/rpi-pico-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000024-0000-4000-a000-000000000024', '/catalogue/images/rpi-pico.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000025-0000-4000-a000-000000000025', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000025-0000-4000-a000-000000000025', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000026-0000-4000-a000-000000000026', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000026-0000-4000-a000-000000000026', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000027-0000-4000-a000-000000000027', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000027-0000-4000-a000-000000000027', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000028-0000-4000-a000-000000000028', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000028-0000-4000-a000-000000000028', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-1.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000030-0000-4000-a000-000000000030', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000030-0000-4000-a000-000000000030', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000001-0000-4000-a000-000000000001', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000001-0000-4000-a000-000000000001', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000002-0000-4000-a000-000000000002', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000002-0000-4000-a000-000000000002', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000003-0000-4000-a000-000000000003', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000003-0000-4000-a000-000000000003', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000004-0000-4000-a000-000000000004', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000004-0000-4000-a000-000000000004', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000005-0000-4000-a000-000000000005', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000005-0000-4000-a000-000000000005', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000006-0000-4000-a000-000000000006', '/catalogue/images/rpi-pico-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000006-0000-4000-a000-000000000006', '/catalogue/images/rpi-pico.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000007-0000-4000-a000-000000000007', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000007-0000-4000-a000-000000000007', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000008-0000-4000-a000-000000000008', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000008-0000-4000-a000-000000000008', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000009-0000-4000-a000-000000000009', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000009-0000-4000-a000-000000000009', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000010-0000-4000-a000-000000000010', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000010-0000-4000-a000-000000000010', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000011-0000-4000-a000-000000000011', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000011-0000-4000-a000-000000000011', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000012-0000-4000-a000-000000000012', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000012-0000-4000-a000-000000000012', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000013-0000-4000-a000-000000000013', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000013-0000-4000-a000-000000000013', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000014-0000-4000-a000-000000000014', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000014-0000-4000-a000-000000000014', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000015-0000-4000-a000-000000000015', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000015-0000-4000-a000-000000000015', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000016-0000-4000-a000-000000000016', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000016-0000-4000-a000-000000000016', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000017-0000-4000-a000-000000000017', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000017-0000-4000-a000-000000000017', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000018-0000-4000-a000-000000000018', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000018-0000-4000-a000-000000000018', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000019-0000-4000-a000-000000000019', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000019-0000-4000-a000-000000000019', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000020-0000-4000-a000-000000000020', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000020-0000-4000-a000-000000000020', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000021-0000-4000-a000-000000000021', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000021-0000-4000-a000-000000000021', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000022-0000-4000-a000-000000000022', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000022-0000-4000-a000-000000000022', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000023-0000-4000-a000-000000000023', '/catalogue/images/arduino-mega-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000023-0000-4000-a000-000000000023', '/catalogue/images/arduino-mega.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000024-0000-4000-a000-000000000024', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000024-0000-4000-a000-000000000024', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000025-0000-4000-a000-000000000025', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000025-0000-4000-a000-000000000025', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000026-0000-4000-a000-000000000026', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000026-0000-4000-a000-000000000026', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000027-0000-4000-a000-000000000027', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000027-0000-4000-a000-000000000027', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000028-0000-4000-a000-000000000028', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000028-0000-4000-a000-000000000028', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000029-0000-4000-a000-000000000029', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000029-0000-4000-a000-000000000029', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000030-0000-4000-a000-000000000030', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000030-0000-4000-a000-000000000030', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000031-0000-4000-a000-000000000031', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000031-0000-4000-a000-000000000031', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000032-0000-4000-a000-000000000032', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000032-0000-4000-a000-000000000032', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000033-0000-4000-a000-000000000033', '/catalogue/images/arduino-mega-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000033-0000-4000-a000-000000000033', '/catalogue/images/arduino-mega.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000034-0000-4000-a000-000000000034', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000034-0000-4000-a000-000000000034', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000035-0000-4000-a000-000000000035', '/catalogue/images/rpi-pico-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000035-0000-4000-a000-000000000035', '/catalogue/images/rpi-pico.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000036-0000-4000-a000-000000000036', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000036-0000-4000-a000-000000000036', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000037-0000-4000-a000-000000000037', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000037-0000-4000-a000-000000000037', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000038-0000-4000-a000-000000000038', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000038-0000-4000-a000-000000000038', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000039-0000-4000-a000-000000000039', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000039-0000-4000-a000-000000000039', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000040-0000-4000-a000-000000000040', '/catalogue/images/rpi-pico.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000040-0000-4000-a000-000000000040', '/catalogue/images/rpi-pico-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000041-0000-4000-a000-000000000041', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000041-0000-4000-a000-000000000041', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000042-0000-4000-a000-000000000042', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000042-0000-4000-a000-000000000042', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000043-0000-4000-a000-000000000043', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000043-0000-4000-a000-000000000043', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000044-0000-4000-a000-000000000044', '/catalogue/images/arduino-mega-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000044-0000-4000-a000-000000000044', '/catalogue/images/arduino-mega.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000046-0000-4000-a000-000000000046', '/catalogue/images/rpi4b.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000046-0000-4000-a000-000000000046', '/catalogue/images/rpi4b-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000047-0000-4000-a000-000000000047', '/catalogue/images/rpi4b-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000047-0000-4000-a000-000000000047', '/catalogue/images/rpi4b.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000048-0000-4000-a000-000000000048', '/catalogue/images/beaglebone-black.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000048-0000-4000-a000-000000000048', '/catalogue/images/beaglebone-black-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000049-0000-4000-a000-000000000049', '/catalogue/images/jetson-nano.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000049-0000-4000-a000-000000000049', '/catalogue/images/jetson-nano-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000001-0000-4000-a000-000000000001', '/catalogue/images/rpi4b.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000001-0000-4000-a000-000000000001', '/catalogue/images/rpi4b-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000002-0000-4000-a000-000000000002', '/catalogue/images/beaglebone-black-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000002-0000-4000-a000-000000000002', '/catalogue/images/beaglebone-black.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000050-0000-4000-a000-000000000050', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000050-0000-4000-a000-000000000050', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000051-0000-4000-a000-000000000051', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000051-0000-4000-a000-000000000051', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000052-0000-4000-a000-000000000052', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000052-0000-4000-a000-000000000052', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000053-0000-4000-a000-000000000053', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000053-0000-4000-a000-000000000053', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000054-0000-4000-a000-000000000054', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000054-0000-4000-a000-000000000054', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000055-0000-4000-a000-000000000055', '/catalogue/images/stm32-nucleo.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000055-0000-4000-a000-000000000055', '/catalogue/images/stm32-nucleo-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000056-0000-4000-a000-000000000056', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000056-0000-4000-a000-000000000056', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000057-0000-4000-a000-000000000057', '/catalogue/images/esp32-devboard.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000057-0000-4000-a000-000000000057', '/catalogue/images/esp32-devboard-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000058-0000-4000-a000-000000000058', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000058-0000-4000-a000-000000000058', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000059-0000-4000-a000-000000000059', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000059-0000-4000-a000-000000000059', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000060-0000-4000-a000-000000000060', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000060-0000-4000-a000-000000000060', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000061-0000-4000-a000-000000000061', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000061-0000-4000-a000-000000000061', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000062-0000-4000-a000-000000000062', '/catalogue/images/arduino-mega-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000062-0000-4000-a000-000000000062', '/catalogue/images/arduino-mega.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000063-0000-4000-a000-000000000063', '/catalogue/images/stm32-nucleo-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000063-0000-4000-a000-000000000063', '/catalogue/images/stm32-nucleo.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000003-0000-4000-a000-000000000003', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c3000003-0000-4000-a000-000000000003', '/catalogue/images/arduino-uno-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000065-0000-4000-a000-000000000065', '/catalogue/images/arduino-mega.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000065-0000-4000-a000-000000000065', '/catalogue/images/arduino-mega-2.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000066-0000-4000-a000-000000000066', '/catalogue/images/arduino-uno-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000066-0000-4000-a000-000000000066', '/catalogue/images/arduino-uno.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000068-0000-4000-a000-000000000068', '/catalogue/images/esp32-devboard-2.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000068-0000-4000-a000-000000000068', '/catalogue/images/esp32-devboard.jpg', 2);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000069-0000-4000-a000-000000000069', '/catalogue/images/arduino-uno.jpg', 1);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c2000069-0000-4000-a000-000000000069', '/catalogue/images/arduino-uno-2.jpg', 2);

-- ── L298N: additional real product images (sort_order 3-6) ────────────────────

INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-3.jpg', 3);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-4.jpg', 4);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-5.jpg', 5);
INSERT INTO product_images (sock_id, file_path, sort_order) VALUES ('c1000029-0000-4000-a000-000000000029', '/catalogue/images/products/l298n/l298n-6.jpg', 6);
