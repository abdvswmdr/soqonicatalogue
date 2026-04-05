CREATE TABLE IF NOT EXISTS sock (
	sock_id varchar(40) NOT NULL,
	name varchar(20),
	description varchar(200),
	price float,
	count int,
	image_url_1 varchar(40),
	image_url_2 varchar(40),
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

INSERT INTO sock VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Arduino Uno R3", "The classic 8-bit AVR microcontroller board. 14 digital I/O pins, 6 PWM outputs, 6 analog inputs. The standard starting point for embedded systems.", 12.99, 200, "/catalogue/images/arduino-uno.jpg", "/catalogue/images/arduino-uno-2.jpg");                                                               
INSERT INTO sock VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Raspberry Pi 4B 4GB", "Quad-core Cortex-A72 at 1.8GHz, 4GB LPDDR4, dual 4K HDMI, USB 3.0, Gigabit Ethernet, WiFi, Bluetooth 5.0.", 55.00, 85, "/catalogue/images/rpi4b.jpg", "/catalogue/images/rpi4b-2.jpg");                                    
INSERT INTO sock VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "ESP32 Dev Board", "Dual-core 240MHz Xtensa LX6, 520KB SRAM, integrated 802.11b/g/n WiFi and Bluetooth 4.2. Ideal for IoT projects.", 8.50, 320, "/catalogue/images/esp32-devboard.jpg", "/catalogue/images/esp32-devboard-2.jpg");                
INSERT INTO sock VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "STM32 Nucleo-64", "ARM Cortex-M4 at 80MHz, 1MB Flash, 128KB SRAM. Arduino-compatible headers, built-in ST-LINK debugger.", 18.00, 60, "/catalogue/images/stm32-nucleo.jpg", "/catalogue/images/stm32-nucleo-2.jpg");                              
INSERT INTO sock VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "Raspberry Pi Pico", "RP2040 dual-core Cortex-M0+ at 133MHz, 264KB SRAM, 2MB Flash, 26 GPIO pins. Ultra-low cost microcontroller.", 4.00, 500, "/catalogue/images/rpi-pico.jpg", "/catalogue/images/rpi-pico-2.jpg");                              
INSERT INTO sock VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "NodeMCU ESP8266", "ESP8266 802.11 b/g/n WiFi SoC, 80/160MHz, 4MB Flash, 11 digital I/O pins. The go-to board for low-cost WiFi projects.", 5.99, 450, "/catalogue/images/nodemcu-esp8266.jpg", "/catalogue/images/nodemcu-esp8266.jpg");          
INSERT INTO sock VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Arduino Mega 2560", "ATmega2560 at 16MHz, 256KB Flash, 54 digital I/O, 16 analog inputs, 4 UARTs. For projects needing more pins.", 22.00, 110, "/catalogue/images/arduino-mega.jpg", "/catalogue/images/arduino-mega-2.jpg");                    
INSERT INTO sock VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Jetson Nano", "NVIDIA Maxwell 128-core GPU, quad-core Cortex-A57, 4GB LPDDR4. Runs CUDA, TensorFlow, PyTorch for edge AI.", 99.00, 30, "/catalogue/images/jetson-nano.jpg", "/catalogue/images/jetson-nano-2.jpg");                               
INSERT INTO sock VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "BeagleBone Black", "AM335x 1GHz ARM Cortex-A8, 512MB DDR3, 4GB eMMC, 92 expansion pins, PRU real-time coprocessors.", 45.00, 50, "/catalogue/images/beaglebone-black.jpg", "/catalogue/images/beaglebone-black-2.jpg");

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
                                                                             
-- ESP32 Dev Board                                                           
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
