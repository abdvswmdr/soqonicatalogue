── 1. Microcontrollers (Tag 1)

    Raspberry Pi Pico W:

        Description: The wireless version of the RP2040. Dual-core Cortex M0+ at 133MHz, 2MB Flash, 264KB SRAM, and an on-board Infineon CYW43439 wireless chip providing 2.4GHz WiFi and Bluetooth 5.2.

    Arduino GIGA R1 WiFi:

        Description: Powered by a dual-core STM32H7, it brings the power of an M7 (480MHz) and an M4 (240MHz). 76 GPIO pins, 12-bit DAC, and integrated WiFi/BT. Perfect for complex automation and high-speed processing.

    STM32F401 Black Pill:

        Description: High-performance Cortex-M4 at 84MHz with 256KB Flash and 64KB RAM. Offers a significant speed boost over the Blue Pill with native USB Type-C and reliable hardware.

    ESP32-S2 Saola-1:

        Description: Single-core 240MHz Xtensa LX7, 4MB Flash, and 2MB PSRAM. Features 43 GPIOs and native USB support, designed for security-focused IoT applications.

    Teensy 4.0:

        Description: The fastest microcontroller board on the market, featuring an ARM Cortex-M7 at 600MHz. It packs massive computing power into a tiny 1.4 by 0.7 inch form factor.

── 2. Single Board Computers (Tag 2)

    Raspberry Pi Zero 2 W:

        Description: Features a quad-core 64-bit ARM Cortex-A53 CPU at 1GHz and 512MB of SDRAM. It’s up to five times faster than the original Pi Zero while maintaining the same tiny footprint.

    Orange Pi 5:

        Description: Uses the Rockchip RK3588S 8-core 64-bit processor (4x A76, 4x A55) with 8GB LPDDR4X RAM. Includes an NPU for AI acceleration and 8K video support.

    Rock 5B:

        Description: A high-end SBC with RK3588, support for up to 16GB RAM, dual 4K HDMI ports, and a 2.5G Ethernet port. Designed for server-grade workloads and heavy edge computing.

    Banana Pi BPI-M5:

        Description: A strong alternative to the RPi4, featuring an Amlogic S905X3 Quad-Core Cortex-A55, 4GB RAM, and 16GB on-board eMMC storage.

    BeagleV-Ahead:

        Description: A powerful open-source RISC-V SBC with a quad-core processor. This board is perfect for engineers exploring the RISC-V architecture in embedded Linux.

── 3. Sensors (Tag 13)

    AHT20 + BMP280 Combo:

        Description: A dual-sensor module for high-precision temperature, humidity, and barometric pressure. Uses I2C and is much more stable and accurate than the older DHT sensors.

    SCD41 CO2 Sensor:

        Description: A true photoacoustic CO2 sensor with integrated temperature and humidity. Provides high-precision air quality data (400–5000 ppm range) via I2C.

    MAX30102 Oximeter/Heart-Rate:

        Description: Integrated pulse oximetry and heart-rate monitor biosensor module. Combines two LEDs, a photodetector, and low-noise electronics with ambient light rejection.

    TFMini-S LiDAR:

        Description: A compact single-point ranging LiDAR based on ToF. It can measure distances up to 12m with a high frame rate of up to 1000Hz. Ideal for UAVs and robotics.

    AS5600 Magnetic Encoder:

        Description: A high-resolution 12-bit contactless rotary position sensor. Perfect for closed-loop motor control and digital knobs that won't wear out over time.

── 4. Wireless & RF (Tag 25)

    RA-02 LoRa Module (SX1278):

        Description: Long-range spread spectrum communication module operating at 433MHz. Capable of communicating over several kilometers in rural environments.

    SIM7600G-H 4G/LTE Module:

        Description: A global 4G/3G/2G communication and GNSS (GPS) module. Supports LTE Cat-4 for high-speed data transfer and is compatible with African network bands.

    HC-12 Long Range Wireless:

        Description: A 433MHz serial transparent wireless module. Easier to use than NRF24L01, offering up to 1km range with simple UART communication.

    ESP-NOW Gateway (Dual ESP32):

        Description: A custom PCB setup using ESP-NOW protocol for ultra-low latency, low-power mesh networking between multiple ESP32 and ESP8266 nodes.

    RYLR896 LoRa AT Command Module:

        Description: LoRa module with a built-in MCU that handles the complex LoRa stack. You control it via simple AT commands over UART, making long-range easy.

── 5. Motors & Actuators (Tag 16)

    A4988 Stepper Driver with Heat Sink:

        Description: The industry standard for 3D printers. Supports 1/16 microstepping and up to 2A per coil. Essential for high-precision linear motion.

    MG90S Metal Gear Micro Servo:

        Description: An upgraded version of the SG90 with full metal gears and higher torque (2.2kg/cm). Much more durable for robotics arms and steering.

    DS3218 20kg Large Torque Digital Servo:

        Description: A heavy-duty, waterproof digital servo with stainless steel gears. Delivers 20kg of torque at 6V. Ideal for large-scale robots and RC vehicles.

    28BYJ-48 Stepper with ULN2003:

        Description: A geared 5V stepper motor. While slow, it offers very high precision and holding torque for its size. The included driver makes it easy to interface with any MCU.

    L9110S Dual Channel DC Driver:

        Description: A compact and low-cost alternative to the L298N for smaller motors. Can drive two DC motors or one 4-wire stepper motor at up to 800mA.

── 6. Tools & Prototyping (Tag 17)

    TS101 Smart Soldering Iron:

        Description: A portable, programmable digital soldering iron powered by DC or USB-C (PD). Features rapid heat-up and precise temperature control.

    Bus Pirate v3.6:

        Description: A universal serial interface tool that talks to most chips (I2C, SPI, UART). Essential for debugging hardware and "sniffing" data between components.

    Logic Analyzer (24MHz, 8CH):

        Description: A must-have for the Mechatronics engineer. It allows you to visualize digital signals like I2C or SPI on your computer to see exactly what is happening in your code.

    6-Piece Anti-Static Tweezers Set:

        Description: Precision ESD-safe tweezers for handling surface mount (SMD) components and delicate wiring during assembly.

    USB to TTL CP2102 Adapter:

        Description: A high-quality USB-to-Serial converter. More stable than the CH340, it's used for programming Pro Minis, ESP-01s, and debugging SBCs via serial console.

── SQL Insert Template for detail.html

When you add these, use this structure to match your existing logic:
SQL

INSERT INTO sock VALUES (
    "UUID_HERE", 
    "Product Name", 
    "Full Description from above", 
    PRICE_DECIMAL, 
    STOCK_COUNT, 
    "/catalogue/images/image1.jpg", 
    "/catalogue/images/image2.jpg"
);
