images - bitmap
circleImage
	"Tools.UIMaskEditor new openOnClass: self andSelector: #circleImage"
	
	<resource: #image>
	^Image
		extent: 81 @ 83
		depth: 2
		bitsPerPixel: 2
		palette:
			(MappedPalette
				withColors:
					(#(#(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(0 0 0)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(8191 8191 0)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(8191 8191 8191)))
						collect:
							[:each | 
							(each at: 1) value
								perform: (each at: 2)
								withArguments: (each at: 3)]))
		usingBits:
			(ByteArray fromPackedString:
					'***************************@@@@@***************************@@@@@***************************@@@@@***************************@@@@@***************************@@@@@***************************@@@@@***************************@@@@@*************@@************@@@@@***********@@UU@J**********@@@@@**********@UUUUUPJ*********@@@@@********* UUUUUUUP*********@@@@@*********EUUUUUUUUB********@@@@@********(UUUU@UUUUTJ*******@@@@@********AUUU@*@EUUUP*******@@@@@*******(UUUP*** EUUUB******@@@@@*******!UUPJ**** UUUTJ*****@@@@@*******EUTJ******AUUUR*****@@@@@******(UUR*******(UUUR*****@@@@@******!UUJ********AUUT*****@@@@@******EUP*********(UUUJ****@@@@@*****(UUJ**********EUUR****@@@@@*****!UT*********** UUR****@@@@@*****EUR************EUT****@@@@@****(UUJ************!UUJ***@@@@@****(UT*************!UUJ***@@@@@****!UR*************(UUR***@@@@@****!UJ**************EUR***@@@@@****EUJ**************EUT***@@@@@***(UT***************!UUJ**@@@@@***(UR***************(UUJ**@@@@@***!UJ****************EUR**@@@@@***!UJ****************EUR**@@@@@***ET*****************!UT**@@@@@***ET*****************!UT**@@@@@**(UR*****************(UT**@@@@@**(UR*****************(UT**@@@@@**(UJ*****************(UT**@@@@@**(UJ******************EUJ*@@@@@**!UJ******************EUJ*@@@@@**!T*******************EUJ*@@@@@**!T*******************!UJ*@@@@@**!T*******************!UJ*@@@@@**ER*******************!UJ*@@@@@**ER*******************(UJ*@@@@@**ER*******************(UJ*@@@@@*(UJ*******************(UJ*@@@@@*(@@*******************(UJ*@@@@@**!T*******************!UJ*@@@@@**!UJ******************!UJ*@@@@@**!UJ******************!UJ*@@@@@**(UR******************!UJ*@@@@@**(UR******************EUJ*@@@@@**(UR******************EUJ*@@@@@**(UT******************EUJ*@@@@@**(UT******************ET**@@@@@***EUJ****************(UT**@@@@@***EUJ****************(UT**@@@@@***!UR****************(UT**@@@@@***!UR****************!UR**@@@@@***(UT****************EUR**@@@@@***(UUJ**************(UUR**@@@@@****EUR**************!UUJ**@@@@@****EUT**************EUUJ**@@@@@****!UT*************(UUT***@@@@@****(UUJ************!UUR***@@@@@****(UUR***********(EUUJ***@@@@@*****EUT***********!UUUJ***@@@@@*****!UUJ*********(EUUT****@@@@@*****(UUPJ********!UUUR****@@@@@*****(UUUPB******(EUUUR****@@@@@******EUUUT@J***(AUUUTJ****@@@@@****** UUUUUPB* AUUUUB*****@@@@@*******AUUUUUT@EUUUU@******@@@@@*******(EUUUUUUUUUUP*******@@@@@******** UUUUUUUUUPJ*******@@@@@*********@UUUUUUUTJ********@@@@@**********AUUUUUUB*********@@@@@**********(AUUUUP**********@@@@@***********(@@@@J**********@@@@@***************************@@@@@***************************@@@@@***************************@@@@@***************************@@@@@')