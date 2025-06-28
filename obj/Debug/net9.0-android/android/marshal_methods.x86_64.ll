; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [385 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1155 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 294
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 274
	i64 u0x00933730dc856ddb, ; 3: pt/Humanizer.resources.dll => 329
	i64 u0x01109b0e4d99e61f, ; 4: System.ComponentModel.Annotations.dll => 13
	i64 u0x02123411c4e01926, ; 5: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 263
	i64 u0x0284512fad379f7e, ; 6: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 7: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 8: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 9: lib_Xamarin.AndroidX.AppCompat.dll.so => 217
	i64 u0x03621c804933a890, ; 10: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 11: SQLitePCLRaw.provider.e_sqlite3.dll => 201
	i64 u0x0399610510a38a38, ; 12: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 13: ru/Microsoft.Maui.Controls.resources => 370
	i64 u0x044440a55165631e, ; 14: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 348
	i64 u0x046eb1581a80c6b0, ; 15: vi/Microsoft.Maui.Controls.resources => 376
	i64 u0x047408741db2431a, ; 16: Xamarin.AndroidX.DynamicAnimation => 237
	i64 u0x0517ef04e06e9f76, ; 17: System.Net.Primitives => 71
	i64 u0x0540d1e6601e6ba8, ; 18: lib-zh-CN-Humanizer.resources.dll.so => 343
	i64 u0x0565d18c6da3de38, ; 19: Xamarin.AndroidX.RecyclerView => 267
	i64 u0x0581db89237110e9, ; 20: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 21: Microsoft.Maui.dll => 188
	i64 u0x05a1c25e78e22d87, ; 22: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06076b5d2b581f08, ; 23: zh-HK/Microsoft.Maui.Controls.resources => 377
	i64 u0x06388ffe9f6c161a, ; 24: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 25: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 26: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 242
	i64 u0x0680a433c781bb3d, ; 27: Xamarin.AndroidX.Collection.Jvm => 224
	i64 u0x069fff96ec92a91d, ; 28: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 29: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 239
	i64 u0x0739448d84d3b016, ; 30: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 277
	i64 u0x07469f2eecce9e85, ; 31: mscorlib.dll => 167
	i64 u0x07c57877c7ba78ad, ; 32: ru/Microsoft.Maui.Controls.resources.dll => 370
	i64 u0x07dcdc7460a0c5e4, ; 33: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 34: lib_Microsoft.Extensions.Logging.Debug.dll.so => 183
	i64 u0x0827070ac93751d7, ; 35: zh-Hant/Humanizer.resources.dll => 345
	i64 u0x083685b3f540073b, ; 36: lib-nl-Humanizer.resources.dll.so => 327
	i64 u0x088610fc2509f69e, ; 37: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 278
	i64 u0x08a7c865576bbde7, ; 38: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 39: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 234
	i64 u0x08f3c9788ee2153c, ; 40: Xamarin.AndroidX.DrawerLayout => 236
	i64 u0x09138715c92dba90, ; 41: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 42: lib_Microsoft.Extensions.Options.dll.so => 184
	i64 u0x092266563089ae3e, ; 43: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 44: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 45: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 46: System.Threading.Channels.dll => 140
	i64 u0x0af4fd4d0b86feb9, ; 47: lib-cs-Humanizer.resources.dll.so => 303
	i64 u0x0b06b1feab070143, ; 48: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 49: sk/Microsoft.Maui.Controls.resources => 371
	i64 u0x0b6aff547b84fbe9, ; 50: Xamarin.KotlinX.Serialization.Core.Jvm => 297
	i64 u0x0be2e1f8ce4064ed, ; 51: Xamarin.AndroidX.ViewPager => 280
	i64 u0x0c11b6a02da48d32, ; 52: ru/Humanizer.resources.dll => 331
	i64 u0x0c3ca6cc978e2aae, ; 53: pt-BR/Microsoft.Maui.Controls.resources => 367
	i64 u0x0c59ad9fbbd43abe, ; 54: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 55: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 211
	i64 u0x0c74af560004e816, ; 56: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 57: lib_Microsoft.Maui.Essentials.dll.so => 189
	i64 u0x0c83c82812e96127, ; 58: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 59: Xamarin.AndroidX.Security.SecurityCrypto => 271
	i64 u0x0d13cd7cce4284e4, ; 60: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 61: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 270
	i64 u0x0e04e702012f8463, ; 62: Xamarin.AndroidX.Emoji2 => 238
	i64 u0x0e14e73a54dda68e, ; 63: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f37dd7a62ae99af, ; 64: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 225
	i64 u0x0f5e7abaa7cf470a, ; 65: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 66: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 67: Xamarin.AndroidX.CustomView => 233
	i64 u0x1065c4cb554c3d75, ; 68: System.IO.IsolatedStorage.dll => 52
	i64 u0x10baf3201c84b01a, ; 69: lib-sl-Humanizer.resources.dll.so => 333
	i64 u0x10ca46a12d1cfb88, ; 70: Syncfusion.Maui.Core => 203
	i64 u0x10f6cfcbcf801616, ; 71: System.IO.Compression.Brotli => 43
	i64 u0x10fc9fa261ff17c1, ; 72: fr/Humanizer.resources.dll => 310
	i64 u0x114443cdcf2091f1, ; 73: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 74: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 75: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 76: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 253
	i64 u0x11fbe62d469cc1c8, ; 77: Microsoft.VisualStudio.DesignTools.TapContract.dll => 382
	i64 u0x12128b3f59302d47, ; 78: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 79: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 80: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 81: Xamarin.AndroidX.RecyclerView.dll => 267
	i64 u0x12d3b63863d4ab0b, ; 82: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x131a9294a359083f, ; 83: lib-uz-Cyrl-UZ-Humanizer.resources.dll.so => 340
	i64 u0x1348c2404b8e3719, ; 84: lib-ku-Humanizer.resources.dll.so => 321
	i64 u0x134eab1061c395ee, ; 85: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 86: Xamarin.AndroidX.Browser => 221
	i64 u0x13a01de0cbc3f06c, ; 87: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 354
	i64 u0x13beedefb0e28a45, ; 88: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 89: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 90: he/Microsoft.Maui.Controls.resources => 355
	i64 u0x142bd27876dd1eb2, ; 91: es/Humanizer.resources.dll => 307
	i64 u0x143d8ea60a6a4011, ; 92: Microsoft.Extensions.DependencyInjection.Abstractions => 180
	i64 u0x1497051b917530bd, ; 93: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b78ce3adce0011, ; 94: Microsoft.VisualStudio.DesignTools.TapContract => 382
	i64 u0x14e68447938213b7, ; 95: Xamarin.AndroidX.Collection.Ktx.dll => 225
	i64 u0x152a448bd1e745a7, ; 96: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 97: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 98: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 99: System.Resources.Writer.dll => 101
	i64 u0x1695ecefb732cade, ; 100: lib_Syncfusion.Maui.Core.dll.so => 203
	i64 u0x16bf2a22df043a09, ; 101: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 102: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 103: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 104: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 105: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 106: Xamarin.KotlinX.Coroutines.Core => 294
	i64 u0x1752c12f1e1fc00c, ; 107: System.Core => 21
	i64 u0x17962c57a950eb0b, ; 108: bg/Humanizer.resources => 301
	i64 u0x17b56e25558a5d36, ; 109: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 358
	i64 u0x17f9358913beb16a, ; 110: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 111: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 112: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 297
	i64 u0x18a7b7b95215aa8a, ; 113: id/Humanizer.resources.dll => 316
	i64 u0x18a9befae51bb361, ; 114: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 115: nb/Microsoft.Maui.Controls.resources.dll => 364
	i64 u0x193d7a04b7eda8bc, ; 116: lib_Xamarin.AndroidX.Print.dll.so => 265
	i64 u0x19777fba3c41b398, ; 117: Xamarin.AndroidX.Startup.StartupRuntime.dll => 273
	i64 u0x19a4c090f14ebb66, ; 118: System.Security.Claims => 119
	i64 u0x1a21ad8fb8814a23, ; 119: lib_UraniumUI.dll.so => 205
	i64 u0x1a91866a319e9259, ; 120: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 121: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 122: lib-th-Microsoft.Maui.Controls.resources.dll.so => 373
	i64 u0x1aea8f1c3b282172, ; 123: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b41e3af3c9aaab0, ; 124: nb/Humanizer.resources.dll => 325
	i64 u0x1b4b7a1d0d265fa2, ; 125: Xamarin.Android.Glide.DiskLruCache => 210
	i64 u0x1bbdb16cfa73e785, ; 126: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 254
	i64 u0x1bc766e07b2b4241, ; 127: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 268
	i64 u0x1c753b5ff15bce1b, ; 128: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 129: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 130: System.Globalization.Calendars.dll => 40
	i64 u0x1da4110562816681, ; 131: Xamarin.AndroidX.Security.SecurityCrypto.dll => 271
	i64 u0x1db6820994506bf5, ; 132: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 133: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 134: Xamarin.AndroidX.Navigation.UI => 264
	i64 u0x1e71143913d56c10, ; 135: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 362
	i64 u0x1e7c31185e2fb266, ; 136: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 137: Microsoft.Extensions.Options.dll => 184
	i64 u0x1f055d15d807e1b2, ; 138: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 139: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f5cb425484c72d0, ; 140: vi/Humanizer.resources => 342
	i64 u0x1f61df9c5b94d2c1, ; 141: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 142: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 275
	i64 u0x1fb20f02ba80c1c6, ; 143: pl/Humanizer.resources.dll => 328
	i64 u0x20237ea48006d7a8, ; 144: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 145: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 146: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 147: System.Globalization => 42
	i64 u0x21419508838f7547, ; 148: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 149: System.Runtime => 117
	i64 u0x2184c076e2c5748d, ; 150: sr/Humanizer.resources.dll => 334
	i64 u0x2198e5bc8b7153fa, ; 151: Xamarin.AndroidX.Annotation.Experimental.dll => 215
	i64 u0x219ea1b751a4dee4, ; 152: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 153: System.Reflection.Emit.ILGeneration => 91
	i64 u0x220fd4f2e7c48170, ; 154: th/Microsoft.Maui.Controls.resources => 373
	i64 u0x224538d85ed15a82, ; 155: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 156: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 157: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 381
	i64 u0x237be844f1f812c7, ; 158: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 159: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 160: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 161: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 162: Xamarin.AndroidX.Core.dll => 230
	i64 u0x247619fe4413f8bf, ; 163: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24de8d301281575e, ; 164: Xamarin.Android.Glide => 208
	i64 u0x252073cc3caa62c2, ; 165: fr/Microsoft.Maui.Controls.resources.dll => 354
	i64 u0x256b8d41255f01b1, ; 166: Xamarin.Google.Crypto.Tink.Android => 286
	i64 u0x25a0a7eff76ea08e, ; 167: SQLitePCLRaw.batteries_v2.dll => 196
	i64 u0x26117cdc7ed2e501, ; 168: fa/Humanizer.resources => 308
	i64 u0x2662c629b96b0b30, ; 169: lib_Xamarin.Kotlin.StdLib.dll.so => 290
	i64 u0x268c1439f13bcc29, ; 170: lib_Microsoft.Extensions.Primitives.dll.so => 185
	i64 u0x26a670e154a9c54b, ; 171: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 172: System.IO.dll => 58
	i64 u0x273f3515de5faf0d, ; 173: id/Microsoft.Maui.Controls.resources.dll => 359
	i64 u0x2742545f9094896d, ; 174: hr/Microsoft.Maui.Controls.resources => 357
	i64 u0x2759af78ab94d39b, ; 175: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 176: Xamarin.Google.Crypto.Tink.Android.dll => 286
	i64 u0x27b410442fad6cf1, ; 177: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 178: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 179: System.Net.Primitives.dll => 71
	i64 u0x28028600431ccae9, ; 180: sv/Humanizer.resources => 336
	i64 u0x286835e259162700, ; 181: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 266
	i64 u0x2949f3617a02c6b2, ; 182: Xamarin.AndroidX.ExifInterface => 240
	i64 u0x29f947844fb7fc11, ; 183: Microsoft.Maui.Controls.HotReload.Forms => 380
	i64 u0x2a128783efe70ba0, ; 184: uk/Microsoft.Maui.Controls.resources.dll => 375
	i64 u0x2a3b095612184159, ; 185: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 186: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 187: fi/Microsoft.Maui.Controls.resources => 353
	i64 u0x2ad5d6b13b7a3e04, ; 188: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 189: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 190: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 191: zh-Hant/Microsoft.Maui.Controls.resources.dll => 379
	i64 u0x2b6989d78cba9a15, ; 192: Xamarin.AndroidX.Concurrent.Futures.dll => 226
	i64 u0x2c8bd14bb93a7d82, ; 193: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 366
	i64 u0x2cbd9262ca785540, ; 194: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 195: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 196: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2cdbe1c1d4183ec1, ; 197: lib_Syncfusion.Licensing.dll.so => 202
	i64 u0x2d169d318a968379, ; 198: System.Threading.dll => 149
	i64 u0x2d40115ab2a55265, ; 199: tr/Humanizer.resources.dll => 338
	i64 u0x2d47774b7d993f59, ; 200: sv/Microsoft.Maui.Controls.resources.dll => 372
	i64 u0x2d5ffcae1ad0aaca, ; 201: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 202: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 203: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 204: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 205: el/Microsoft.Maui.Controls.resources.dll => 351
	i64 u0x2eb38bc55214359e, ; 206: lib-hu-Humanizer.resources.dll.so => 314
	i64 u0x2f02f94df3200fe5, ; 207: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 208: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 209: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 210: lib_System.Xml.dll.so => 164
	i64 u0x3003357e3ab1e2c3, ; 211: id/Humanizer.resources => 316
	i64 u0x306e382282988135, ; 212: lib-az-Humanizer.resources.dll.so => 300
	i64 u0x309ee9eeec09a71e, ; 213: lib_Xamarin.AndroidX.Fragment.dll.so => 241
	i64 u0x30ba2accb43a42ec, ; 214: SQLiteNetExtensions => 195
	i64 u0x30c6dda129408828, ; 215: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 216: _Microsoft.Android.Resource.Designer.dll => 384
	i64 u0x312c8ed623cbfc8d, ; 217: Xamarin.AndroidX.Window.dll => 282
	i64 u0x31496b779ed0663d, ; 218: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x32243413e774362a, ; 219: Xamarin.AndroidX.CardView.dll => 222
	i64 u0x3235427f8d12dae1, ; 220: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 221: fr/Microsoft.Maui.Controls.resources => 354
	i64 u0x32aa989ff07a84ff, ; 222: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 223: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 224: lib-es-Microsoft.Maui.Controls.resources.dll.so => 352
	i64 u0x341abc357fbb4ebf, ; 225: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 226: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34c492cef793bb77, ; 227: lib_InputKit.Maui.dll.so => 176
	i64 u0x34dfd74fe2afcf37, ; 228: Microsoft.Maui => 188
	i64 u0x34e292762d9615df, ; 229: cs/Microsoft.Maui.Controls.resources.dll => 348
	i64 u0x34e2dca8c29e7538, ; 230: th-TH/Humanizer.resources.dll => 337
	i64 u0x3508234247f48404, ; 231: Microsoft.Maui.Controls => 186
	i64 u0x353590da528c9d22, ; 232: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 233: lib_Xamarin.AndroidX.ViewPager2.dll.so => 281
	i64 u0x355282fc1c909694, ; 234: Microsoft.Extensions.Configuration => 177
	i64 u0x3552fc5d578f0fbf, ; 235: Xamarin.AndroidX.Arch.Core.Common => 219
	i64 u0x355c649948d55d97, ; 236: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x35ea9d1c6834bc8c, ; 237: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 257
	i64 u0x3628ab68db23a01a, ; 238: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 239: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 240: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 241: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 242: System.IO.MemoryMappedFiles => 53
	i64 u0x36d2129305806e75, ; 243: UraniumUI => 205
	i64 u0x374ef46b06791af6, ; 244: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 245: lib_Xamarin.Jetbrains.Annotations.dll.so => 289
	i64 u0x37bc29f3183003b6, ; 246: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 247: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 248: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 249: Xamarin.AndroidX.CustomView.dll => 233
	i64 u0x38869c811d74050e, ; 250: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 251: lib_Xamarin.AndroidX.ViewPager.dll.so => 280
	i64 u0x395e37c3334cf82a, ; 252: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 347
	i64 u0x39aa39fda111d9d3, ; 253: Newtonsoft.Json => 191
	i64 u0x3a091c9bd6a1124d, ; 254: el/Humanizer.resources.dll => 306
	i64 u0x3ab5859054645f72, ; 255: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ac6540d8053cd32, ; 256: lib-uk-Humanizer.resources.dll.so => 339
	i64 u0x3ad75090c3fac0e9, ; 257: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 268
	i64 u0x3ae44ac43a1fbdbb, ; 258: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 259: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c3aafb6b3a00bf6, ; 260: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 261: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 262: Xamarin.Kotlin.StdLib => 290
	i64 u0x3c7e5ed3d5db71bb, ; 263: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 264: Xamarin.AndroidX.Browser.dll => 221
	i64 u0x3d1c50cc001a991e, ; 265: Xamarin.Google.Guava.ListenableFuture.dll => 288
	i64 u0x3d2b1913edfc08d7, ; 266: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 267: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 268: Xamarin.AndroidX.Fragment.Ktx.dll => 242
	i64 u0x3d9c2a242b040a50, ; 269: lib_Xamarin.AndroidX.Core.dll.so => 230
	i64 u0x3da7781d6333a8fe, ; 270: SQLitePCLRaw.batteries_v2 => 196
	i64 u0x3dab989ce5be7233, ; 271: fr-BE/Humanizer.resources => 311
	i64 u0x3dbb6b9f5ab90fa7, ; 272: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 237
	i64 u0x3e5441657549b213, ; 273: Xamarin.AndroidX.ResourceInspection.Annotation => 268
	i64 u0x3e57d4d195c53c2e, ; 274: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 275: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 276: Xamarin.AndroidX.SlidingPaneLayout.dll => 272
	i64 u0x3f510adf788828dd, ; 277: System.Threading.Tasks.Extensions => 143
	i64 u0x3fb32d66d0479e1e, ; 278: Syncfusion.Maui.Expander.dll => 204
	i64 u0x407740ff2e914d86, ; 279: Xamarin.AndroidX.Print.dll => 265
	i64 u0x407a10bb4bf95829, ; 280: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 261
	i64 u0x40856d3b9d417a08, ; 281: SQLitePCLRaw.nativelibrary => 197
	i64 u0x40c98b6bd77346d4, ; 282: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 283: mscorlib => 167
	i64 u0x41cab042be111c34, ; 284: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 218
	i64 u0x422f2fd74b259a5b, ; 285: lv/Humanizer.resources.dll => 322
	i64 u0x423a9ecc4d905a88, ; 286: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 287: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 288: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 289: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 290: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 291: netstandard.dll => 168
	i64 u0x4341f0f73b563228, ; 292: lib-th-TH-Humanizer.resources.dll.so => 337
	i64 u0x434c4e1d9284cdae, ; 293: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 294: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 213
	i64 u0x437d06c381ed575a, ; 295: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 296: pl/Microsoft.Maui.Controls.resources.dll => 366
	i64 u0x43e8ca5bc927ff37, ; 297: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 239
	i64 u0x448bd33429269b19, ; 298: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 299: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 300: Xamarin.Kotlin.StdLib.dll => 290
	i64 u0x4545802489b736b9, ; 301: Xamarin.AndroidX.Fragment.Ktx => 242
	i64 u0x454b4d1e66bb783c, ; 302: Xamarin.AndroidX.Lifecycle.Process => 250
	i64 u0x455f0def2946d035, ; 303: mt/Humanizer.resources.dll => 324
	i64 u0x45c40276a42e283e, ; 304: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 305: System.AppContext.dll => 6
	i64 u0x464d1b225b8ea0fc, ; 306: is/Humanizer.resources => 317
	i64 u0x464ee429c409ab24, ; 307: lib-tr-Humanizer.resources.dll.so => 338
	i64 u0x46a4213bc97fe5ae, ; 308: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 370
	i64 u0x46f731771adfbabf, ; 309: bg/Humanizer.resources.dll => 301
	i64 u0x47358bd471172e1d, ; 310: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47b4ca6091940144, ; 311: sk/Humanizer.resources => 332
	i64 u0x47daf4e1afbada10, ; 312: pt/Microsoft.Maui.Controls.resources => 368
	i64 u0x480c0a47dd42dd81, ; 313: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 314: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 244
	i64 u0x49e952f19a4e2022, ; 315: System.ObjectModel => 85
	i64 u0x49f9e6948a8131e4, ; 316: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 279
	i64 u0x4a47f5ad14864c53, ; 317: zh-CN/Humanizer.resources.dll => 343
	i64 u0x4a5667b2462a664b, ; 318: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 264
	i64 u0x4a78a24dc5b649fc, ; 319: Syncfusion.Maui.Core.dll => 203
	i64 u0x4a7a18981dbd56bc, ; 320: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 321: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 249
	i64 u0x4b07a0ed0ab33ff4, ; 322: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 323: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 324: System.Text.Json => 138
	i64 u0x4be6ceda4f0ce9eb, ; 325: sl/Humanizer.resources.dll => 333
	i64 u0x4c7755cf07ad2d5f, ; 326: System.Net.Http.Json.dll => 64
	i64 u0x4cc5f15266470798, ; 327: lib_Xamarin.AndroidX.Loader.dll.so => 259
	i64 u0x4cf6f67dc77aacd2, ; 328: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 329: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 330: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 331: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 332: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 333: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 219
	i64 u0x4d7793536e79c309, ; 334: System.ServiceProcess => 133
	i64 u0x4d91e5c949c8f5e5, ; 335: InputKit.Maui.dll => 176
	i64 u0x4d95fccc1f67c7ca, ; 336: System.Runtime.Loader.dll => 110
	i64 u0x4dcf44c3c9b076a2, ; 337: it/Microsoft.Maui.Controls.resources.dll => 360
	i64 u0x4dd9247f1d2c3235, ; 338: Xamarin.AndroidX.Loader.dll => 259
	i64 u0x4e2aeee78e2c4a87, ; 339: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 266
	i64 u0x4e32f00cb0937401, ; 340: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 341: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 342: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 343: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 344: ca/Microsoft.Maui.Controls.resources => 347
	i64 u0x4fd5f3ee53d0a4f0, ; 345: SQLitePCLRaw.lib.e_sqlite3.android => 199
	i64 u0x5037f0be3c28c7a3, ; 346: lib_Microsoft.Maui.Controls.dll.so => 186
	i64 u0x50c3a29b21050d45, ; 347: System.Linq.Parallel.dll => 60
	i64 u0x50f0fc284bcc2980, ; 348: fi-FI/Humanizer.resources => 309
	i64 u0x5131bbe80989093f, ; 349: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 256
	i64 u0x516324a5050a7e3c, ; 350: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 351: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 352: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 353: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 354: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 253
	i64 u0x526ce79eb8e90527, ; 355: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 356: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 357: Xamarin.AndroidX.Core => 230
	i64 u0x52ff996554dbf352, ; 358: Microsoft.Maui.Graphics => 190
	i64 u0x535f7e40e8fef8af, ; 359: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 371
	i64 u0x5393877ffd0dd5e5, ; 360: de/Humanizer.resources => 305
	i64 u0x53978aac584c666e, ; 361: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 362: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 363: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 364: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 377
	i64 u0x53e450ebd586f842, ; 365: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 260
	i64 u0x5435e6f049e9bc37, ; 366: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 367: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 368: Xamarin.AndroidX.Lifecycle.Common.dll => 245
	i64 u0x55250ba592fd51e2, ; 369: SQLitePCLRaw.provider.dynamic_cdecl.dll => 200
	i64 u0x556e8b63b660ab8b, ; 370: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 246
	i64 u0x5588627c9a108ec9, ; 371: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 372: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 373: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x563cb66e607395ec, ; 374: tr/Humanizer.resources => 338
	i64 u0x56442b99bc64bb47, ; 375: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a8b26e1aeae27b, ; 376: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 377: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 378: System.Private.Uri => 87
	i64 u0x576499c9f52fea31, ; 379: Xamarin.AndroidX.Annotation => 214
	i64 u0x578cd35c91d7b347, ; 380: lib_SQLitePCLRaw.core.dll.so => 198
	i64 u0x579a06fed6eec900, ; 381: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 382: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 383: System.Threading.Timer => 148
	i64 u0x58601b2dda4a27b9, ; 384: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 361
	i64 u0x58688d9af496b168, ; 385: Microsoft.Extensions.DependencyInjection.dll => 179
	i64 u0x588c167a79db6bfb, ; 386: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 287
	i64 u0x5906028ae5151104, ; 387: Xamarin.AndroidX.Activity.Ktx => 213
	i64 u0x595a356d23e8da9a, ; 388: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x5996ce673d6bd238, ; 389: fa/Humanizer.resources.dll => 308
	i64 u0x59f9e60b9475085f, ; 390: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 215
	i64 u0x5a745f5101a75527, ; 391: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 392: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 229
	i64 u0x5a8f6699f4a1caa9, ; 393: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 394: Xamarin.AndroidX.Legacy.Support.Core.Utils => 244
	i64 u0x5ae9cd33b15841bf, ; 395: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 396: System.Private.DataContractSerialization => 86
	i64 u0x5b5a4238d7a96962, ; 397: zh-Hans/Humanizer.resources => 344
	i64 u0x5b5f0e240a06a2a2, ; 398: da/Microsoft.Maui.Controls.resources.dll => 349
	i64 u0x5b8109e8e14c5e3e, ; 399: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 400: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 249
	i64 u0x5bdf16b09da116ab, ; 401: Xamarin.AndroidX.Collection => 223
	i64 u0x5c019d5266093159, ; 402: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 254
	i64 u0x5c30a4a35f9cc8c4, ; 403: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 404: lib_Microsoft.Extensions.Logging.dll.so => 181
	i64 u0x5c53c29f5073b0c9, ; 405: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 406: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 407: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d23ef925d42b1c6, ; 408: th-TH/Humanizer.resources => 337
	i64 u0x5d40c9b15181641f, ; 409: lib_Xamarin.AndroidX.Emoji2.dll.so => 238
	i64 u0x5d6ca10d35e9485b, ; 410: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 226
	i64 u0x5d7ec76c1c703055, ; 411: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 412: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 413: Xamarin.AndroidX.Collection.Jvm.dll => 224
	i64 u0x5e467bc8f09ad026, ; 414: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 415: System.Runtime.Handles.dll => 105
	i64 u0x5e93986c44a4a96d, ; 416: lib-id-Humanizer.resources.dll.so => 316
	i64 u0x5ea4abc05c13851b, ; 417: lib-ms-MY-Humanizer.resources.dll.so => 323
	i64 u0x5ea92fdb19ec8c4c, ; 418: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 419: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 420: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 421: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 422: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 423: System.Data.Common => 22
	i64 u0x5f7399e166075632, ; 424: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 199
	i64 u0x5f9a2d823f664957, ; 425: lib-el-Microsoft.Maui.Controls.resources.dll.so => 351
	i64 u0x5fa6da9c3cd8142a, ; 426: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 296
	i64 u0x5fac98e0b37a5b9d, ; 427: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 428: lib_Microsoft.Extensions.DependencyInjection.dll.so => 179
	i64 u0x60cd4e33d7e60134, ; 429: Xamarin.KotlinX.Coroutines.Core.Jvm => 295
	i64 u0x60f62d786afcf130, ; 430: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 431: System.IO => 58
	i64 u0x61be8d1299194243, ; 432: Microsoft.Maui.Controls.Xaml => 187
	i64 u0x61d2cba29557038f, ; 433: de/Microsoft.Maui.Controls.resources => 350
	i64 u0x61d88f399afb2f45, ; 434: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x61e940c9ab9a7c51, ; 435: ja/Humanizer.resources.dll => 319
	i64 u0x622eef6f9e59068d, ; 436: System.Private.CoreLib => 173
	i64 u0x63cdbd66ac39bb46, ; 437: lib_Microsoft.VisualStudio.DesignTools.XamlTapContract.dll.so => 383
	i64 u0x63d5e3aa4ef9b931, ; 438: Xamarin.KotlinX.Coroutines.Android.dll => 293
	i64 u0x63f1f6883c1e23c2, ; 439: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 440: Xamarin.Google.Android.Material.dll => 284
	i64 u0x640e3b14dbd325c2, ; 441: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 442: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 443: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6565fba2cd8f235b, ; 444: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 257
	i64 u0x65ecac39144dd3cc, ; 445: Microsoft.Maui.Controls.dll => 186
	i64 u0x65ece51227bfa724, ; 446: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 447: Xamarin.AndroidX.Annotation.Jvm.dll => 216
	i64 u0x667545fa1fd15640, ; 448: uk/Humanizer.resources.dll => 339
	i64 u0x6679b2337ee6b22a, ; 449: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x668dd9a840032eae, ; 450: sr/Humanizer.resources => 334
	i64 u0x6692e924eade1b29, ; 451: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 452: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 256
	i64 u0x66d13304ce1a3efa, ; 453: Xamarin.AndroidX.CursorAdapter => 232
	i64 u0x674303f65d8fad6f, ; 454: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 455: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 228
	i64 u0x675a76b6c8b1b848, ; 456: it/Humanizer.resources.dll => 318
	i64 u0x67c0802770244408, ; 457: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 458: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 459: lib-da-Microsoft.Maui.Controls.resources.dll.so => 349
	i64 u0x6872ec7a2e36b1ac, ; 460: System.Drawing.Primitives.dll => 35
	i64 u0x68996457792782d2, ; 461: lib_Syncfusion.Maui.Expander.dll.so => 204
	i64 u0x68bb2c417aa9b61c, ; 462: Xamarin.KotlinX.AtomicFU.dll => 291
	i64 u0x68fbbbe2eb455198, ; 463: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 464: he/Microsoft.Maui.Controls.resources.dll => 355
	i64 u0x691f9b149522e78e, ; 465: hr/Humanizer.resources.dll => 313
	i64 u0x699dffb2427a2d71, ; 466: SQLitePCLRaw.lib.e_sqlite3.android.dll => 199
	i64 u0x69a3e26c76f6eec4, ; 467: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 283
	i64 u0x6a4d7577b2317255, ; 468: System.Runtime.InteropServices.dll => 108
	i64 u0x6ace3b74b15ee4a4, ; 469: nb/Microsoft.Maui.Controls.resources => 364
	i64 u0x6afcedb171067e2b, ; 470: System.Core.dll => 21
	i64 u0x6b86793f8bf1bb31, ; 471: ku/Humanizer.resources => 321
	i64 u0x6bef98e124147c24, ; 472: Xamarin.Jetbrains.Annotations => 289
	i64 u0x6ce874bff138ce2b, ; 473: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 255
	i64 u0x6d12bfaa99c72b1f, ; 474: lib_Microsoft.Maui.Graphics.dll.so => 190
	i64 u0x6d70755158ca866e, ; 475: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 476: Microsoft.Extensions.Primitives => 185
	i64 u0x6d7eeca99577fc8b, ; 477: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 478: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 479: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 232
	i64 u0x6d9bea6b3e895cf7, ; 480: Microsoft.Extensions.Primitives.dll => 185
	i64 u0x6dd9bf4083de3f6a, ; 481: Xamarin.AndroidX.DocumentFile.dll => 235
	i64 u0x6e25a02c3833319a, ; 482: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 262
	i64 u0x6e79c6bd8627412a, ; 483: Xamarin.AndroidX.SavedState.SavedState.Ktx => 270
	i64 u0x6e838d9a2a6f6c9e, ; 484: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 485: lib_System.Core.dll.so => 21
	i64 u0x6ea0602ecade04c1, ; 486: ms-MY/Humanizer.resources => 323
	i64 u0x6fd2265da78b93a4, ; 487: lib_Microsoft.Maui.dll.so => 188
	i64 u0x6fdfc7de82c33008, ; 488: cs/Microsoft.Maui.Controls.resources => 348
	i64 u0x6ff4432519ff083a, ; 489: lib-mt-Humanizer.resources.dll.so => 324
	i64 u0x6ffc4967cc47ba57, ; 490: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 491: System.IO.FileSystem.dll => 51
	i64 u0x705ac2d7300b2bbf, ; 492: sk/Humanizer.resources.dll => 332
	i64 u0x706442eb8d0ca9f8, ; 493: Plainer.Maui.dll => 192
	i64 u0x70976955d51f6395, ; 494: lib-pl-Humanizer.resources.dll.so => 328
	i64 u0x70e99f48c05cb921, ; 495: tr/Microsoft.Maui.Controls.resources.dll => 374
	i64 u0x70fd3deda22442d2, ; 496: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 364
	i64 u0x71485e7ffdb4b958, ; 497: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 498: lib_Xamarin.Android.Glide.Annotations.dll.so => 209
	i64 u0x71a495ea3761dde8, ; 499: lib-it-Microsoft.Maui.Controls.resources.dll.so => 360
	i64 u0x71ad672adbe48f35, ; 500: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 501: System.Security.Cryptography.Encoding => 123
	i64 u0x7276728c55ffd7ca, ; 502: SimpleInventory => 0
	i64 u0x72b1fb4109e08d7b, ; 503: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 357
	i64 u0x72e0300099accce1, ; 504: System.Xml.XPath.XDocument => 160
	i64 u0x72fe65da02e35939, ; 505: uz-Latn-UZ/Humanizer.resources.dll => 341
	i64 u0x730bfb248998f67a, ; 506: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 507: Xamarin.Google.ErrorProne.Annotations.dll => 287
	i64 u0x734b76fdc0dc05bb, ; 508: lib_GoogleGson.dll.so => 174
	i64 u0x73a6be34e822f9d1, ; 509: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 510: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 511: WindowsBase.dll => 166
	i64 u0x746834788a57f000, ; 512: af/Humanizer.resources => 298
	i64 u0x755a91767330b3d4, ; 513: lib_Microsoft.Extensions.Configuration.dll.so => 177
	i64 u0x75bef69fc3d3eedd, ; 514: hr/Humanizer.resources => 313
	i64 u0x75c326eb821b85c4, ; 515: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 516: lib_Xamarin.AndroidX.SavedState.dll.so => 269
	i64 u0x76ca07b878f44da0, ; 517: System.Runtime.Numerics.dll => 111
	i64 u0x76ec68c82ec143c9, ; 518: lib-nb-Humanizer.resources.dll.so => 325
	i64 u0x7736c8a96e51a061, ; 519: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 216
	i64 u0x778a805e625329ef, ; 520: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 521: Xamarin.KotlinX.AtomicFU.Jvm => 292
	i64 u0x77f8a4acc2fdc449, ; 522: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 523: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 363
	i64 u0x781bb34f6067b7f6, ; 524: fr-BE/Humanizer.resources.dll => 311
	i64 u0x782c5d8eb99ff201, ; 525: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 526: th/Microsoft.Maui.Controls.resources.dll => 373
	i64 u0x78a45e51311409b6, ; 527: Xamarin.AndroidX.Fragment.dll => 241
	i64 u0x78ed4ab8f9d800a1, ; 528: Xamarin.AndroidX.Lifecycle.ViewModel => 255
	i64 u0x79495523bbfb5d93, ; 529: lv/Humanizer.resources => 322
	i64 u0x7a39601d6f0bb831, ; 530: lib_Xamarin.KotlinX.AtomicFU.dll.so => 291
	i64 u0x7a7e7eddf79c5d26, ; 531: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 255
	i64 u0x7a9a57d43b0845fa, ; 532: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 533: Xamarin.AndroidX.Collection.dll => 223
	i64 u0x7adb8da2ac89b647, ; 534: fi/Microsoft.Maui.Controls.resources.dll => 353
	i64 u0x7b13d9eaa944ade8, ; 535: Xamarin.AndroidX.DynamicAnimation.dll => 237
	i64 u0x7bef86a4335c4870, ; 536: System.ComponentModel.TypeConverter => 17
	i64 u0x7bfa5e6ce26166a4, ; 537: vi/Humanizer.resources.dll => 342
	i64 u0x7c0820144cd34d6a, ; 538: sk/Microsoft.Maui.Controls.resources.dll => 371
	i64 u0x7c2a0bd1e0f988fc, ; 539: lib-de-Microsoft.Maui.Controls.resources.dll.so => 350
	i64 u0x7c41d387501568ba, ; 540: System.Net.WebClient.dll => 77
	i64 u0x7c43e28ac7c1fd3f, ; 541: lib-ro-Humanizer.resources.dll.so => 330
	i64 u0x7c482cd79bd24b13, ; 542: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 227
	i64 u0x7cd2ec8eaf5241cd, ; 543: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 544: Xamarin.Jetbrains.Annotations.dll => 289
	i64 u0x7d649b75d580bb42, ; 545: ms/Microsoft.Maui.Controls.resources.dll => 363
	i64 u0x7d8cc66a25f06828, ; 546: ku/Humanizer.resources.dll => 321
	i64 u0x7d8ee2bdc8e3aad1, ; 547: System.Numerics.Vectors => 83
	i64 u0x7de9efebbdb9db3d, ; 548: lib-sr-Latn-Humanizer.resources.dll.so => 335
	i64 u0x7df5df8db8eaa6ac, ; 549: Microsoft.Extensions.Logging.Debug => 183
	i64 u0x7dfc3d6d9d8d7b70, ; 550: System.Collections => 12
	i64 u0x7dfe6090cf80014e, ; 551: sr-Latn/Humanizer.resources.dll => 335
	i64 u0x7e0c91dccfbf1538, ; 552: af/Humanizer.resources.dll => 298
	i64 u0x7e2e564fa2f76c65, ; 553: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 554: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e434a4913b05aba, ; 555: he/Humanizer.resources.dll => 312
	i64 u0x7e4465b3f78ad8d0, ; 556: Xamarin.KotlinX.Serialization.Core.dll => 296
	i64 u0x7e571cad5915e6c3, ; 557: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 250
	i64 u0x7e6b1ca712437d7d, ; 558: Xamarin.AndroidX.Emoji2.ViewsHelper => 239
	i64 u0x7e946809d6008ef2, ; 559: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0077fd2273d61, ; 560: Humanizer.dll => 175
	i64 u0x7ea0272c1b4a9635, ; 561: lib_Xamarin.Android.Glide.dll.so => 208
	i64 u0x7ecc13347c8fd849, ; 562: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 563: Xamarin.AndroidX.ViewPager.dll => 280
	i64 u0x7f903af8afd7c6c3, ; 564: lib_SQLitePCLRaw.provider.dynamic_cdecl.dll.so => 200
	i64 u0x7f9351cd44b1273f, ; 565: Microsoft.Extensions.Configuration.Abstractions => 178
	i64 u0x7fbd557c99b3ce6f, ; 566: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 248
	i64 u0x8076a9a44a2ca331, ; 567: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 568: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 381
	i64 u0x80da183a87731838, ; 569: System.Reflection.Metadata => 95
	i64 u0x80fa55b6d1b0be99, ; 570: SQLitePCLRaw.provider.e_sqlite3 => 201
	i64 u0x812c069d5cdecc17, ; 571: System.dll => 165
	i64 u0x81381be520a60adb, ; 572: Xamarin.AndroidX.Interpolator.dll => 243
	i64 u0x81657cec2b31e8aa, ; 573: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 574: zh-Hant/Microsoft.Maui.Controls.resources => 379
	i64 u0x8277f2be6b5ce05f, ; 575: Xamarin.AndroidX.AppCompat => 217
	i64 u0x828f06563b30bc50, ; 576: lib_Xamarin.AndroidX.CardView.dll.so => 222
	i64 u0x82920a8d9194a019, ; 577: Xamarin.KotlinX.AtomicFU.Jvm.dll => 292
	i64 u0x82b399cb01b531c4, ; 578: lib_System.Web.dll.so => 154
	i64 u0x82ced5a8557965f9, ; 579: is/Humanizer.resources.dll => 317
	i64 u0x82df8f5532a10c59, ; 580: lib_System.Drawing.dll.so => 36
	i64 u0x82e0c7c2aee6c851, ; 581: lib-fr-Humanizer.resources.dll.so => 310
	i64 u0x82f0b6e911d13535, ; 582: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 583: uk/Microsoft.Maui.Controls.resources => 375
	i64 u0x83144699b312ad81, ; 584: SQLite-net.dll => 194
	i64 u0x83c14ba66c8e2b8c, ; 585: zh-Hans/Microsoft.Maui.Controls.resources => 378
	i64 u0x846ce984efea52c7, ; 586: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 587: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 588: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84dc035288ecf33c, ; 589: sr-Latn/Humanizer.resources => 335
	i64 u0x850c5ba0b57ce8e7, ; 590: lib_Xamarin.AndroidX.Collection.dll.so => 223
	i64 u0x851d02edd334b044, ; 591: Xamarin.AndroidX.VectorDrawable => 277
	i64 u0x85c919db62150978, ; 592: Xamarin.AndroidX.Transition.dll => 276
	i64 u0x8662aaeb94fef37f, ; 593: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86669de6e12d8627, ; 594: lib_PropertyChanged.dll.so => 193
	i64 u0x86a909228dc7657b, ; 595: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 379
	i64 u0x86b3e00c36b84509, ; 596: Microsoft.Extensions.Configuration.dll => 177
	i64 u0x86b62cb077ec4fd7, ; 597: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 598: Xamarin.AndroidX.Annotation.Experimental => 215
	i64 u0x872a5b14c18d328c, ; 599: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 600: Xamarin.Android.Glide.Annotations.dll => 209
	i64 u0x875eda9284a9bde7, ; 601: he/Humanizer.resources => 312
	i64 u0x87c69b87d9283884, ; 602: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 603: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 604: Microsoft.Maui.Essentials => 189
	i64 u0x88926583efe7ee86, ; 605: Xamarin.AndroidX.Activity.Ktx.dll => 213
	i64 u0x88ba6bc4f7762b03, ; 606: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 607: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 295
	i64 u0x88bf039f08c94105, ; 608: lib-el-Humanizer.resources.dll.so => 306
	i64 u0x88dd9f23027521db, ; 609: lib-es-Humanizer.resources.dll.so => 307
	i64 u0x891fbccff7e313fb, ; 610: lib-lv-Humanizer.resources.dll.so => 322
	i64 u0x8930322c7bd8f768, ; 611: netstandard => 168
	i64 u0x894dbdd1ac38f4e1, ; 612: Plainer.Maui => 192
	i64 u0x897a606c9e39c75f, ; 613: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 614: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 615: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a0f45cf2ceafa32, ; 616: uz-Cyrl-UZ/Humanizer.resources => 340
	i64 u0x8a19e3dc71b34b2c, ; 617: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8ac8d025b93e29e9, ; 618: Syncfusion.Licensing => 202
	i64 u0x8ad229ea26432ee2, ; 619: Xamarin.AndroidX.Loader => 259
	i64 u0x8b4ff5d0fdd5faa1, ; 620: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 621: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 622: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 623: lib-he-Microsoft.Maui.Controls.resources.dll.so => 355
	i64 u0x8c51739a8c4a14d8, ; 624: sl/Humanizer.resources => 333
	i64 u0x8cb8f612b633affb, ; 625: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 270
	i64 u0x8cdfdb4ce85fb925, ; 626: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 627: System.IO.Compression.FileSystem => 44
	i64 u0x8cebe6d92a129684, ; 628: lib-ru-Humanizer.resources.dll.so => 331
	i64 u0x8d0f420977c2c1c7, ; 629: Xamarin.AndroidX.CursorAdapter.dll => 232
	i64 u0x8d2551476f2e2ef7, ; 630: lib_UraniumUI.Material.dll.so => 207
	i64 u0x8d52f7ea2796c531, ; 631: Xamarin.AndroidX.Emoji2.dll => 238
	i64 u0x8d7b8ab4b3310ead, ; 632: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 633: System.Collections.Concurrent => 8
	i64 u0x8de6ffe29a3cce5c, ; 634: lib-ko-KR-Humanizer.resources.dll.so => 320
	i64 u0x8df2d0ca3f762aaf, ; 635: ko-KR/Humanizer.resources => 320
	i64 u0x8e3ca981f87f2abc, ; 636: ja/Humanizer.resources => 319
	i64 u0x8ebba9258a550f92, ; 637: lib_Plainer.Maui.dll.so => 192
	i64 u0x8ec6e06a61c1baeb, ; 638: lib_Newtonsoft.Json.dll.so => 191
	i64 u0x8ed807bfe9858dfc, ; 639: Xamarin.AndroidX.Navigation.Common => 261
	i64 u0x8ee08b8194a30f48, ; 640: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 356
	i64 u0x8ef7601039857a44, ; 641: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 369
	i64 u0x8ef9414937d93a0a, ; 642: SQLitePCLRaw.core.dll => 198
	i64 u0x8f32c6f611f6ffab, ; 643: pt/Microsoft.Maui.Controls.resources.dll => 368
	i64 u0x8f44b45eb046bbd1, ; 644: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 645: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 367
	i64 u0x8fbf5b0114c6dcef, ; 646: System.Globalization.dll => 42
	i64 u0x8fc821dcbfefa7ee, ; 647: UraniumUI.Blurs => 206
	i64 u0x8fcc8c2a81f3d9e7, ; 648: Xamarin.KotlinX.Serialization.Core => 296
	i64 u0x8fd27d934d7b3a55, ; 649: SQLitePCLRaw.core => 198
	i64 u0x90263f8448b8f572, ; 650: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x902d31dbd7d7d78e, ; 651: InputKit.Maui => 176
	i64 u0x903101b46fb73a04, ; 652: _Microsoft.Android.Resource.Designer => 384
	i64 u0x90393bd4865292f3, ; 653: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 654: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 655: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 256
	i64 u0x907b636704ad79ef, ; 656: lib_Microsoft.Maui.Controls.Xaml.dll.so => 187
	i64 u0x90e9efbfd68593e0, ; 657: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 247
	i64 u0x91418dc638b29e68, ; 658: lib_Xamarin.AndroidX.CustomView.dll.so => 233
	i64 u0x9157bd523cd7ed36, ; 659: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 660: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 661: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 662: ca/Microsoft.Maui.Controls.resources.dll => 347
	i64 u0x92054e486c0c7ea7, ; 663: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 664: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 665: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 220
	i64 u0x92dfc2bfc6c6a888, ; 666: Xamarin.AndroidX.Lifecycle.LiveData => 247
	i64 u0x933da2c779423d68, ; 667: Xamarin.Android.Glide.Annotations => 209
	i64 u0x9388aad9b7ae40ce, ; 668: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 245
	i64 u0x93cfa73ab28d6e35, ; 669: ms/Microsoft.Maui.Controls.resources => 363
	i64 u0x941c00d21e5c0679, ; 670: lib_Xamarin.AndroidX.Transition.dll.so => 276
	i64 u0x944077d8ca3c6580, ; 671: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 672: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 673: lib_Xamarin.AndroidX.Interpolator.dll.so => 243
	i64 u0x95dea088fb5d2991, ; 674: lib_SimpleInventory.dll.so => 0
	i64 u0x967fc325e09bfa8c, ; 675: es/Microsoft.Maui.Controls.resources => 352
	i64 u0x9686161486d34b81, ; 676: lib_Xamarin.AndroidX.ExifInterface.dll.so => 240
	i64 u0x970d4993e6adfbd2, ; 677: hu/Humanizer.resources => 314
	i64 u0x9725c7a081ffb294, ; 678: lib-nb-NO-Humanizer.resources.dll.so => 326
	i64 u0x9732d8dbddea3d9a, ; 679: id/Microsoft.Maui.Controls.resources => 359
	i64 u0x978be80e5210d31b, ; 680: Microsoft.Maui.Graphics.dll => 190
	i64 u0x97b8c771ea3e4220, ; 681: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 682: System.Collections.Concurrent.dll => 8
	i64 u0x97f22496b18bf477, ; 683: el/Humanizer.resources => 306
	i64 u0x984184e3c70d4419, ; 684: GoogleGson => 174
	i64 u0x9843944103683dd3, ; 685: Xamarin.AndroidX.Core.Core.Ktx => 231
	i64 u0x98d720cc4597562c, ; 686: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 687: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 688: System.Threading.Overlapped.dll => 141
	i64 u0x99a00ca5270c6878, ; 689: Xamarin.AndroidX.Navigation.Runtime => 263
	i64 u0x99cdc6d1f2d3a72f, ; 690: ko/Microsoft.Maui.Controls.resources.dll => 362
	i64 u0x9a01b1da98b6ee10, ; 691: Xamarin.AndroidX.Lifecycle.Runtime.dll => 251
	i64 u0x9a5ccc274fd6e6ee, ; 692: Jsr305Binding.dll => 285
	i64 u0x9a8221a0d4ea3d04, ; 693: bn-BD/Humanizer.resources.dll => 302
	i64 u0x9ae6940b11c02876, ; 694: lib_Xamarin.AndroidX.Window.dll.so => 282
	i64 u0x9afffdd16c6fdb95, ; 695: cs/Humanizer.resources.dll => 303
	i64 u0x9b0290a7240dcbfe, ; 696: lib-da-Humanizer.resources.dll.so => 304
	i64 u0x9b211a749105beac, ; 697: System.Transactions.Local => 150
	i64 u0x9b36e4bfc44c9e95, ; 698: da/Humanizer.resources.dll => 304
	i64 u0x9b8734714671022d, ; 699: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 700: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 294
	i64 u0x9bd8cc74558ad4c7, ; 701: Xamarin.KotlinX.AtomicFU => 291
	i64 u0x9c244ac7cda32d26, ; 702: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 703: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 293
	i64 u0x9c8f6872beab6408, ; 704: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 705: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 706: Xamarin.AndroidX.CustomView.PoolingContainer => 234
	i64 u0x9d5dbcf5a48583fe, ; 707: lib_Xamarin.AndroidX.Activity.dll.so => 212
	i64 u0x9d5e87195463c147, ; 708: lib-bg-Humanizer.resources.dll.so => 301
	i64 u0x9d74dee1a7725f34, ; 709: Microsoft.Extensions.Configuration.Abstractions.dll => 178
	i64 u0x9da48bf5f6df6c80, ; 710: UraniumUI.dll => 205
	i64 u0x9e4534b6adaf6e84, ; 711: nl/Microsoft.Maui.Controls.resources => 365
	i64 u0x9e4b95dec42769f7, ; 712: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 713: Xamarin.AndroidX.Navigation.Common.dll => 261
	i64 u0x9ef542cf1f78c506, ; 714: Xamarin.AndroidX.Lifecycle.LiveData.Core => 248
	i64 u0xa00832eb975f56a8, ; 715: lib_System.Net.dll.so => 82
	i64 u0xa034a3cdec610169, ; 716: lib-it-Humanizer.resources.dll.so => 318
	i64 u0xa037308e948c78c4, ; 717: uk/Humanizer.resources => 339
	i64 u0xa0ad78236b7b267f, ; 718: Xamarin.AndroidX.Window => 282
	i64 u0xa0d8259f4cc284ec, ; 719: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 720: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 286
	i64 u0xa0ff9b3e34d92f11, ; 721: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12e559aabec7f5a, ; 722: pl/Humanizer.resources => 328
	i64 u0xa12fbfb4da97d9f3, ; 723: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 724: Xamarin.Google.Android.Material => 284
	i64 u0xa1b9d7c27f47219f, ; 725: Xamarin.AndroidX.Navigation.UI.dll => 264
	i64 u0xa2572680829d2c7c, ; 726: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 727: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 728: lib_mscorlib.dll.so => 167
	i64 u0xa34215b3aa6e5be2, ; 729: nl/Humanizer.resources => 327
	i64 u0xa395572e7da6c99d, ; 730: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 731: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 732: Xamarin.AndroidX.VectorDrawable.Animated => 278
	i64 u0xa46aa1eaa214539b, ; 733: ko/Microsoft.Maui.Controls.resources => 362
	i64 u0xa4edc8f2ceae241a, ; 734: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 735: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 736: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 737: Xamarin.AndroidX.DocumentFile => 235
	i64 u0xa5b7152421ed6d98, ; 738: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 739: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 740: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 741: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 742: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 743: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 744: lib_Jsr305Binding.dll.so => 285
	i64 u0xa66cbee0130865f7, ; 745: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 746: Xamarin.AndroidX.SavedState.dll => 269
	i64 u0xa684b098dd27b296, ; 747: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 271
	i64 u0xa68a420042bb9b1f, ; 748: Xamarin.AndroidX.DrawerLayout.dll => 236
	i64 u0xa6d26156d1cacc7c, ; 749: Xamarin.Android.Glide.dll => 208
	i64 u0xa75386b5cb9595aa, ; 750: Xamarin.AndroidX.Lifecycle.Runtime.Android => 252
	i64 u0xa763fbb98df8d9fb, ; 751: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 752: Xamarin.AndroidX.Lifecycle.Common.Jvm => 246
	i64 u0xa7b4c725918a255b, ; 753: lib-hy-Humanizer.resources.dll.so => 315
	i64 u0xa7c31b56b4dc7b33, ; 754: hu/Microsoft.Maui.Controls.resources => 358
	i64 u0xa7eab29ed44b4e7a, ; 755: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 756: Microsoft.VisualBasic.Core => 2
	i64 u0xa859a95830f367ff, ; 757: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 257
	i64 u0xa8b52f21e0dbe690, ; 758: System.Runtime.Serialization.dll => 116
	i64 u0xa8c84ce526c2b4bd, ; 759: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 383
	i64 u0xa8ee4ed7de2efaee, ; 760: Xamarin.AndroidX.Annotation.dll => 214
	i64 u0xa95590e7c57438a4, ; 761: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 762: Microsoft.Extensions.Logging.Abstractions => 182
	i64 u0xaa443ac34067eeef, ; 763: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 764: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 765: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 766: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 180
	i64 u0xaaf84bb3f052a265, ; 767: el/Microsoft.Maui.Controls.resources => 351
	i64 u0xab9af77b5b67a0b8, ; 768: Xamarin.AndroidX.ConstraintLayout.Core => 228
	i64 u0xab9c1b2687d86b0b, ; 769: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac101decd8e1d4a0, ; 770: az/Humanizer.resources.dll => 300
	i64 u0xac2af3fa195a15ce, ; 771: System.Runtime.Numerics => 111
	i64 u0xac2ebf34b61de589, ; 772: pt/Humanizer.resources => 329
	i64 u0xac5376a2a538dc10, ; 773: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 248
	i64 u0xac5acae88f60357e, ; 774: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 775: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 776: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 777: ro/Microsoft.Maui.Controls.resources => 369
	i64 u0xacdd9e4180d56dda, ; 778: Xamarin.AndroidX.Concurrent.Futures => 226
	i64 u0xacf42eea7ef9cd12, ; 779: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 780: lib_Xamarin.AndroidX.DocumentFile.dll.so => 235
	i64 u0xad89c07347f1bad6, ; 781: nl/Microsoft.Maui.Controls.resources.dll => 365
	i64 u0xadbb53caf78a79d2, ; 782: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 783: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 784: Xamarin.AndroidX.Collection.Ktx => 225
	i64 u0xadd8eda2edf396ad, ; 785: Xamarin.Android.Glide.GifDecoder => 211
	i64 u0xadf4cf30debbeb9a, ; 786: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 787: System.Net.Security => 74
	i64 u0xae0342c062939282, ; 788: ar/Humanizer.resources.dll => 299
	i64 u0xae0aaa94fdcfce0f, ; 789: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 790: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 791: System.ObjectModel.dll => 85
	i64 u0xae7ea18c61eef394, ; 792: SQLite-net => 194
	i64 u0xaea1a09ca4e8e7b8, ; 793: lib-vi-Humanizer.resources.dll.so => 342
	i64 u0xaec7c0c7e2ed4575, ; 794: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 292
	i64 u0xaf732d0b2193b8f5, ; 795: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xafdb94dbccd9d11c, ; 796: Xamarin.AndroidX.Lifecycle.LiveData.dll => 247
	i64 u0xafe29f45095518e7, ; 797: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 258
	i64 u0xb03ae931fb25607e, ; 798: Xamarin.AndroidX.ConstraintLayout => 227
	i64 u0xb05cc42cd94c6d9d, ; 799: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 372
	i64 u0xb0ac21bec8f428c5, ; 800: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 254
	i64 u0xb0bb43dc52ea59f9, ; 801: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1b8d35ba772b5ae, ; 802: fi-FI/Humanizer.resources.dll => 309
	i64 u0xb1dd05401aa8ee63, ; 803: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 804: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 805: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 806: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 807: da/Microsoft.Maui.Controls.resources => 349
	i64 u0xb2d3ad98fce223fd, ; 808: UraniumUI.Material => 207
	i64 u0xb3011a0a57f7ffb2, ; 809: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 381
	i64 u0xb3874072ee0ecf8c, ; 810: Xamarin.AndroidX.VectorDrawable.Animated.dll => 278
	i64 u0xb3f0a0fcda8d3ebc, ; 811: Xamarin.AndroidX.CardView => 222
	i64 u0xb3f832258cb83db4, ; 812: Syncfusion.Licensing.dll => 202
	i64 u0xb46be1aa6d4fff93, ; 813: hi/Microsoft.Maui.Controls.resources => 356
	i64 u0xb477491be13109d8, ; 814: ar/Microsoft.Maui.Controls.resources => 346
	i64 u0xb4bd7015ecee9d86, ; 815: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 816: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4e6c9a7a9ef95ce, ; 817: mt/Humanizer.resources => 324
	i64 u0xb4ff710863453fda, ; 818: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb551c2dd77b7b11c, ; 819: lib-fi-FI-Humanizer.resources.dll.so => 309
	i64 u0xb5c38bf497a4cfe2, ; 820: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 821: Microsoft.Extensions.Logging.Abstractions.dll => 182
	i64 u0xb5ea31d5244c6626, ; 822: System.Threading.ThreadPool.dll => 147
	i64 u0xb619ef8958d9f902, ; 823: bn-BD/Humanizer.resources => 302
	i64 u0xb7212c4683a94afe, ; 824: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 825: sv/Microsoft.Maui.Controls.resources => 372
	i64 u0xb81a2c6e0aee50fe, ; 826: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 827: Xamarin.AndroidX.Window.Extensions.Core.Core => 283
	i64 u0xb8c4435d4683a773, ; 828: sv/Humanizer.resources.dll => 336
	i64 u0xb8c60af47c08d4da, ; 829: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 830: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 831: Microsoft.CSharp.dll => 1
	i64 u0xb935bb79cd98b4e3, ; 832: nb/Humanizer.resources => 325
	i64 u0xb9b8001adf4ed7cc, ; 833: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 272
	i64 u0xb9f64d3b230def68, ; 834: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 368
	i64 u0xb9fc3c8a556e3691, ; 835: ja/Microsoft.Maui.Controls.resources => 361
	i64 u0xba4670aa94a2b3c6, ; 836: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 837: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 838: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 839: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 840: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 841: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 842: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc22a245dab70cb4, ; 843: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 201
	i64 u0xbc260cdba33291a3, ; 844: Xamarin.AndroidX.Arch.Core.Common.dll => 219
	i64 u0xbc352dc28700819c, ; 845: es/Humanizer.resources => 307
	i64 u0xbd0e2c0d55246576, ; 846: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 847: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 848: Xamarin.AndroidX.ViewPager2 => 281
	i64 u0xbd4f572d2bd0a789, ; 849: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 850: lib_Xamarin.AndroidX.Browser.dll.so => 221
	i64 u0xbd877b14d0b56392, ; 851: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe65a49036345cf4, ; 852: lib_System.Buffers.dll.so => 7
	i64 u0xbe91b18d88e7a0f4, ; 853: it/Humanizer.resources => 318
	i64 u0xbe9369eae454702a, ; 854: cs/Humanizer.resources => 303
	i64 u0xbee38d4a88835966, ; 855: Xamarin.AndroidX.AppCompat.AppCompatResources => 218
	i64 u0xbef9919db45b4ca7, ; 856: System.IO.Pipes.AccessControl => 55
	i64 u0xbefded20264dcc84, ; 857: lib_Humanizer.dll.so => 175
	i64 u0xbf0fa68611139208, ; 858: lib_Xamarin.AndroidX.Annotation.dll.so => 214
	i64 u0xbfc1e1fb3095f2b3, ; 859: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc040a4ab55817f58, ; 860: ar/Microsoft.Maui.Controls.resources.dll => 346
	i64 u0xc07cadab29efeba0, ; 861: Xamarin.AndroidX.Core.Core.Ktx.dll => 231
	i64 u0xc0b40cfbf9b37b5b, ; 862: uz-Cyrl-UZ/Humanizer.resources.dll => 340
	i64 u0xc0d928351ab5ca77, ; 863: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 864: System.Runtime.Intrinsics => 109
	i64 u0xc1035f7d82672b48, ; 865: hy/Humanizer.resources => 315
	i64 u0xc111030af54d7191, ; 866: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 867: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 868: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 869: Xamarin.AndroidX.Activity.dll => 212
	i64 u0xc2445f292e10309e, ; 870: SQLitePCLRaw.nativelibrary.dll => 197
	i64 u0xc26c064effb1dea9, ; 871: System.Buffers.dll => 7
	i64 u0xc28c50f32f81cc73, ; 872: ja/Microsoft.Maui.Controls.resources.dll => 361
	i64 u0xc2902f6cf5452577, ; 873: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 874: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 875: Xamarin.AndroidX.ViewPager2.dll => 281
	i64 u0xc30b52815b58ac2c, ; 876: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 877: System.Threading.Overlapped => 141
	i64 u0xc396b285e59e5493, ; 878: GoogleGson.dll => 174
	i64 u0xc3ac69a1b1ba2f32, ; 879: lib_SQLiteNetExtensions.dll.so => 195
	i64 u0xc3c86c1e5e12f03d, ; 880: WindowsBase => 166
	i64 u0xc421b61fd853169d, ; 881: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 882: System.Runtime.Serialization.Json => 113
	i64 u0xc4d3858ed4d08512, ; 883: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 258
	i64 u0xc50fded0ded1418c, ; 884: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 885: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 886: Xamarin.AndroidX.Navigation.Fragment => 262
	i64 u0xc5325b2fcb37446f, ; 887: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 888: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 210
	i64 u0xc5a0f4b95a699af7, ; 889: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 890: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 891: Xamarin.AndroidX.Tracing.Tracing => 275
	i64 u0xc6706bc8aa7fe265, ; 892: Xamarin.AndroidX.Annotation.Jvm => 216
	i64 u0xc6b00ebd9df14897, ; 893: UraniumUI.Blurs.dll => 206
	i64 u0xc7c01e7d7c93a110, ; 894: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 895: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 896: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 897: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8722f31f00b3e29, ; 898: lib-hr-Humanizer.resources.dll.so => 313
	i64 u0xc8ac7c6bf1c2ec51, ; 899: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 900: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca0c504ea10116f2, ; 901: hu/Humanizer.resources.dll => 314
	i64 u0xca3a723e7342c5b6, ; 902: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 374
	i64 u0xca5801070d9fccfb, ; 903: System.Text.Encoding => 136
	i64 u0xcab3493c70141c2d, ; 904: pl/Microsoft.Maui.Controls.resources => 366
	i64 u0xcacfddc9f7c6de76, ; 905: ro/Microsoft.Maui.Controls.resources.dll => 369
	i64 u0xcadbc92899a777f0, ; 906: Xamarin.AndroidX.Startup.StartupRuntime => 273
	i64 u0xcba1cb79f45292b5, ; 907: Xamarin.Android.Glide.GifDecoder.dll => 211
	i64 u0xcbabddbb58dadcf9, ; 908: nl/Humanizer.resources.dll => 327
	i64 u0xcbb5f80c7293e696, ; 909: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 910: lib__Microsoft.Android.Resource.Designer.dll.so => 384
	i64 u0xcc15da1e07bbd994, ; 911: Xamarin.AndroidX.SlidingPaneLayout => 272
	i64 u0xcc2876b32ef2794c, ; 912: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 913: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 295
	i64 u0xcc76886e09b88260, ; 914: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 297
	i64 u0xcc9fa2923aa1c9ef, ; 915: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 916: zh-Hans/Microsoft.Maui.Controls.resources.dll => 378
	i64 u0xcd10a42808629144, ; 917: System.Net.Requests => 73
	i64 u0xcd9392748aaf9974, ; 918: nb-NO/Humanizer.resources => 326
	i64 u0xcdca1b920e9f53ba, ; 919: Xamarin.AndroidX.Interpolator => 243
	i64 u0xcdd0c48b6937b21c, ; 920: Xamarin.AndroidX.SwipeRefreshLayout => 274
	i64 u0xcddafe9f2aa0cedb, ; 921: lib-ar-Humanizer.resources.dll.so => 299
	i64 u0xcde1fa22dc303670, ; 922: Microsoft.VisualStudio.DesignTools.XamlTapContract => 383
	i64 u0xcf23d8093f3ceadf, ; 923: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 924: System.Net.Mail.dll => 67
	i64 u0xcf745d91501d3427, ; 925: lib-sv-Humanizer.resources.dll.so => 336
	i64 u0xcf8fc898f98b0d34, ; 926: System.Private.Xml.Linq => 88
	i64 u0xcfecccc23e26fe13, ; 927: lib-de-Humanizer.resources.dll.so => 305
	i64 u0xd04b5f59ed596e31, ; 928: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 929: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0de8a113e976700, ; 930: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 931: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 932: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 246
	i64 u0xd12beacdfc14f696, ; 933: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 934: System.Net.Quic.dll => 72
	i64 u0xd223e2a2406355d2, ; 935: lib-uz-Latn-UZ-Humanizer.resources.dll.so => 341
	i64 u0xd2bff5bd6e7064ac, ; 936: PropertyChanged => 193
	i64 u0xd3144156a3727ebe, ; 937: Xamarin.Google.Guava.ListenableFuture => 288
	i64 u0xd333d0af9e423810, ; 938: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 939: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 940: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 218
	i64 u0xd3651b6fc3125825, ; 941: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 942: Microsoft.Extensions.Logging.dll => 181
	i64 u0xd3801faafafb7698, ; 943: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 944: it/Microsoft.Maui.Controls.resources => 360
	i64 u0xd3edcc1f25459a50, ; 945: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 946: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 180
	i64 u0xd46f4cb7c267b7b0, ; 947: ro/Humanizer.resources.dll => 330
	i64 u0xd4fa0abb79079ea9, ; 948: System.Security.Principal.dll => 129
	i64 u0xd515306c15565179, ; 949: lib-he-Humanizer.resources.dll.so => 312
	i64 u0xd5507e11a2b2839f, ; 950: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 258
	i64 u0xd5d04bef8478ea19, ; 951: Xamarin.AndroidX.Tracing.Tracing.dll => 275
	i64 u0xd60815f26a12e140, ; 952: Microsoft.Extensions.Logging.Debug.dll => 183
	i64 u0xd65786d27a4ad960, ; 953: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 380
	i64 u0xd6694f8359737e4e, ; 954: Xamarin.AndroidX.SavedState => 269
	i64 u0xd6949e129339eae5, ; 955: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 231
	i64 u0xd6d21782156bc35b, ; 956: Xamarin.AndroidX.SwipeRefreshLayout.dll => 274
	i64 u0xd6de019f6af72435, ; 957: Xamarin.AndroidX.ConstraintLayout.Core.dll => 228
	i64 u0xd70956d1e6deefb9, ; 958: Jsr305Binding => 285
	i64 u0xd72329819cbbbc44, ; 959: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 178
	i64 u0xd72c760af136e863, ; 960: System.Xml.XmlSerializer.dll => 163
	i64 u0xd74c84609fc0a5d9, ; 961: lib-sr-Humanizer.resources.dll.so => 334
	i64 u0xd753f071e44c2a03, ; 962: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 963: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 182
	i64 u0xd7f0088bc5ad71f2, ; 964: Xamarin.AndroidX.VersionedParcelable => 279
	i64 u0xd8fb25e28ae30a12, ; 965: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 266
	i64 u0xd907f789f72ac763, ; 966: de/Humanizer.resources.dll => 305
	i64 u0xd962031728e4db17, ; 967: hy/Humanizer.resources.dll => 315
	i64 u0xda1dfa4c534a9251, ; 968: Microsoft.Extensions.DependencyInjection => 179
	i64 u0xda25bba549b6c31e, ; 969: SQLiteNetExtensions.dll => 195
	i64 u0xdad05a11827959a3, ; 970: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 971: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 972: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 376
	i64 u0xdb58816721c02a59, ; 973: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbeda89f832aa805, ; 974: vi/Microsoft.Maui.Controls.resources.dll => 376
	i64 u0xdbf2a779fbc3ac31, ; 975: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 976: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 977: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 978: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 979: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 980: Microsoft.Extensions.Logging => 181
	i64 u0xdd2b722d78ef5f43, ; 981: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 982: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 983: System.Numerics.dll => 84
	i64 u0xdda77ddc4617cf2e, ; 984: lib-sk-Humanizer.resources.dll.so => 332
	i64 u0xdddcdd701e911af1, ; 985: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 244
	i64 u0xdde30e6b77aa6f6c, ; 986: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 378
	i64 u0xde110ae80fa7c2e2, ; 987: System.Xml.XDocument.dll => 159
	i64 u0xde1bb3c60f0862a2, ; 988: lib-pt-Humanizer.resources.dll.so => 329
	i64 u0xde4726fcdf63a198, ; 989: Xamarin.AndroidX.Transition => 276
	i64 u0xde572c2b2fb32f93, ; 990: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 991: hr/Microsoft.Maui.Controls.resources.dll => 357
	i64 u0xded389464b7fc84a, ; 992: nb-NO/Humanizer.resources.dll => 326
	i64 u0xdee075f3477ef6be, ; 993: Xamarin.AndroidX.ExifInterface.dll => 240
	i64 u0xdf4b773de8fb1540, ; 994: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 995: System.Net.Ping => 70
	i64 u0xe0142572c095a480, ; 996: Xamarin.AndroidX.AppCompat.dll => 217
	i64 u0xe021eaa401792a05, ; 997: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 998: Xamarin.AndroidX.CoordinatorLayout.dll => 229
	i64 u0xe0496b9d65ef5474, ; 999: Xamarin.Android.Glide.DiskLruCache.dll => 210
	i64 u0xe10b760bb1462e7a, ; 1000: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe1566bbdb759c5af, ; 1001: Microsoft.Maui.Controls.HotReload.Forms.dll => 380
	i64 u0xe177bf36aade6af6, ; 1002: ms-MY/Humanizer.resources.dll => 323
	i64 u0xe192a588d4410686, ; 1003: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1004: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 1005: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 1006: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 1007: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1008: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 1009: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 1010: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2354f5f9efee231, ; 1011: zh-CN/Humanizer.resources => 343
	i64 u0xe2420585aeceb728, ; 1012: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 1013: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 253
	i64 u0xe29b73bc11392966, ; 1014: lib-id-Microsoft.Maui.Controls.resources.dll.so => 359
	i64 u0xe2ad448dee50fbdf, ; 1015: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 1016: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1017: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 1018: Mono.Android.Export.dll => 170
	i64 u0xe33ced0365daeb59, ; 1019: ro/Humanizer.resources => 330
	i64 u0xe3811d68d4fe8463, ; 1020: pt-BR/Microsoft.Maui.Controls.resources.dll => 367
	i64 u0xe3a586956771a0ed, ; 1021: lib_SQLite-net.dll.so => 194
	i64 u0xe3b7cbae5ad66c75, ; 1022: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe40580bf83170900, ; 1023: lib-af-Humanizer.resources.dll.so => 298
	i64 u0xe482ec7113d7e360, ; 1024: Syncfusion.Maui.Expander => 204
	i64 u0xe494f7ced4ecd10a, ; 1025: hu/Microsoft.Maui.Controls.resources.dll => 358
	i64 u0xe4a9b1e40d1e8917, ; 1026: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 353
	i64 u0xe4f74a0b5bf9703f, ; 1027: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 1028: lib_Mono.Android.dll.so => 172
	i64 u0xe54ee781a96d5fbe, ; 1029: zh-Hans/Humanizer.resources.dll => 344
	i64 u0xe55703b9ce5c038a, ; 1030: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1031: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 1032: System.Xml.dll => 164
	i64 u0xe6d3ee4d3b4a1335, ; 1033: lib-fr-BE-Humanizer.resources.dll.so => 311
	i64 u0xe75fd0103d0d1a0b, ; 1034: uz-Latn-UZ/Humanizer.resources => 341
	i64 u0xe7bea09c4900a191, ; 1035: Xamarin.AndroidX.VectorDrawable.dll => 277
	i64 u0xe7e03cc18dcdeb49, ; 1036: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1037: lib_System.Configuration.dll.so => 19
	i64 u0xe80a0d85c80372cf, ; 1038: lib_UraniumUI.Blurs.dll.so => 206
	i64 u0xe86b0df4ba9e5db8, ; 1039: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 252
	i64 u0xe896622fe0902957, ; 1040: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 1041: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1042: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 1043: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 283
	i64 u0xe97df719216744ae, ; 1044: da/Humanizer.resources => 304
	i64 u0xe98163eb702ae5c5, ; 1045: Xamarin.AndroidX.Arch.Core.Runtime => 220
	i64 u0xe994f23ba4c143e5, ; 1046: Xamarin.KotlinX.Coroutines.Android => 293
	i64 u0xe9b9c8c0458fd92a, ; 1047: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 1048: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 273
	i64 u0xe9eebff4e06f7292, ; 1049: zh-Hant/Humanizer.resources => 345
	i64 u0xea43a9b3e9a3096d, ; 1050: lib-ja-Humanizer.resources.dll.so => 319
	i64 u0xea5a4efc2ad81d1b, ; 1051: Xamarin.Google.ErrorProne.Annotations => 287
	i64 u0xeae68e81c894c13d, ; 1052: UraniumUI.Material.dll => 207
	i64 u0xeb14e91e60280721, ; 1053: ar/Humanizer.resources => 299
	i64 u0xeb2313fe9d65b785, ; 1054: Xamarin.AndroidX.ConstraintLayout.dll => 227
	i64 u0xeb6e275e78cb8d42, ; 1055: Xamarin.AndroidX.LocalBroadcastManager.dll => 260
	i64 u0xeb921af9fd40b6c1, ; 1056: ko-KR/Humanizer.resources.dll => 320
	i64 u0xec956d6217f98e0e, ; 1057: SimpleInventory.dll => 0
	i64 u0xeca593e6696030cc, ; 1058: SQLitePCLRaw.provider.dynamic_cdecl => 200
	i64 u0xed19c616b3fcb7eb, ; 1059: Xamarin.AndroidX.VersionedParcelable.dll => 279
	i64 u0xed60c6fa891c051a, ; 1060: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 382
	i64 u0xedc4817167106c23, ; 1061: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 1062: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 1063: Xamarin.AndroidX.Navigation.Runtime.dll => 263
	i64 u0xee0a89a66166559e, ; 1064: az/Humanizer.resources => 300
	i64 u0xee81f5b3f1c4f83b, ; 1065: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 1066: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 224
	i64 u0xeefc635595ef57f0, ; 1067: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 1068: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 1069: Xamarin.AndroidX.Print => 265
	i64 u0xef602c523fe2e87a, ; 1070: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 288
	i64 u0xef72742e1bcca27a, ; 1071: Microsoft.Maui.Essentials.dll => 189
	i64 u0xefd1e0c4e5c9b371, ; 1072: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 1073: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1074: Xamarin.AndroidX.Activity => 212
	i64 u0xf00c29406ea45e19, ; 1075: es/Microsoft.Maui.Controls.resources.dll => 352
	i64 u0xf09e47b6ae914f6e, ; 1076: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 1077: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1078: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 1079: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 1080: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 251
	i64 u0xf11b621fc87b983f, ; 1081: Microsoft.Maui.Controls.Xaml.dll => 187
	i64 u0xf161f4f3c3b7e62c, ; 1082: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1083: System.ValueTuple => 152
	i64 u0xf17642d65ad6bfb3, ; 1084: lib_SQLitePCLRaw.nativelibrary.dll.so => 197
	i64 u0xf1c4b4005493d871, ; 1085: System.Formats.Asn1.dll => 38
	i64 u0xf238bd79489d3a96, ; 1086: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 365
	i64 u0xf2feea356ba760af, ; 1087: Xamarin.AndroidX.Arch.Core.Runtime.dll => 220
	i64 u0xf300e085f8acd238, ; 1088: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 1089: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf367963a87da13fa, ; 1090: lib-zh-Hans-Humanizer.resources.dll.so => 344
	i64 u0xf37221fda4ef8830, ; 1091: lib_Xamarin.Google.Android.Material.dll.so => 284
	i64 u0xf37ed3f70dee820d, ; 1092: ru/Humanizer.resources => 331
	i64 u0xf3ad9b8fb3eefd12, ; 1093: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1094: System => 165
	i64 u0xf408654b2a135055, ; 1095: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 1096: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 1097: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4c1dd70a5496a17, ; 1098: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1099: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 1100: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 234
	i64 u0xf518f63ead11fcd1, ; 1101: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 1102: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 1103: Xamarin.AndroidX.CoordinatorLayout => 229
	i64 u0xf6742cbf457c450b, ; 1104: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 252
	i64 u0xf70c0a7bf8ccf5af, ; 1105: System.Web => 154
	i64 u0xf77b20923f07c667, ; 1106: de/Microsoft.Maui.Controls.resources.dll => 350
	i64 u0xf7af43fbfdfbbecc, ; 1107: PropertyChanged.dll => 193
	i64 u0xf7e2cac4c45067b3, ; 1108: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 1109: zh-HK/Microsoft.Maui.Controls.resources.dll => 377
	i64 u0xf7fa0bf77fe677cc, ; 1110: Newtonsoft.Json.dll => 191
	i64 u0xf84773b5c81e3cef, ; 1111: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 375
	i64 u0xf8aac5ea82de1348, ; 1112: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 1113: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 1114: lib_Xamarin.AndroidX.RecyclerView.dll.so => 267
	i64 u0xf915dc29808193a1, ; 1115: System.Web.HttpUtility.dll => 153
	i64 u0xf96c777a2a0686f4, ; 1116: hi/Microsoft.Maui.Controls.resources.dll => 356
	i64 u0xf9be54c8bcf8ff3b, ; 1117: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 1118: Microsoft.Extensions.Options => 184
	i64 u0xfa0e82300e67f913, ; 1119: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1120: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1121: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 1122: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 346
	i64 u0xfa645d91e9fc4cba, ; 1123: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 1124: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfaee584671def13d, ; 1125: Humanizer => 175
	i64 u0xfb022853d73b7fa5, ; 1126: lib_SQLitePCLRaw.batteries_v2.dll.so => 196
	i64 u0xfb06dd2338e6f7c4, ; 1127: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 1128: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1129: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 1130: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 1131: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 1132: Xamarin.AndroidX.LocalBroadcastManager => 260
	i64 u0xfc6b7527cc280b3f, ; 1133: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc6fd267d547634c, ; 1134: lib-fa-Humanizer.resources.dll.so => 308
	i64 u0xfc719aec26adf9d9, ; 1135: Xamarin.AndroidX.Navigation.Fragment.dll => 262
	i64 u0xfc82690c2fe2735c, ; 1136: Xamarin.AndroidX.Lifecycle.Process.dll => 250
	i64 u0xfc93fc307d279893, ; 1137: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1138: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1139: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 236
	i64 u0xfd49b3c1a76e2748, ; 1140: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 1141: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 1142: Xamarin.AndroidX.Fragment => 241
	i64 u0xfd8dd91a2c26bd5d, ; 1143: Xamarin.AndroidX.Lifecycle.Runtime => 251
	i64 u0xfda36abccf05cf5c, ; 1144: System.Net.WebSockets.Client => 80
	i64 u0xfdbcaecad275e32a, ; 1145: lib-is-Humanizer.resources.dll.so => 317
	i64 u0xfddbe9695626a7f5, ; 1146: Xamarin.AndroidX.Lifecycle.Common => 245
	i64 u0xfe175c22c493ad62, ; 1147: fr/Humanizer.resources => 310
	i64 u0xfeae9952cf03b8cb, ; 1148: tr/Microsoft.Maui.Controls.resources => 374
	i64 u0xfebe1950717515f9, ; 1149: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 249
	i64 u0xff17a266d978334f, ; 1150: lib-zh-Hant-Humanizer.resources.dll.so => 345
	i64 u0xff270a55858bac8d, ; 1151: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 1152: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73, ; 1153: System.ValueTuple.dll => 152
	i64 u0xffe505118fd5742f ; 1154: lib-bn-BD-Humanizer.resources.dll.so => 302
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1155 x i32] [
	i32 42, i32 294, i32 274, i32 329, i32 13, i32 263, i32 105, i32 171,
	i32 48, i32 217, i32 7, i32 201, i32 86, i32 370, i32 348, i32 376,
	i32 237, i32 71, i32 343, i32 267, i32 12, i32 188, i32 102, i32 377,
	i32 156, i32 19, i32 242, i32 224, i32 161, i32 239, i32 277, i32 167,
	i32 370, i32 10, i32 183, i32 345, i32 327, i32 278, i32 96, i32 234,
	i32 236, i32 13, i32 184, i32 10, i32 127, i32 95, i32 140, i32 303,
	i32 39, i32 371, i32 297, i32 280, i32 331, i32 367, i32 172, i32 211,
	i32 5, i32 189, i32 67, i32 271, i32 130, i32 270, i32 238, i32 68,
	i32 225, i32 66, i32 57, i32 233, i32 52, i32 333, i32 203, i32 43,
	i32 310, i32 125, i32 67, i32 81, i32 253, i32 382, i32 158, i32 92,
	i32 99, i32 267, i32 141, i32 340, i32 321, i32 151, i32 221, i32 354,
	i32 162, i32 169, i32 355, i32 307, i32 180, i32 81, i32 382, i32 225,
	i32 4, i32 5, i32 51, i32 101, i32 203, i32 56, i32 120, i32 98,
	i32 168, i32 118, i32 294, i32 21, i32 301, i32 358, i32 137, i32 97,
	i32 297, i32 316, i32 77, i32 364, i32 265, i32 273, i32 119, i32 205,
	i32 8, i32 165, i32 373, i32 70, i32 325, i32 210, i32 254, i32 268,
	i32 171, i32 145, i32 40, i32 271, i32 47, i32 30, i32 264, i32 362,
	i32 144, i32 184, i32 163, i32 28, i32 342, i32 84, i32 275, i32 328,
	i32 77, i32 43, i32 29, i32 42, i32 103, i32 117, i32 334, i32 215,
	i32 45, i32 91, i32 373, i32 56, i32 148, i32 381, i32 146, i32 100,
	i32 49, i32 20, i32 230, i32 114, i32 208, i32 354, i32 286, i32 196,
	i32 308, i32 290, i32 185, i32 94, i32 58, i32 359, i32 357, i32 81,
	i32 286, i32 169, i32 26, i32 71, i32 336, i32 266, i32 240, i32 380,
	i32 375, i32 69, i32 33, i32 353, i32 14, i32 139, i32 38, i32 379,
	i32 226, i32 366, i32 134, i32 92, i32 88, i32 202, i32 149, i32 338,
	i32 372, i32 24, i32 138, i32 57, i32 51, i32 351, i32 314, i32 29,
	i32 157, i32 34, i32 164, i32 316, i32 300, i32 241, i32 195, i32 52,
	i32 384, i32 282, i32 90, i32 222, i32 35, i32 354, i32 157, i32 9,
	i32 352, i32 76, i32 55, i32 176, i32 188, i32 348, i32 337, i32 186,
	i32 13, i32 281, i32 177, i32 219, i32 109, i32 257, i32 32, i32 104,
	i32 84, i32 92, i32 53, i32 205, i32 96, i32 289, i32 58, i32 9,
	i32 102, i32 233, i32 68, i32 280, i32 347, i32 191, i32 306, i32 125,
	i32 339, i32 268, i32 116, i32 135, i32 126, i32 106, i32 290, i32 131,
	i32 221, i32 288, i32 147, i32 156, i32 242, i32 230, i32 196, i32 311,
	i32 237, i32 268, i32 97, i32 24, i32 272, i32 143, i32 204, i32 265,
	i32 261, i32 197, i32 3, i32 167, i32 218, i32 322, i32 100, i32 161,
	i32 99, i32 25, i32 93, i32 168, i32 337, i32 172, i32 213, i32 3,
	i32 366, i32 239, i32 1, i32 114, i32 290, i32 242, i32 250, i32 324,
	i32 33, i32 6, i32 317, i32 338, i32 370, i32 301, i32 156, i32 332,
	i32 368, i32 53, i32 244, i32 85, i32 279, i32 343, i32 264, i32 203,
	i32 44, i32 249, i32 104, i32 47, i32 138, i32 333, i32 64, i32 259,
	i32 69, i32 80, i32 59, i32 89, i32 154, i32 219, i32 133, i32 176,
	i32 110, i32 360, i32 259, i32 266, i32 171, i32 134, i32 140, i32 40,
	i32 347, i32 199, i32 186, i32 60, i32 309, i32 256, i32 79, i32 25,
	i32 36, i32 99, i32 253, i32 71, i32 22, i32 230, i32 190, i32 371,
	i32 305, i32 121, i32 69, i32 107, i32 377, i32 260, i32 119, i32 117,
	i32 245, i32 200, i32 246, i32 11, i32 2, i32 124, i32 338, i32 115,
	i32 142, i32 41, i32 87, i32 214, i32 198, i32 173, i32 27, i32 148,
	i32 361, i32 179, i32 287, i32 213, i32 1, i32 308, i32 215, i32 44,
	i32 229, i32 149, i32 244, i32 18, i32 86, i32 344, i32 349, i32 41,
	i32 249, i32 223, i32 254, i32 94, i32 181, i32 28, i32 41, i32 78,
	i32 337, i32 238, i32 226, i32 144, i32 108, i32 224, i32 11, i32 105,
	i32 316, i32 323, i32 137, i32 16, i32 122, i32 66, i32 157, i32 22,
	i32 199, i32 351, i32 296, i32 102, i32 179, i32 295, i32 63, i32 58,
	i32 187, i32 350, i32 110, i32 319, i32 173, i32 383, i32 293, i32 9,
	i32 284, i32 120, i32 98, i32 105, i32 257, i32 186, i32 111, i32 216,
	i32 339, i32 49, i32 334, i32 20, i32 256, i32 232, i32 72, i32 228,
	i32 318, i32 155, i32 39, i32 349, i32 35, i32 204, i32 291, i32 38,
	i32 355, i32 313, i32 199, i32 283, i32 108, i32 364, i32 21, i32 321,
	i32 289, i32 255, i32 190, i32 15, i32 185, i32 79, i32 79, i32 232,
	i32 185, i32 235, i32 262, i32 270, i32 152, i32 21, i32 323, i32 188,
	i32 348, i32 324, i32 50, i32 51, i32 332, i32 192, i32 328, i32 374,
	i32 364, i32 94, i32 209, i32 360, i32 16, i32 123, i32 0, i32 357,
	i32 160, i32 341, i32 45, i32 287, i32 174, i32 116, i32 63, i32 166,
	i32 298, i32 177, i32 313, i32 14, i32 269, i32 111, i32 325, i32 216,
	i32 60, i32 292, i32 121, i32 363, i32 311, i32 2, i32 373, i32 241,
	i32 255, i32 322, i32 291, i32 255, i32 6, i32 223, i32 353, i32 237,
	i32 17, i32 342, i32 371, i32 350, i32 77, i32 330, i32 227, i32 131,
	i32 289, i32 363, i32 321, i32 83, i32 335, i32 183, i32 12, i32 335,
	i32 298, i32 34, i32 119, i32 312, i32 296, i32 250, i32 239, i32 85,
	i32 175, i32 208, i32 18, i32 280, i32 200, i32 178, i32 248, i32 72,
	i32 381, i32 95, i32 201, i32 165, i32 243, i32 82, i32 379, i32 217,
	i32 222, i32 292, i32 154, i32 317, i32 36, i32 310, i32 151, i32 375,
	i32 194, i32 378, i32 144, i32 56, i32 113, i32 335, i32 223, i32 277,
	i32 276, i32 37, i32 193, i32 379, i32 177, i32 115, i32 215, i32 14,
	i32 209, i32 312, i32 146, i32 43, i32 189, i32 213, i32 98, i32 295,
	i32 306, i32 307, i32 322, i32 168, i32 192, i32 16, i32 48, i32 107,
	i32 340, i32 97, i32 202, i32 259, i32 27, i32 128, i32 29, i32 355,
	i32 333, i32 270, i32 128, i32 44, i32 331, i32 232, i32 207, i32 238,
	i32 149, i32 8, i32 320, i32 320, i32 319, i32 192, i32 191, i32 261,
	i32 356, i32 369, i32 198, i32 368, i32 132, i32 367, i32 42, i32 206,
	i32 296, i32 198, i32 33, i32 176, i32 384, i32 46, i32 143, i32 256,
	i32 187, i32 247, i32 233, i32 138, i32 62, i32 132, i32 347, i32 48,
	i32 160, i32 220, i32 247, i32 209, i32 245, i32 363, i32 276, i32 46,
	i32 164, i32 243, i32 0, i32 352, i32 240, i32 314, i32 326, i32 359,
	i32 190, i32 18, i32 8, i32 306, i32 174, i32 231, i32 124, i32 59,
	i32 141, i32 263, i32 362, i32 251, i32 285, i32 302, i32 282, i32 303,
	i32 304, i32 150, i32 304, i32 142, i32 294, i32 291, i32 126, i32 293,
	i32 160, i32 162, i32 234, i32 212, i32 301, i32 178, i32 205, i32 365,
	i32 26, i32 261, i32 248, i32 82, i32 318, i32 339, i32 282, i32 127,
	i32 286, i32 101, i32 328, i32 148, i32 284, i32 264, i32 54, i32 162,
	i32 167, i32 327, i32 131, i32 37, i32 278, i32 362, i32 22, i32 112,
	i32 90, i32 235, i32 50, i32 60, i32 122, i32 83, i32 127, i32 163,
	i32 285, i32 166, i32 269, i32 271, i32 236, i32 208, i32 252, i32 4,
	i32 246, i32 315, i32 358, i32 170, i32 2, i32 257, i32 116, i32 383,
	i32 214, i32 19, i32 182, i32 89, i32 65, i32 30, i32 180, i32 351,
	i32 228, i32 59, i32 300, i32 111, i32 329, i32 248, i32 32, i32 128,
	i32 159, i32 369, i32 226, i32 140, i32 235, i32 365, i32 153, i32 17,
	i32 225, i32 211, i32 75, i32 74, i32 299, i32 15, i32 169, i32 85,
	i32 194, i32 342, i32 292, i32 124, i32 247, i32 258, i32 227, i32 372,
	i32 254, i32 34, i32 309, i32 118, i32 139, i32 122, i32 106, i32 349,
	i32 207, i32 381, i32 278, i32 222, i32 202, i32 356, i32 346, i32 54,
	i32 47, i32 324, i32 28, i32 309, i32 145, i32 182, i32 147, i32 302,
	i32 35, i32 372, i32 173, i32 283, i32 336, i32 75, i32 161, i32 1,
	i32 325, i32 272, i32 368, i32 361, i32 159, i32 12, i32 155, i32 151,
	i32 76, i32 103, i32 112, i32 201, i32 219, i32 307, i32 65, i32 66,
	i32 281, i32 45, i32 221, i32 109, i32 7, i32 318, i32 303, i32 218,
	i32 55, i32 175, i32 214, i32 64, i32 346, i32 231, i32 340, i32 20,
	i32 109, i32 315, i32 101, i32 62, i32 142, i32 212, i32 197, i32 7,
	i32 361, i32 170, i32 50, i32 281, i32 115, i32 141, i32 174, i32 195,
	i32 166, i32 80, i32 113, i32 258, i32 17, i32 73, i32 262, i32 89,
	i32 210, i32 87, i32 120, i32 275, i32 216, i32 206, i32 135, i32 153,
	i32 106, i32 11, i32 313, i32 90, i32 31, i32 314, i32 374, i32 136,
	i32 366, i32 369, i32 273, i32 211, i32 327, i32 40, i32 384, i32 272,
	i32 139, i32 295, i32 297, i32 25, i32 378, i32 73, i32 326, i32 243,
	i32 274, i32 299, i32 383, i32 27, i32 67, i32 336, i32 88, i32 305,
	i32 95, i32 113, i32 31, i32 104, i32 246, i32 37, i32 72, i32 341,
	i32 193, i32 288, i32 108, i32 123, i32 218, i32 87, i32 181, i32 86,
	i32 360, i32 93, i32 180, i32 330, i32 129, i32 312, i32 258, i32 275,
	i32 183, i32 380, i32 269, i32 231, i32 274, i32 228, i32 285, i32 178,
	i32 163, i32 334, i32 130, i32 182, i32 279, i32 266, i32 305, i32 315,
	i32 179, i32 195, i32 10, i32 49, i32 376, i32 91, i32 376, i32 150,
	i32 62, i32 136, i32 150, i32 61, i32 181, i32 117, i32 137, i32 84,
	i32 332, i32 244, i32 378, i32 159, i32 329, i32 276, i32 143, i32 357,
	i32 326, i32 240, i32 82, i32 70, i32 217, i32 136, i32 229, i32 210,
	i32 125, i32 380, i32 323, i32 54, i32 110, i32 130, i32 88, i32 23,
	i32 74, i32 129, i32 31, i32 343, i32 73, i32 253, i32 359, i32 158,
	i32 23, i32 4, i32 170, i32 330, i32 367, i32 194, i32 123, i32 298,
	i32 204, i32 358, i32 353, i32 114, i32 172, i32 344, i32 32, i32 3,
	i32 164, i32 311, i32 341, i32 277, i32 30, i32 19, i32 206, i32 252,
	i32 93, i32 36, i32 5, i32 283, i32 304, i32 220, i32 293, i32 155,
	i32 273, i32 345, i32 319, i32 287, i32 207, i32 299, i32 227, i32 260,
	i32 320, i32 0, i32 200, i32 279, i32 382, i32 76, i32 63, i32 263,
	i32 300, i32 147, i32 224, i32 121, i32 134, i32 265, i32 288, i32 189,
	i32 100, i32 39, i32 212, i32 352, i32 68, i32 26, i32 75, i32 78,
	i32 251, i32 187, i32 24, i32 152, i32 197, i32 38, i32 365, i32 220,
	i32 133, i32 103, i32 344, i32 284, i32 331, i32 57, i32 165, i32 91,
	i32 61, i32 132, i32 46, i32 133, i32 234, i32 145, i32 78, i32 229,
	i32 252, i32 154, i32 350, i32 193, i32 83, i32 377, i32 191, i32 375,
	i32 61, i32 96, i32 267, i32 153, i32 356, i32 118, i32 184, i32 6,
	i32 15, i32 74, i32 346, i32 146, i32 52, i32 175, i32 196, i32 70,
	i32 23, i32 158, i32 126, i32 65, i32 260, i32 112, i32 308, i32 262,
	i32 250, i32 55, i32 53, i32 236, i32 107, i32 135, i32 241, i32 251,
	i32 80, i32 317, i32 245, i32 310, i32 374, i32 249, i32 345, i32 129,
	i32 64, i32 152, i32 302
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 9abff7703206541fdb83ffa80fe2c2753ad1997b"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
