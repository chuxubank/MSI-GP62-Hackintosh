// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
//

DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // USB Power Properties for Sierra (using USBInjectAll injection)
            "AppleBusPowerController", Package()
            {
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBWakePortCurrentLimit", 2100,
            },
            "8086_a12f", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS03", Package() // HS USB3 top left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package() // HS USB2 bottom left (should be USB3)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    // "HS07", Package() // MSI EPF USB (maybe keyboard backlight)
                    // {
                    //     "UsbConnector", 255,
                    //     "port", Buffer() { 7, 0, 0, 0 },
                    // },
                    "HS08", Package() // HS USB2 middle right
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS10", Package() // bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package() // web camera
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "HS12", Package() // sd card reader/writer
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "SS03", Package() // SS USB3 top left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package() // SS USB2 bottom left (should be USB3)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
//EOF
