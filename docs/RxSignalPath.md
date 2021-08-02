![logo](../docs/images/ngrf_logo.png)

---
# Rx Signal Path

The IIO-Oscilloscope application provides access to setup and control the receiver signal path.  Some of these parameters are exposed through the GUI while others are available by directly configuring the IIO driver on the device.  This section gives examples for configuring IIO driver parameters directly.  Depending on the hardware many of these are also documented on the Analog Devices wiki.  Information for launching the IIO-Oscilloscope application locally or via a remote PC can be found [here](https://wiki.analog.com/resources/tools-software/linux-software/iio_oscilloscope).  The PC software can be downloaded from the releases tab [here](https://github.com/analogdevicesinc/iio-oscilloscope/releases).

Additional information about the ADRV9002 IIO plugin can be found [here](https://wiki.analog.com/resources/tools-software/linux-software/adrv9002_plugin) along with information regarding the ADRV9002 Linux driver can be found [here](https://wiki.analog.com/resources/tools-software/linux-drivers/iio-transceiver/adrv9002?&#tracking_calibrations).

## Accessing IIO Device Directly

The IIO device driver can be accessed directly by logging into the devices command line interface using SSH or the USB serial port.  To connect to the serial port simply connect the USB serial port to a PC and open a terminal using a COM port with 115200 8n1 settings.  To connect via SSH enter the following bash commands from a linux bash terminal.  The appropriate ip address of your device should be used with `root` as the username and when prompted use the password `analog`.

```bash
ssh root@192.168.81.193
```

Once connected to the devices command line interface parameters can be changed by accessing the `iio:device1` driver.  Below are a list of commands and a brief description.

| Parameter                                | Description                    |
|------------------------------------------|--------------------------------|
| in_voltage0_sampling_frequency           | Sample frequency in Hz         |


```bash
cat /home/profiles/stream_01.bin > /sys/bus/iio/devices/iio:device1/stream_config
cat /home/profiles/profile_01.json > /sys/bus/iio/devices/iio:device1/profile_config
```