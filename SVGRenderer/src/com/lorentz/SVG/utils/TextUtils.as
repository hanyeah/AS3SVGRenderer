package com.lorentz.SVG.utils
{	
	public class TextUtils
	{
		public static function getParagraphDirection(text:String):String {
			for(var i:int = text.length - 1; i >=0; i--){
				var type:String = getBidiCharacterType(text.charAt(i));
				if(type){
					switch(type){
						case "L" :
							return "lr";
						case "R" :
						case "AL" :
							return "rl";
					}
				}
			}
			
			return null;
		}
		
		private static function getBidiCharacterType(char:String):String{
			var bidiCharacterTypes:Array = [
				{ type: "L", ranges: LRanges },
				{ type: "R", ranges: RRanges },
				{ type: "AL", ranges: ALRanges }
			];
			
			var code:int = char.charCodeAt(0);
			
			for each(var characterType:Object in bidiCharacterTypes){
				for each(var range:Array in characterType.ranges){
					if(range.length == 1)
					{
						if(code == range[0])
							return characterType.type;
					} else {
						if(code >= range[0] && code <= range[1])
							return characterType.type;
					}
				}
			}
			
			return null;
		}
		
		private static var LRanges:Array = [
			[0x0041, 0x005A],
			[0x0061, 0x007A],
			[0x00AA],
			[0x00B5],
			[0x00BA],
			[0x00C0, 0x00D6],
			[0x00D8, 0x00F6],
			[0x00F8, 0x01BA],
			[0x01BB],
			[0x01BC, 0x01BF],
			[0x01C0, 0x01C3],
			[0x01C4, 0x0293],
			[0x0294],
			[0x0295, 0x02AF],
			[0x02B0, 0x02B8],
			[0x02BB, 0x02C1],
			[0x02D0, 0x02D1],
			[0x02E0, 0x02E4],
			[0x02EE],
			[0x0370, 0x0373],
			[0x0376, 0x0377],
			[0x037A],
			[0x037B, 0x037D],
			[0x0386],
			[0x0388, 0x038A],
			[0x038C],
			[0x038E, 0x03A1],
			[0x03A3, 0x03F5],
			[0x03F7, 0x0481],
			[0x0482],
			[0x048A, 0x0527],
			[0x0531, 0x0556],
			[0x0559],
			[0x055A, 0x055F],
			[0x0561, 0x0587],
			[0x0589],
			[0x0903],
			[0x0904, 0x0939],
			[0x093B],
			[0x093D],
			[0x093E, 0x0940],
			[0x0949, 0x094C],
			[0x094E, 0x094F],
			[0x0950],
			[0x0958, 0x0961],
			[0x0964, 0x0965],
			[0x0966, 0x096F],
			[0x0970],
			[0x0971],
			[0x0972, 0x0977],
			[0x0979, 0x097F],
			[0x0982, 0x0983],
			[0x0985, 0x098C],
			[0x098F, 0x0990],
			[0x0993, 0x09A8],
			[0x09AA, 0x09B0],
			[0x09B2],
			[0x09B6, 0x09B9],
			[0x09BD],
			[0x09BE, 0x09C0],
			[0x09C7, 0x09C8],
			[0x09CB, 0x09CC],
			[0x09CE],
			[0x09D7],
			[0x09DC, 0x09DD],
			[0x09DF, 0x09E1],
			[0x09E6, 0x09EF],
			[0x09F0, 0x09F1],
			[0x09F4, 0x09F9],
			[0x09FA],
			[0x0A03],
			[0x0A05, 0x0A0A],
			[0x0A0F, 0x0A10],
			[0x0A13, 0x0A28],
			[0x0A2A, 0x0A30],
			[0x0A32, 0x0A33],
			[0x0A35, 0x0A36],
			[0x0A38, 0x0A39],
			[0x0A3E, 0x0A40],
			[0x0A59, 0x0A5C],
			[0x0A5E],
			[0x0A66, 0x0A6F],
			[0x0A72, 0x0A74],
			[0x0A83],
			[0x0A85, 0x0A8D],
			[0x0A8F, 0x0A91],
			[0x0A93, 0x0AA8],
			[0x0AAA, 0x0AB0],
			[0x0AB2, 0x0AB3],
			[0x0AB5, 0x0AB9],
			[0x0ABD],
			[0x0ABE, 0x0AC0],
			[0x0AC9],
			[0x0ACB, 0x0ACC],
			[0x0AD0],
			[0x0AE0, 0x0AE1],
			[0x0AE6, 0x0AEF],
			[0x0B02, 0x0B03],
			[0x0B05, 0x0B0C],
			[0x0B0F, 0x0B10],
			[0x0B13, 0x0B28],
			[0x0B2A, 0x0B30],
			[0x0B32, 0x0B33],
			[0x0B35, 0x0B39],
			[0x0B3D],
			[0x0B3E],
			[0x0B40],
			[0x0B47, 0x0B48],
			[0x0B4B, 0x0B4C],
			[0x0B57],
			[0x0B5C, 0x0B5D],
			[0x0B5F, 0x0B61],
			[0x0B66, 0x0B6F],
			[0x0B70],
			[0x0B71],
			[0x0B72, 0x0B77],
			[0x0B83],
			[0x0B85, 0x0B8A],
			[0x0B8E, 0x0B90],
			[0x0B92, 0x0B95],
			[0x0B99, 0x0B9A],
			[0x0B9C],
			[0x0B9E, 0x0B9F],
			[0x0BA3, 0x0BA4],
			[0x0BA8, 0x0BAA],
			[0x0BAE, 0x0BB9],
			[0x0BBE, 0x0BBF],
			[0x0BC1, 0x0BC2],
			[0x0BC6, 0x0BC8],
			[0x0BCA, 0x0BCC],
			[0x0BD0],
			[0x0BD7],
			[0x0BE6, 0x0BEF],
			[0x0BF0, 0x0BF2],
			[0x0C01, 0x0C03],
			[0x0C05, 0x0C0C],
			[0x0C0E, 0x0C10],
			[0x0C12, 0x0C28],
			[0x0C2A, 0x0C33],
			[0x0C35, 0x0C39],
			[0x0C3D],
			[0x0C41, 0x0C44],
			[0x0C58, 0x0C59],
			[0x0C60, 0x0C61],
			[0x0C66, 0x0C6F],
			[0x0C7F],
			[0x0C82, 0x0C83],
			[0x0C85, 0x0C8C],
			[0x0C8E, 0x0C90],
			[0x0C92, 0x0CA8],
			[0x0CAA, 0x0CB3],
			[0x0CB5, 0x0CB9],
			[0x0CBD],
			[0x0CBE],
			[0x0CBF],
			[0x0CC0, 0x0CC4],
			[0x0CC6],
			[0x0CC7, 0x0CC8],
			[0x0CCA, 0x0CCB],
			[0x0CD5, 0x0CD6],
			[0x0CDE],
			[0x0CE0, 0x0CE1],
			[0x0CE6, 0x0CEF],
			[0x0CF1, 0x0CF2],
			[0x0D02, 0x0D03],
			[0x0D05, 0x0D0C],
			[0x0D0E, 0x0D10],
			[0x0D12, 0x0D3A],
			[0x0D3D],
			[0x0D3E, 0x0D40],
			[0x0D46, 0x0D48],
			[0x0D4A, 0x0D4C],
			[0x0D4E],
			[0x0D57],
			[0x0D60, 0x0D61],
			[0x0D66, 0x0D6F],
			[0x0D70, 0x0D75],
			[0x0D79],
			[0x0D7A, 0x0D7F],
			[0x0D82, 0x0D83],
			[0x0D85, 0x0D96],
			[0x0D9A, 0x0DB1],
			[0x0DB3, 0x0DBB],
			[0x0DBD],
			[0x0DC0, 0x0DC6],
			[0x0DCF, 0x0DD1],
			[0x0DD8, 0x0DDF],
			[0x0DF2, 0x0DF3],
			[0x0DF4],
			[0x0E01, 0x0E30],
			[0x0E32, 0x0E33],
			[0x0E40, 0x0E45],
			[0x0E46],
			[0x0E4F],
			[0x0E50, 0x0E59],
			[0x0E5A, 0x0E5B],
			[0x0E81, 0x0E82],
			[0x0E84],
			[0x0E87, 0x0E88],
			[0x0E8A],
			[0x0E8D],
			[0x0E94, 0x0E97],
			[0x0E99, 0x0E9F],
			[0x0EA1, 0x0EA3],
			[0x0EA5],
			[0x0EA7],
			[0x0EAA, 0x0EAB],
			[0x0EAD, 0x0EB0],
			[0x0EB2, 0x0EB3],
			[0x0EBD],
			[0x0EC0, 0x0EC4],
			[0x0EC6],
			[0x0ED0, 0x0ED9],
			[0x0EDC, 0x0EDD],
			[0x0F00],
			[0x0F01, 0x0F03],
			[0x0F04, 0x0F12],
			[0x0F13, 0x0F17],
			[0x0F1A, 0x0F1F],
			[0x0F20, 0x0F29],
			[0x0F2A, 0x0F33],
			[0x0F34],
			[0x0F36],
			[0x0F38],
			[0x0F3E, 0x0F3F],
			[0x0F40, 0x0F47],
			[0x0F49, 0x0F6C],
			[0x0F7F],
			[0x0F85],
			[0x0F88, 0x0F8C],
			[0x0FBE, 0x0FC5],
			[0x0FC7, 0x0FCC],
			[0x0FCE, 0x0FCF],
			[0x0FD0, 0x0FD4],
			[0x0FD5, 0x0FD8],
			[0x0FD9, 0x0FDA],
			[0x1000, 0x102A],
			[0x102B, 0x102C],
			[0x1031],
			[0x1038],
			[0x103B, 0x103C],
			[0x103F],
			[0x1040, 0x1049],
			[0x104A, 0x104F],
			[0x1050, 0x1055],
			[0x1056, 0x1057],
			[0x105A, 0x105D],
			[0x1061],
			[0x1062, 0x1064],
			[0x1065, 0x1066],
			[0x1067, 0x106D],
			[0x106E, 0x1070],
			[0x1075, 0x1081],
			[0x1083, 0x1084],
			[0x1087, 0x108C],
			[0x108E],
			[0x108F],
			[0x1090, 0x1099],
			[0x109A, 0x109C],
			[0x109E, 0x109F],
			[0x10A0, 0x10C5],
			[0x10D0, 0x10FA],
			[0x10FB],
			[0x10FC],
			[0x1100, 0x1248],
			[0x124A, 0x124D],
			[0x1250, 0x1256],
			[0x1258],
			[0x125A, 0x125D],
			[0x1260, 0x1288],
			[0x128A, 0x128D],
			[0x1290, 0x12B0],
			[0x12B2, 0x12B5],
			[0x12B8, 0x12BE],
			[0x12C0],
			[0x12C2, 0x12C5],
			[0x12C8, 0x12D6],
			[0x12D8, 0x1310],
			[0x1312, 0x1315],
			[0x1318, 0x135A],
			[0x1360],
			[0x1361, 0x1368],
			[0x1369, 0x137C],
			[0x1380, 0x138F],
			[0x13A0, 0x13F4],
			[0x1401, 0x166C],
			[0x166D, 0x166E],
			[0x166F, 0x167F],
			[0x1681, 0x169A],
			[0x16A0, 0x16EA],
			[0x16EB, 0x16ED],
			[0x16EE, 0x16F0],
			[0x1700, 0x170C],
			[0x170E, 0x1711],
			[0x1720, 0x1731],
			[0x1735, 0x1736],
			[0x1740, 0x1751],
			[0x1760, 0x176C],
			[0x176E, 0x1770],
			[0x1780, 0x17B3],
			[0x17B4, 0x17B5],
			[0x17B6],
			[0x17BE, 0x17C5],
			[0x17C7, 0x17C8],
			[0x17D4, 0x17D6],
			[0x17D7],
			[0x17D8, 0x17DA],
			[0x17DC],
			[0x17E0, 0x17E9],
			[0x1810, 0x1819],
			[0x1820, 0x1842],
			[0x1843],
			[0x1844, 0x1877],
			[0x1880, 0x18A8],
			[0x18AA],
			[0x18B0, 0x18F5],
			[0x1900, 0x191C],
			[0x1923, 0x1926],
			[0x1929, 0x192B],
			[0x1930, 0x1931],
			[0x1933, 0x1938],
			[0x1946, 0x194F],
			[0x1950, 0x196D],
			[0x1970, 0x1974],
			[0x1980, 0x19AB],
			[0x19B0, 0x19C0],
			[0x19C1, 0x19C7],
			[0x19C8, 0x19C9],
			[0x19D0, 0x19D9],
			[0x19DA],
			[0x1A00, 0x1A16],
			[0x1A19, 0x1A1B],
			[0x1A1E, 0x1A1F],
			[0x1A20, 0x1A54],
			[0x1A55],
			[0x1A57],
			[0x1A61],
			[0x1A63, 0x1A64],
			[0x1A6D, 0x1A72],
			[0x1A80, 0x1A89],
			[0x1A90, 0x1A99],
			[0x1AA0, 0x1AA6],
			[0x1AA7],
			[0x1AA8, 0x1AAD],
			[0x1B04],
			[0x1B05, 0x1B33],
			[0x1B35],
			[0x1B3B],
			[0x1B3D, 0x1B41],
			[0x1B43, 0x1B44],
			[0x1B45, 0x1B4B],
			[0x1B50, 0x1B59],
			[0x1B5A, 0x1B60],
			[0x1B61, 0x1B6A],
			[0x1B74, 0x1B7C],
			[0x1B82],
			[0x1B83, 0x1BA0],
			[0x1BA1],
			[0x1BA6, 0x1BA7],
			[0x1BAA],
			[0x1BAE, 0x1BAF],
			[0x1BB0, 0x1BB9],
			[0x1BC0, 0x1BE5],
			[0x1BE7],
			[0x1BEA, 0x1BEC],
			[0x1BEE],
			[0x1BF2, 0x1BF3],
			[0x1BFC, 0x1BFF],
			[0x1C00, 0x1C23],
			[0x1C24, 0x1C2B],
			[0x1C34, 0x1C35],
			[0x1C3B, 0x1C3F],
			[0x1C40, 0x1C49],
			[0x1C4D, 0x1C4F],
			[0x1C50, 0x1C59],
			[0x1C5A, 0x1C77],
			[0x1C78, 0x1C7D],
			[0x1C7E, 0x1C7F],
			[0x1CD3],
			[0x1CE1],
			[0x1CE9, 0x1CEC],
			[0x1CEE, 0x1CF1],
			[0x1CF2],
			[0x1D00, 0x1D2B],
			[0x1D2C, 0x1D61],
			[0x1D62, 0x1D77],
			[0x1D78],
			[0x1D79, 0x1D9A],
			[0x1D9B, 0x1DBF],
			[0x1E00, 0x1F15],
			[0x1F18, 0x1F1D],
			[0x1F20, 0x1F45],
			[0x1F48, 0x1F4D],
			[0x1F50, 0x1F57],
			[0x1F59],
			[0x1F5B],
			[0x1F5D],
			[0x1F5F, 0x1F7D],
			[0x1F80, 0x1FB4],
			[0x1FB6, 0x1FBC],
			[0x1FBE],
			[0x1FC2, 0x1FC4],
			[0x1FC6, 0x1FCC],
			[0x1FD0, 0x1FD3],
			[0x1FD6, 0x1FDB],
			[0x1FE0, 0x1FEC],
			[0x1FF2, 0x1FF4A],
			[0x1FF6, 0x1FFC],
			[0x200E],
			[0x2071],
			[0x207F],
			[0x2090, 0x209C],
			[0x2102],
			[0x2107],
			[0x210A, 0x2113],
			[0x2115],
			[0x2119, 0x211D],
			[0x2124],
			[0x2126],
			[0x2128],
			[0x212A, 0x212D],
			[0x212F, 0x2134],
			[0x2135, 0x2138],
			[0x2139],
			[0x213C, 0x213F],
			[0x2145, 0x2149],
			[0x214E],
			[0x214F],
			[0x2160, 0x2182],
			[0x2183, 0x2184],
			[0x2185, 0x2188],
			[0x2336, 0x237A],
			[0x2395],
			[0x249C, 0x24E9],
			[0x26AC],
			[0x2800, 0x28FF],
			[0x2C00, 0x2C2E],
			[0x2C30, 0x2C5E],
			[0x2C60, 0x2C7C],
			[0x2C7D],
			[0x2C7E, 0x2CE4],
			[0x2CEB, 0x2CEE],
			[0x2D00, 0x2D25],
			[0x2D30, 0x2D65],
			[0x2D6F],
			[0x2D70],
			[0x2D80, 0x2D96],
			[0x2DA0, 0x2DA6],
			[0x2DA8, 0x2DAE],
			[0x2DB0, 0x2DB6],
			[0x2DB8, 0x2DBE],
			[0x2DC0, 0x2DC6],
			[0x2DC8, 0x2DCE],
			[0x2DD0, 0x2DD6],
			[0x2DD8, 0x2DDE],
			[0x3005],
			[0x3006],
			[0x3007],
			[0x3021, 0x3029],
			[0x3031, 0x3035],
			[0x3038, 0x303A],
			[0x303B],
			[0x303C],
			[0x3041, 0x3096],
			[0x309D, 0x309E],
			[0x309F],
			[0x30A1, 0x30FA],
			[0x30FC, 0x30FE],
			[0x30FF],
			[0x3105, 0x312D],
			[0x3131, 0x318E],
			[0x3190, 0x3191],
			[0x3192, 0x3195],
			[0x3196, 0x319F],
			[0x31A0, 0x31BA],
			[0x31F0, 0x31FF],
			[0x3200, 0x321C],
			[0x3220, 0x3229],
			[0x322A, 0x324F],
			[0x3260, 0x327B],
			[0x327F],
			[0x3280, 0x3289],
			[0x328A, 0x32B0],
			[0x32C0, 0x32CB],
			[0x32D0, 0x32FE],
			[0x3300, 0x3376],
			[0x337B, 0x33DD],
			[0x33E0, 0x33FE],
			[0x3400, 0x4DB5],
			[0x4E00, 0x9FCB],
			[0xA000, 0xA014],
			[0xA015],
			[0xA016, 0xA48C],
			[0xA4D0, 0xA4F7],
			[0xA4F8, 0xA4FD],
			[0xA4FE, 0xA4FF],
			[0xA500, 0xA60B],
			[0xA60C],
			[0xA610, 0xA61F],
			[0xA620, 0xA629],
			[0xA62A, 0xA62B],
			[0xA640, 0xA66D],
			[0xA66E],
			[0xA680, 0xA697],
			[0xA6A0, 0xA6E5],
			[0xA6E6, 0xA6EF],
			[0xA6F2, 0xA6F7],
			[0xA722, 0xA76F],
			[0xA770],
			[0xA771, 0xA787],
			[0xA789, 0xA78A],
			[0xA78B, 0xA78E],
			[0xA790, 0xA791],
			[0xA7A0, 0xA7A9],
			[0xA7FA],
			[0xA7FB, 0xA801],
			[0xA803, 0xA805],
			[0xA807, 0xA80A],
			[0xA80C, 0xA822],
			[0xA823, 0xA824],
			[0xA827],
			[0xA830, 0xA835],
			[0xA836, 0xA837],
			[0xA840, 0xA873],
			[0xA880, 0xA881],
			[0xA882, 0xA8B3],
			[0xA8B4, 0xA8C3],
			[0xA8CE, 0xA8CF],
			[0xA8D0, 0xA8D9],
			[0xA8F2, 0xA8F7],
			[0xA8F8, 0xA8FA],
			[0xA8FB],
			[0xA900, 0xA909],
			[0xA90A, 0xA925],
			[0xA92E, 0xA92F],
			[0xA930, 0xA946],
			[0xA952, 0xA953],
			[0xA95F],
			[0xA960, 0xA97C],
			[0xA983],
			[0xA984, 0xA9B2],
			[0xA9B4, 0xA9B5],
			[0xA9BA, 0xA9BB],
			[0xA9BD, 0xA9C0],
			[0xA9C1, 0xA9CD],
			[0xA9CF],
			[0xA9D0, 0xA9D9],
			[0xA9DE, 0xA9DF],
			[0xAA00, 0xAA28],
			[0xAA2F, 0xAA30],
			[0xAA33, 0xAA34],
			[0xAA40, 0xAA42],
			[0xAA44, 0xAA4B],
			[0xAA4D],
			[0xAA50, 0xAA59],
			[0xAA5C, 0xAA5F],
			[0xAA60, 0xAA6F],
			[0xAA70],
			[0xAA71, 0xAA76],
			[0xAA77, 0xAA79],
			[0xAA7A],
			[0xAA7B],
			[0xAA80, 0xAAAF],
			[0xAAB1],
			[0xAAB5, 0xAAB6],
			[0xAAB9, 0xAABD],
			[0xAAC0],
			[0xAAC2],
			[0xAADB, 0xAADC],
			[0xAADD],
			[0xAADE, 0xAADF],
			[0xAB01, 0xAB06],
			[0xAB09, 0xAB0E],
			[0xAB11, 0xAB16],
			[0xAB20, 0xAB26],
			[0xAB28, 0xAB2E],
			[0xABC0, 0xABE2],
			[0xABE3, 0xABE4],
			[0xABE6, 0xABE7],
			[0xABE9, 0xABEA],
			[0xABEB],
			[0xABEC],
			[0xABF0, 0xABF9],
			[0xAC00, 0xD7A3],
			[0xD7B0, 0xD7C6],
			[0xD7CB, 0xD7FB],
			[0xE000, 0xF8FF],
			[0xF900, 0xFA2D],
			[0xFA30, 0xFA6D],
			[0xFA70, 0xFAD9],
			[0xFB00, 0xFB06],
			[0xFB13, 0xFB17],
			[0xFF21, 0xFF3A],
			[0xFF41, 0xFF5A],
			[0xFF66, 0xFF6F],
			[0xFF70],
			[0xFF71, 0xFF9D],
			[0xFF9E, 0xFF9F],
			[0xFFA0, 0xFFBE],
			[0xFFC2, 0xFFC7],
			[0xFFCA, 0xFFCF],
			[0xFFD2, 0xFFD7],
			[0xFFDA, 0xFFDC],
			[0x10000, 0x1000B],
			[0x1000D, 0x10026],
			[0x10028, 0x1003A],
			[0x1003C, 0x1003D],
			[0x1003F, 0x1004D],
			[0x10050, 0x1005D],
			[0x10080, 0x100FA],
			[0x10100],
			[0x10102],
			[0x10107, 0x10133],
			[0x10137, 0x1013F],
			[0x101D0, 0x101FC],
			[0x10280, 0x1029C],
			[0x102A0, 0x102D0],
			[0x10300, 0x1031E],
			[0x10320, 0x10323],
			[0x10330, 0x10340],
			[0x10341],
			[0x10342, 0x10349],
			[0x1034A],
			[0x10380, 0x1039D],
			[0x1039F],
			[0x103A0, 0x103C3],
			[0x103C8, 0x103CF],
			[0x103D0],
			[0x103D1, 0x103D5],
			[0x10400, 0x1044F],
			[0x10450, 0x1049D],
			[0x104A0, 0x104A9],
			[0x11000],
			[0x11002],
			[0x11003, 0x11037],
			[0x11047, 0x1104D],
			[0x11066, 0x1106F],
			[0x11082],
			[0x11083, 0x110AF],
			[0x110B0, 0x110B2],
			[0x110B7, 0x110B8],
			[0x110BB, 0x110BC],
			[0x110BD],
			[0x110BE, 0x110C1],
			[0x12000, 0x1236E],
			[0x12400, 0x12462],
			[0x12470, 0x12473],
			[0x13000, 0x1342E],
			[0x16800, 0x16A38],
			[0x1B000, 0x1B001],
			[0x1D000, 0x1D0F5],
			[0x1D100, 0x1D126],
			[0x1D129, 0x1D164],
			[0x1D165, 0x1D166],
			[0x1D16A, 0x1D16C],
			[0x1D16D, 0x1D172],
			[0x1D183, 0x1D184],
			[0x1D18C, 0x1D1A9],
			[0x1D1AE, 0x1D1DD],
			[0x1D360, 0x1D371],
			[0x1D400, 0x1D454],
			[0x1D456, 0x1D49C],
			[0x1D49E, 0x1D49F],
			[0x1D4A2],
			[0x1D4A5, 0x1D4A6],
			[0x1D4A9, 0x1D4AC],
			[0x1D4AE, 0x1D4B9],
			[0x1D4BB],
			[0x1D4BD, 0x1D4C3],
			[0x1D4C5, 0x1D505],
			[0x1D507, 0x1D50A],
			[0x1D50D, 0x1D514],
			[0x1D516, 0x1D51C],
			[0x1D51E, 0x1D539],
			[0x1D53B, 0x1D53E],
			[0x1D540, 0x1D544],
			[0x1D546],
			[0x1D54A, 0x1D550],
			[0x1D552, 0x1D6A5],
			[0x1D6A8, 0x1D6C0],
			[0x1D6C1],
			[0x1D6C2, 0x1D6DA],
			[0x1D6DC, 0x1D6FA],
			[0x1D6FB],
			[0x1D6FC, 0x1D714],
			[0x1D716, 0x1D734],
			[0x1D735],
			[0x1D736, 0x1D74E],
			[0x1D750, 0x1D76E],
			[0x1D76F],
			[0x1D770, 0x1D788],
			[0x1D78A, 0x1D7A8],
			[0x1D7A9],
			[0x1D7AA, 0x1D7C2],
			[0x1D7C4, 0x1D7CB],
			[0x1F110, 0x1F12E],
			[0x1F130, 0x1F169],
			[0x1F170, 0x1F19A],
			[0x1F1E6, 0x1F202],
			[0x1F210, 0x1F23A],
			[0x1F240, 0x1F248],
			[0x1F250, 0x1F251],
			[0x1F48C],
			[0x1F524],
			[0x20000, 0x2A6D6],
			[0x2A700, 0x2B734],
			[0x2B740, 0x2B81D],
			[0x2F800, 0x2FA1D],
			[0xF0000, 0xFFFFD],
			[0x100000, 0x10FFFD],
		];
		
		private static var RRanges:Array = [
			[0x0590],
			[0x05BE],
			[0x05C0],
			[0x05C3],
			[0x05C6],
			[0x05C8, 0x05CF],
			[0x05D0, 0x05EA],
			[0x05EB, 0x05EF],
			[0x05F0, 0x05F2],
			[0x05F3, 0x05F4],
			[0x05F5, 0x05FF],
			[0x07C0, 0x07C9],
			[0x07CA, 0x07EA],
			[0x07F4, 0x07F5],
			[0x07FA],
			[0x07FB, 0x07FF],
			[0x0800, 0x0815],
			[0x081A],
			[0x0824],
			[0x0828],
			[0x082E, 0x082F],
			[0x0830, 0x083E],
			[0x083F],
			[0x0840, 0x0858],
			[0x085C, 0x085D],
			[0x085E],
			[0x085F, 0x08FF],
			[0x200F],
			[0xFB1D],
			[0xFB1F, 0xFB28],
			[0xFB2A, 0xFB36],
			[0xFB37],
			[0xFB38, 0xFB3C],
			[0xFB3D],
			[0xFB3E],
			[0xFB3F],
			[0xFB40, 0xFB41],
			[0xFB42],
			[0xFB43, 0xFB44],
			[0xFB45],
			[0xFB46, 0xFB4F],
			[0x10800, 0x10805],
			[0x10806, 0x10807],
			[0x10808],
			[0x10809],
			[0x1080A, 0x10835],
			[0x10836],
			[0x10837, 0x10838],
			[0x10839, 0x1083B],
			[0x1083C],
			[0x1083D, 0x1083E],
			[0x1083F, 0x10855],
			[0x10856],
			[0x10857],
			[0x10858, 0x1085F],
			[0x10860, 0x108FF],
			[0x10900, 0x10915],
			[0x10916, 0x1091B],
			[0x1091C, 0x1091E],
			[0x10920, 0x10939],
			[0x1093A, 0x1093E],
			[0x1093F],
			[0x10940, 0x109FF],
			[0x10A00],
			[0x10A04],
			[0x10A07, 0x10A0B],
			[0x10A10, 0x10A13],
			[0x10A14],
			[0x10A15, 0x10A17],
			[0x10A18],
			[0x10A19, 0x10A33],
			[0x10A34, 0x10A37],
			[0x10A3B, 0x10A3E],
			[0x10A40, 0x10A47],
			[0x10A48, 0x10A4F],
			[0x10A50, 0x10A58],
			[0x10A59, 0x10A5F],
			[0x10A60, 0x10A7C],
			[0x10A7D, 0x10A7E],
			[0x10A7F],
			[0x10A80, 0x10AFF],
			[0x10B00, 0x10B35],
			[0x10B36, 0x10B38],
			[0x10B40, 0x10B55],
			[0x10B56, 0x10B57],
			[0x10B58, 0x10B5F],
			[0x10B60, 0x10B72],
			[0x10B73, 0x10B77],
			[0x10B78, 0x10B7F],
			[0x10B80, 0x10BFF],
			[0x10C00, 0x10C48],
			[0x10C49, 0x10E5F],
			[0x10E7F, 0x10FFF],
			[0x1E800, 0x1EFFF]
		];
		
		private static var ALRanges:Array = [
			[0x0604, 0x0605],
			[0x0608],
			[0x060B],
			[0x060D],
			[0x061B],
			[0x061C, 0x061D],
			[0x061E, 0x061F],
			[0x0620, 0x063F],
			[0x0640],
			[0x0641, 0x064A],
			[0x066D],
			[0x066E, 0x066F],
			[0x0671, 0x06D3],
			[0x06D4],
			[0x06D5],
			[0x06E5, 0x06E6],
			[0x06EE, 0x06EF],
			[0x06FA, 0x06FC],
			[0x06FD, 0x06FE],
			[0x06FF],
			[0x0700, 0x070D],
			[0x070E],
			[0x0710],
			[0x0712, 0x072F],
			[0x074B, 0x074C],
			[0x074D, 0x07A5],
			[0x07B1],
			[0x07B2, 0x07BF],
			[0xFB50, 0xFBB1],
			[0xFBB2, 0xFBC1],
			[0xFBC2, 0xFBD2],
			[0xFBD3, 0xFD3D],
			[0xFD40, 0xFD4F],
			[0xFD50, 0xFD8F],
			[0xFD90, 0xFD91],
			[0xFD92, 0xFDC7],
			[0xFDC8, 0xFDCF],
			[0xFDF0, 0xFDFB],
			[0xFDFC],
			[0xFDFE, 0xFDFF],
			[0xFE70, 0xFE74],
			[0xFE75],
			[0xFE76, 0xFEFC],
			[0xFEFD, 0xFEFE]
		];
	}
}