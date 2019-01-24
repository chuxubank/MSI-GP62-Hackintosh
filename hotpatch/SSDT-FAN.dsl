//MSI Laptop "quiet" fan patch
DefinitionBlock("", "SSDT", 2, "hack", "_FANQ", 0)
{
	External(\_SB.PCI0, DeviceObj)
	External(\_SB.PCI0.LPCB, DeviceObj)
	External(\_SB.PCI0.LPCB.EC, DeviceObj)
	External(\_SB.PCI0.LPCB.EC.SCM0, DeviceObj)
	Device (SMCD)
	{
		External(\_SB.PCI0.LPCB.EC.CPUT, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SYST, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SCM0.TD71, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SCM0.TD72, FieldUnitObj)
		External(\_SB.PCI0.LPCB.EC.SCM0.TD73, FieldUnitObj)
		Name (_HID, "FAN00000") // _HID: Hardware ID

		// ACPISensors.kext configuration
		Name (TACH, Package()
		{
			"CPUFan", "FAN1",
		})

		Name (TEMP, Package()
		{
			"CPU", "TCPU",
			"Mainboard", "TSYS",
		})

		Method (FAN1, 0, Serialized)
		{
			//disable fan in low tempeture
			\_SB.PCI0.LPCB.EC.SCM0.TD72 = 0
			\_SB.PCI0.LPCB.EC.SCM0.TD73 = 0
			
			Local0 = \_SB.PCI0.LPCB.EC.SCM0.TD71
			Local0 -= 0x3C
			If (Local0 < 0 ) { Local0 = 0}
			Local0 = Local0*50 + 0xE47
			Return (Local0)
		}

		Method (TCPU, 0, Serialized)
		{
			Return (\_SB.PCI0.LPCB.EC.CPUT)
		}

		Method (TSYS, 0, Serialized)
		{
			Return (\_SB.PCI0.LPCB.EC.SYST)
		}

		//did't effect
//		Method(FCPU, 0)
//		{
//			\_SB.PCI0.LPCB.EC.SCM0.TD72 = 0
//			\_SB.PCI0.LPCB.EC.SCM0.TD73 = 0
//		}
	}
}