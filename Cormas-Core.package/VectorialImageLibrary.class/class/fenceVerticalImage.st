images - bitmap
fenceVerticalImage
	"Tools.UIMaskEditor new openOnClass: self andSelector: #fenceVerticalImage"
	
	<resource: #image>
	^Image
		extent: 53 @ 53
		depth: 2
		bitsPerPixel: 2
		palette:
			(MappedPalette
				withColors:
					(#(#(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(0 0 0)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(8191 8191 8191)) #(ColorValue 
						#scaledRed:scaledGreen:scaledBlue: #(5557 5557 5557)))
						collect:
							[:each | 
							(each at: 1) value
								perform: (each at: 2)
								withArguments: (each at: 3)]))
		usingBits:
			(ByteArray fromPackedString:
					'UUUUUUUUUUUUUUUUUT@@@EUUUUUUUUUUUUUUUUU@@@AT@@@EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@AT***EUUUUUUUUUUUUP@@@UJ**!UUUUUUUUUUUUT@@@ER**(UUUUUUUUUUUUU@@@@b')