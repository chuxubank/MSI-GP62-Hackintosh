//MSI Laptop "quiet" fan patch
DefinitionBlock("", "SSDT", 2, "hack", "_FANQ", 0)
{
	External(\_SB.PCI0, DeviceObj)
	External(\_SB.PCI0.LPCB, DeviceObj)
	External(\_SB.PCI0.LPCB.EC, DeviceObj)
	External(\_SB.PCI0.LPCB.EC.SCM0, DeviceObj)
	Device (SMCD)
	{
		External(\_SB.PCI0.LPCB.EC.SCM0.TD71, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SCM0.TD72, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SCM0.TD73, FieldUnitObj)
		Name (_HID, "FAN00000") // _HID: Hardware ID

		// ACPISensors.kext configuration
		Name (TACH, Package()
		{
			"CPUFan", "FAN0",
		})

		Method (FAN0, 0, Serialized)
		{
			// disable fan in low tempeture
			\_SB.PCI0.LPCB.EC.SCM0.TD72 = 0
			
			Local0 = \_SB.PCI0.LPCB.EC.SCM0.TD71 * 60
			Return (Local0)
		}
	}
}
