# simple-icebreaker-check

Este proyecto contiene un ejemplo en Verilog diseñado para comprobar que la FPGA iCEBreaker v1.0e está correctamente instalada y que puede cargarse un diseño básico. El módulo enciende y apaga los LEDs rojo y verde integrados en la placa, e incluye un mecanismo de reset asíncrono mediante el botón de usuario.

## Dependencias necesarias

Instala las herramientas de síntesis, place & route y simulación para iCE40:

```bash
sudo apt update
sudo apt install yosys nextpnr-ice40 fpga-icestorm iverilog gtkwave make git
```

## Cómo utilizarlo

Clona este repositorio:

```bash
    git clone git@github.com:iglesias-daniel/simple-icebreaker-check.git
    cd simple-icebreaker-check
```

Este proyecto utiliza el archivo `main.mk` de los ejemplos oficiales de iCEBreaker. Para obtener únicamente ese archivo:

```bash
    git clone --no-checkout https://github.com/icebreaker-fpga/icebreaker-verilog-examples.git
    cd icebreaker-verilog-examples
    git sparse-checkout init
    git sparse-checkout set main.mk
    git checkout
    cd ..
    mv icebreaker-verilog-examples/main.mk .
    rm -rf icebreaker-verilog-examples
```
Asegúrate de tener conectada tu FPGA iCEBreaker v1.0e y ejecuta:

```bash
    make
    make prog
```

Esto generará el bitstream y programará la placa.
