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

@assembly_image_cache = dso_local local_unnamed_addr global [151 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [453 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 106
	i64 u0x0071cf2d27b7d61e, ; 1: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 84
	i64 u0x01109b0e4d99e61f, ; 2: System.ComponentModel.Annotations.dll => 97
	i64 u0x02123411c4e01926, ; 3: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 80
	i64 u0x02abedc11addc1ed, ; 4: lib_Mono.Android.Runtime.dll.so => 149
	i64 u0x032267b2a94db371, ; 5: lib_Xamarin.AndroidX.AppCompat.dll.so => 62
	i64 u0x0363ac97a4cb84e6, ; 6: SQLitePCLRaw.provider.e_sqlite3.dll => 58
	i64 u0x043032f1d071fae0, ; 7: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 8: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 9: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 10: System.Net.Primitives => 115
	i64 u0x0565d18c6da3de38, ; 11: Xamarin.AndroidX.RecyclerView => 82
	i64 u0x0581db89237110e9, ; 12: lib_System.Collections.dll.so => 96
	i64 u0x05989cb940b225a9, ; 13: Microsoft.Maui.dll => 46
	i64 u0x06076b5d2b581f08, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x06388ffe9f6c161a, ; 15: System.Xml.Linq.dll => 141
	i64 u0x0680a433c781bb3d, ; 16: Xamarin.AndroidX.Collection.Jvm => 66
	i64 u0x07469f2eecce9e85, ; 17: mscorlib.dll => 145
	i64 u0x07c57877c7ba78ad, ; 18: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 19: System.Collections.NonGeneric => 94
	i64 u0x08f3c9788ee2153c, ; 20: Xamarin.AndroidX.DrawerLayout => 71
	i64 u0x09138715c92dba90, ; 21: lib_System.ComponentModel.Annotations.dll.so => 97
	i64 u0x0919c28b89381a0b, ; 22: lib_Microsoft.Extensions.Options.dll.so => 42
	i64 u0x092266563089ae3e, ; 23: lib_System.Collections.NonGeneric.dll.so => 94
	i64 u0x09d144a7e214d457, ; 24: System.Security.Cryptography => 131
	i64 u0x0b3b632c3bbee20c, ; 25: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 26: Xamarin.KotlinX.Serialization.Core.Jvm => 90
	i64 u0x0be2e1f8ce4064ed, ; 27: Xamarin.AndroidX.ViewPager => 85
	i64 u0x0c3ca6cc978e2aae, ; 28: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 29: Mono.Android => 150
	i64 u0x0c7790f60165fc06, ; 30: lib_Microsoft.Maui.Essentials.dll.so => 47
	i64 u0x102a31b45304b1da, ; 31: Xamarin.AndroidX.CustomView => 70
	i64 u0x10f6cfcbcf801616, ; 32: System.IO.Compression.Brotli => 107
	i64 u0x125b7f94acb989db, ; 33: Xamarin.AndroidX.RecyclerView.dll => 82
	i64 u0x138567fa954faa55, ; 34: Xamarin.AndroidX.Browser => 64
	i64 u0x13a01de0cbc3f06c, ; 35: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 36: lib_Java.Interop.dll.so => 148
	i64 u0x13f1e880c25d96d1, ; 37: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 38: Microsoft.Extensions.DependencyInjection.Abstractions => 39
	i64 u0x16eeae54c7ebcc08, ; 39: System.Reflection.dll => 123
	i64 u0x17125c9a85b4929f, ; 40: lib_netstandard.dll.so => 146
	i64 u0x17b56e25558a5d36, ; 41: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 42: System.Text.Encodings.Web => 134
	i64 u0x18402a709e357f3b, ; 43: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 90
	i64 u0x18f0ce884e87d89a, ; 44: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a21ad8fb8814a23, ; 45: lib_UraniumUI.dll.so => 59
	i64 u0x1a91866a319e9259, ; 46: lib_System.Collections.Concurrent.dll.so => 93
	i64 u0x1aac34d1917ba5d3, ; 47: lib_System.dll.so => 144
	i64 u0x1aad60783ffa3e5b, ; 48: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 49: Mono.Android.Runtime.dll => 149
	i64 u0x1cd47467799d8250, ; 50: System.Threading.Tasks.dll => 137
	i64 u0x1e3d87657e9659bc, ; 51: Xamarin.AndroidX.Navigation.UI => 81
	i64 u0x1e71143913d56c10, ; 52: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 53: Microsoft.Extensions.Options.dll => 42
	i64 u0x209375905fcc1bad, ; 54: lib_System.IO.Compression.Brotli.dll.so => 107
	i64 u0x2110167c128cba15, ; 55: System.Globalization => 106
	i64 u0x2174319c0d835bc9, ; 56: System.Runtime => 130
	i64 u0x220fd4f2e7c48170, ; 57: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x237be844f1f812c7, ; 58: System.Threading.Thread.dll => 138
	i64 u0x23852b3bdc9f7096, ; 59: System.Resources.ResourceManager => 124
	i64 u0x2407aef2bbe8fadf, ; 60: System.Console => 101
	i64 u0x240abe014b27e7d3, ; 61: Xamarin.AndroidX.Core.dll => 68
	i64 u0x247619fe4413f8bf, ; 62: System.Runtime.Serialization.Primitives.dll => 129
	i64 u0x252073cc3caa62c2, ; 63: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25a0a7eff76ea08e, ; 64: SQLitePCLRaw.batteries_v2.dll => 53
	i64 u0x2662c629b96b0b30, ; 65: lib_Xamarin.Kotlin.StdLib.dll.so => 88
	i64 u0x268c1439f13bcc29, ; 66: lib_Microsoft.Extensions.Primitives.dll.so => 43
	i64 u0x26a670e154a9c54b, ; 67: System.Reflection.Extensions.dll => 122
	i64 u0x26d077d9678fe34f, ; 68: System.IO.dll => 110
	i64 u0x273f3515de5faf0d, ; 69: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 70: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 71: Java.Interop.dll => 148
	i64 u0x27b97e0d52c3034a, ; 72: System.Diagnostics.Debug => 102
	i64 u0x2801845a2c71fbfb, ; 73: System.Net.Primitives.dll => 115
	i64 u0x2a128783efe70ba0, ; 74: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2ad156c8e1354139, ; 75: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 76: System.Text.RegularExpressions.dll => 136
	i64 u0x2afc1c4f898552ee, ; 77: lib_System.Formats.Asn1.dll.so => 105
	i64 u0x2b148910ed40fbf9, ; 78: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 79: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cd723e9fe623c7c, ; 80: lib_System.Private.Xml.Linq.dll.so => 120
	i64 u0x2d169d318a968379, ; 81: System.Threading.dll => 139
	i64 u0x2d47774b7d993f59, ; 82: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 83: System.Text.Json.dll => 135
	i64 u0x2e6f1f226821322a, ; 84: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f2e98e1c89b1aff, ; 85: System.Xml.ReaderWriter => 142
	i64 u0x309ee9eeec09a71e, ; 86: lib_Xamarin.AndroidX.Fragment.dll.so => 72
	i64 u0x30ba2accb43a42ec, ; 87: SQLiteNetExtensions => 52
	i64 u0x31195fef5d8fb552, ; 88: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 89: Xamarin.AndroidX.CardView.dll => 65
	i64 u0x329753a17a517811, ; 90: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 91: lib_System.Xml.ReaderWriter.dll.so => 142
	i64 u0x33a31443733849fe, ; 92: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34c492cef793bb77, ; 93: lib_InputKit.Maui.dll.so => 35
	i64 u0x34dfd74fe2afcf37, ; 94: Microsoft.Maui => 46
	i64 u0x34e292762d9615df, ; 95: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 96: Microsoft.Maui.Controls => 44
	i64 u0x353590da528c9d22, ; 97: System.ComponentModel.Annotations => 97
	i64 u0x3549870798b4cd30, ; 98: lib_Xamarin.AndroidX.ViewPager2.dll.so => 86
	i64 u0x355282fc1c909694, ; 99: Microsoft.Extensions.Configuration => 36
	i64 u0x3673b042508f5b6b, ; 100: lib_System.Runtime.Extensions.dll.so => 125
	i64 u0x36d2129305806e75, ; 101: UraniumUI => 59
	i64 u0x37bc29f3183003b6, ; 102: lib_System.IO.dll.so => 110
	i64 u0x385c17636bb6fe6e, ; 103: Xamarin.AndroidX.CustomView.dll => 70
	i64 u0x393c226616977fdb, ; 104: lib_Xamarin.AndroidX.ViewPager.dll.so => 85
	i64 u0x395e37c3334cf82a, ; 105: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x39aa39fda111d9d3, ; 106: Newtonsoft.Json => 49
	i64 u0x3b860f9932505633, ; 107: lib_System.Text.Encoding.Extensions.dll.so => 132
	i64 u0x3c7c495f58ac5ee9, ; 108: Xamarin.Kotlin.StdLib => 88
	i64 u0x3cd9d281d402eb9b, ; 109: Xamarin.AndroidX.Browser.dll => 64
	i64 u0x3d46f0b995082740, ; 110: System.Xml.Linq => 141
	i64 u0x3d9c2a242b040a50, ; 111: lib_Xamarin.AndroidX.Core.dll.so => 68
	i64 u0x3da7781d6333a8fe, ; 112: SQLitePCLRaw.batteries_v2 => 53
	i64 u0x407a10bb4bf95829, ; 113: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 78
	i64 u0x40856d3b9d417a08, ; 114: SQLitePCLRaw.nativelibrary => 54
	i64 u0x41833cf766d27d96, ; 115: mscorlib => 145
	i64 u0x41cab042be111c34, ; 116: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 63
	i64 u0x423a9ecc4d905a88, ; 117: lib_System.Resources.ResourceManager.dll.so => 124
	i64 u0x43375950ec7c1b6a, ; 118: netstandard.dll => 146
	i64 u0x434c4e1d9284cdae, ; 119: Mono.Android.dll => 150
	i64 u0x43950f84de7cc79a, ; 120: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x448bd33429269b19, ; 121: Microsoft.CSharp => 92
	i64 u0x4499fa3c8e494654, ; 122: lib_System.Runtime.Serialization.Primitives.dll.so => 129
	i64 u0x4515080865a951a5, ; 123: Xamarin.Kotlin.StdLib.dll => 88
	i64 u0x46a4213bc97fe5ae, ; 124: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47358bd471172e1d, ; 125: lib_System.Xml.Linq.dll.so => 141
	i64 u0x47daf4e1afbada10, ; 126: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 127: System.ObjectModel => 118
	i64 u0x4a5667b2462a664b, ; 128: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 81
	i64 u0x4b07a0ed0ab33ff4, ; 129: System.Runtime.Extensions.dll => 125
	i64 u0x4b7b6532ded934b7, ; 130: System.Text.Json => 135
	i64 u0x4cc5f15266470798, ; 131: lib_Xamarin.AndroidX.Loader.dll.so => 77
	i64 u0x4d479f968a05e504, ; 132: System.Linq.Expressions.dll => 111
	i64 u0x4d55a010ffc4faff, ; 133: System.Private.Xml => 121
	i64 u0x4d91e5c949c8f5e5, ; 134: InputKit.Maui.dll => 35
	i64 u0x4d95fccc1f67c7ca, ; 135: System.Runtime.Loader.dll => 127
	i64 u0x4dcf44c3c9b076a2, ; 136: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 137: Xamarin.AndroidX.Loader.dll => 77
	i64 u0x4e32f00cb0937401, ; 138: Mono.Android.Runtime => 149
	i64 u0x4f21ee6ef9eb527e, ; 139: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x4fd5f3ee53d0a4f0, ; 140: SQLitePCLRaw.lib.e_sqlite3.android => 56
	i64 u0x5037f0be3c28c7a3, ; 141: lib_Microsoft.Maui.Controls.dll.so => 44
	i64 u0x5131bbe80989093f, ; 142: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 75
	i64 u0x526ce79eb8e90527, ; 143: lib_System.Net.Primitives.dll.so => 115
	i64 u0x529ffe06f39ab8db, ; 144: Xamarin.AndroidX.Core => 68
	i64 u0x52ff996554dbf352, ; 145: Microsoft.Maui.Graphics => 48
	i64 u0x535f7e40e8fef8af, ; 146: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53c3014b9437e684, ; 147: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 148: lib_System.Runtime.dll.so => 130
	i64 u0x55250ba592fd51e2, ; 149: SQLitePCLRaw.provider.dynamic_cdecl.dll => 57
	i64 u0x556e8b63b660ab8b, ; 150: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 73
	i64 u0x5588627c9a108ec9, ; 151: System.Collections.Specialized => 95
	i64 u0x571c5cfbec5ae8e2, ; 152: System.Private.Uri => 119
	i64 u0x578cd35c91d7b347, ; 153: lib_SQLitePCLRaw.core.dll.so => 55
	i64 u0x579a06fed6eec900, ; 154: System.Private.CoreLib.dll => 147
	i64 u0x57c542c14049b66d, ; 155: System.Diagnostics.DiagnosticSource => 103
	i64 u0x58601b2dda4a27b9, ; 156: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 157: Microsoft.Extensions.DependencyInjection.dll => 38
	i64 u0x595a356d23e8da9a, ; 158: lib_Microsoft.CSharp.dll.so => 92
	i64 u0x5a89a886ae30258d, ; 159: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 67
	i64 u0x5a8f6699f4a1caa9, ; 160: lib_System.Threading.dll.so => 139
	i64 u0x5ae9cd33b15841bf, ; 161: System.ComponentModel => 100
	i64 u0x5b5f0e240a06a2a2, ; 162: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5c30a4a35f9cc8c4, ; 163: lib_System.Reflection.Extensions.dll.so => 122
	i64 u0x5c393624b8176517, ; 164: lib_Microsoft.Extensions.Logging.dll.so => 40
	i64 u0x5db0cbbd1028510e, ; 165: lib_System.Runtime.InteropServices.dll.so => 126
	i64 u0x5db30905d3e5013b, ; 166: Xamarin.AndroidX.Collection.Jvm.dll => 66
	i64 u0x5e467bc8f09ad026, ; 167: System.Collections.Specialized.dll => 95
	i64 u0x5ea92fdb19ec8c4c, ; 168: System.Text.Encodings.Web.dll => 134
	i64 u0x5eb8046dd40e9ac3, ; 169: System.ComponentModel.Primitives => 98
	i64 u0x5f36ccf5c6a57e24, ; 170: System.Xml.ReaderWriter.dll => 142
	i64 u0x5f7399e166075632, ; 171: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 56
	i64 u0x5f9a2d823f664957, ; 172: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 173: lib_Microsoft.Extensions.DependencyInjection.dll.so => 38
	i64 u0x60cd4e33d7e60134, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm => 89
	i64 u0x60f62d786afcf130, ; 175: System.Memory => 113
	i64 u0x61bb78c89f867353, ; 176: System.IO => 110
	i64 u0x61be8d1299194243, ; 177: Microsoft.Maui.Controls.Xaml => 45
	i64 u0x61d2cba29557038f, ; 178: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 179: lib_System.Runtime.Loader.dll.so => 127
	i64 u0x622eef6f9e59068d, ; 180: System.Private.CoreLib => 147
	i64 u0x6400f68068c1e9f1, ; 181: Xamarin.Google.Android.Material.dll => 87
	i64 u0x64587004560099b9, ; 182: System.Reflection => 123
	i64 u0x65ecac39144dd3cc, ; 183: Microsoft.Maui.Controls.dll => 44
	i64 u0x65ece51227bfa724, ; 184: lib_System.Runtime.Numerics.dll.so => 128
	i64 u0x6692e924eade1b29, ; 185: lib_System.Console.dll.so => 101
	i64 u0x66a4e5c6a3fb0bae, ; 186: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 75
	i64 u0x66d13304ce1a3efa, ; 187: Xamarin.AndroidX.CursorAdapter => 69
	i64 u0x68558ec653afa616, ; 188: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x68fbbbe2eb455198, ; 189: System.Formats.Asn1 => 105
	i64 u0x69063fc0ba8e6bdd, ; 190: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x699dffb2427a2d71, ; 191: SQLitePCLRaw.lib.e_sqlite3.android.dll => 56
	i64 u0x6a4d7577b2317255, ; 192: System.Runtime.InteropServices.dll => 126
	i64 u0x6ace3b74b15ee4a4, ; 193: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 194: lib_Microsoft.Maui.Graphics.dll.so => 48
	i64 u0x6d79993361e10ef2, ; 195: Microsoft.Extensions.Primitives => 43
	i64 u0x6d86d56b84c8eb71, ; 196: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 69
	i64 u0x6d9bea6b3e895cf7, ; 197: Microsoft.Extensions.Primitives.dll => 43
	i64 u0x6e25a02c3833319a, ; 198: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 79
	i64 u0x6fd2265da78b93a4, ; 199: lib_Microsoft.Maui.dll.so => 46
	i64 u0x6fdfc7de82c33008, ; 200: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x706442eb8d0ca9f8, ; 201: Plainer.Maui.dll => 50
	i64 u0x70e99f48c05cb921, ; 202: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 203: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71485e7ffdb4b958, ; 204: System.Reflection.Extensions => 122
	i64 u0x71a495ea3761dde8, ; 205: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 206: System.ComponentModel.Primitives.dll => 98
	i64 u0x7276728c55ffd7ca, ; 207: SimpleInventory => 91
	i64 u0x72b1fb4109e08d7b, ; 208: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 209: lib_System.Memory.dll.so => 113
	i64 u0x755a91767330b3d4, ; 210: lib_Microsoft.Extensions.Configuration.dll.so => 36
	i64 u0x76012e7334db86e5, ; 211: lib_Xamarin.AndroidX.SavedState.dll.so => 83
	i64 u0x76ca07b878f44da0, ; 212: System.Runtime.Numerics.dll => 128
	i64 u0x780bc73597a503a9, ; 213: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 214: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 215: Xamarin.AndroidX.Fragment.dll => 72
	i64 u0x7adb8da2ac89b647, ; 216: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 217: System.ComponentModel.TypeConverter => 99
	i64 u0x7c0820144cd34d6a, ; 218: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 219: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7d649b75d580bb42, ; 220: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 221: System.Numerics.Vectors => 117
	i64 u0x7dfc3d6d9d8d7b70, ; 222: System.Collections => 96
	i64 u0x7e946809d6008ef2, ; 223: lib_System.ObjectModel.dll.so => 118
	i64 u0x7ecc13347c8fd849, ; 224: lib_System.ComponentModel.dll.so => 100
	i64 u0x7f00ddd9b9ca5a13, ; 225: Xamarin.AndroidX.ViewPager.dll => 85
	i64 u0x7f903af8afd7c6c3, ; 226: lib_SQLitePCLRaw.provider.dynamic_cdecl.dll.so => 57
	i64 u0x7f9351cd44b1273f, ; 227: Microsoft.Extensions.Configuration.Abstractions => 37
	i64 u0x7fbd557c99b3ce6f, ; 228: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 74
	i64 u0x80fa55b6d1b0be99, ; 229: SQLitePCLRaw.provider.e_sqlite3 => 58
	i64 u0x812c069d5cdecc17, ; 230: System.dll => 144
	i64 u0x81ab745f6c0f5ce6, ; 231: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 232: Xamarin.AndroidX.AppCompat => 62
	i64 u0x828f06563b30bc50, ; 233: lib_Xamarin.AndroidX.CardView.dll.so => 65
	i64 u0x82f6403342e12049, ; 234: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83144699b312ad81, ; 235: SQLite-net.dll => 51
	i64 u0x83c14ba66c8e2b8c, ; 236: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x8662aaeb94fef37f, ; 237: lib_System.Dynamic.Runtime.dll.so => 104
	i64 u0x86a909228dc7657b, ; 238: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 239: Microsoft.Extensions.Configuration.dll => 36
	i64 u0x87c69b87d9283884, ; 240: lib_System.Threading.Thread.dll.so => 138
	i64 u0x87f6569b25707834, ; 241: System.IO.Compression.Brotli.dll => 107
	i64 u0x8842b3a5d2d3fb36, ; 242: Microsoft.Maui.Essentials => 47
	i64 u0x88ba6bc4f7762b03, ; 243: lib_System.Reflection.dll.so => 123
	i64 u0x88bda98e0cffb7a9, ; 244: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 89
	i64 u0x8930322c7bd8f768, ; 245: netstandard => 146
	i64 u0x894dbdd1ac38f4e1, ; 246: Plainer.Maui => 50
	i64 u0x897a606c9e39c75f, ; 247: lib_System.ComponentModel.Primitives.dll.so => 98
	i64 u0x8ad229ea26432ee2, ; 248: Xamarin.AndroidX.Loader => 77
	i64 u0x8b4ff5d0fdd5faa1, ; 249: lib_System.Diagnostics.DiagnosticSource.dll.so => 103
	i64 u0x8b9ceca7acae3451, ; 250: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 251: Xamarin.AndroidX.CursorAdapter.dll => 69
	i64 u0x8d2551476f2e2ef7, ; 252: lib_UraniumUI.Material.dll.so => 60
	i64 u0x8d7b8ab4b3310ead, ; 253: System.Threading => 139
	i64 u0x8da188285aadfe8e, ; 254: System.Collections.Concurrent => 93
	i64 u0x8ebba9258a550f92, ; 255: lib_Plainer.Maui.dll.so => 50
	i64 u0x8ec6e06a61c1baeb, ; 256: lib_Newtonsoft.Json.dll.so => 49
	i64 u0x8ed807bfe9858dfc, ; 257: Xamarin.AndroidX.Navigation.Common => 78
	i64 u0x8ee08b8194a30f48, ; 258: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 259: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8ef9414937d93a0a, ; 260: SQLitePCLRaw.core.dll => 55
	i64 u0x8f32c6f611f6ffab, ; 261: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 262: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x8fbf5b0114c6dcef, ; 263: System.Globalization.dll => 106
	i64 u0x8fd27d934d7b3a55, ; 264: SQLitePCLRaw.core => 55
	i64 u0x902d31dbd7d7d78e, ; 265: InputKit.Maui => 35
	i64 u0x903101b46fb73a04, ; 266: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 267: lib_System.IO.Compression.dll.so => 108
	i64 u0x90634f86c5ebe2b5, ; 268: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 75
	i64 u0x907b636704ad79ef, ; 269: lib_Microsoft.Maui.Controls.Xaml.dll.so => 45
	i64 u0x91418dc638b29e68, ; 270: lib_Xamarin.AndroidX.CustomView.dll.so => 70
	i64 u0x9157bd523cd7ed36, ; 271: lib_System.Text.Json.dll.so => 135
	i64 u0x91a74f07b30d37e2, ; 272: System.Linq.dll => 112
	i64 u0x91fa41a87223399f, ; 273: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 274: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 275: System.IO.Compression.dll => 108
	i64 u0x95dea088fb5d2991, ; 276: lib_SimpleInventory.dll.so => 91
	i64 u0x967fc325e09bfa8c, ; 277: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 278: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 279: Microsoft.Maui.Graphics.dll => 48
	i64 u0x97b8c771ea3e4220, ; 280: System.ComponentModel.dll => 100
	i64 u0x97e144c9d3c6976e, ; 281: System.Collections.Concurrent.dll => 93
	i64 u0x991d510397f92d9d, ; 282: System.Linq.Expressions => 111
	i64 u0x99a00ca5270c6878, ; 283: Xamarin.AndroidX.Navigation.Runtime => 80
	i64 u0x99cdc6d1f2d3a72f, ; 284: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 285: lib_Xamarin.AndroidX.Activity.dll.so => 61
	i64 u0x9d74dee1a7725f34, ; 286: Microsoft.Extensions.Configuration.Abstractions.dll => 37
	i64 u0x9da48bf5f6df6c80, ; 287: UraniumUI.dll => 59
	i64 u0x9e4534b6adaf6e84, ; 288: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9e4b95dec42769f7, ; 289: System.Diagnostics.Debug.dll => 102
	i64 u0x9eaf1efdf6f7267e, ; 290: Xamarin.AndroidX.Navigation.Common.dll => 78
	i64 u0x9ef542cf1f78c506, ; 291: Xamarin.AndroidX.Lifecycle.LiveData.Core => 74
	i64 u0xa0d8259f4cc284ec, ; 292: lib_System.Security.Cryptography.dll.so => 131
	i64 u0xa1440773ee9d341e, ; 293: Xamarin.Google.Android.Material => 87
	i64 u0xa1b9d7c27f47219f, ; 294: Xamarin.AndroidX.Navigation.UI.dll => 81
	i64 u0xa2572680829d2c7c, ; 295: System.IO.Pipelines.dll => 109
	i64 u0xa308401900e5bed3, ; 296: lib_mscorlib.dll.so => 145
	i64 u0xa3e683f24b43af6f, ; 297: System.Dynamic.Runtime.dll => 104
	i64 u0xa46aa1eaa214539b, ; 298: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa5e599d1e0524750, ; 299: System.Numerics.Vectors.dll => 117
	i64 u0xa5f1ba49b85dd355, ; 300: System.Security.Cryptography.dll => 131
	i64 u0xa67dbee13e1df9ca, ; 301: Xamarin.AndroidX.SavedState.dll => 83
	i64 u0xa68a420042bb9b1f, ; 302: Xamarin.AndroidX.DrawerLayout.dll => 71
	i64 u0xa78ce3745383236a, ; 303: Xamarin.AndroidX.Lifecycle.Common.Jvm => 73
	i64 u0xa7c31b56b4dc7b33, ; 304: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xaa2219c8e3449ff5, ; 305: Microsoft.Extensions.Logging.Abstractions => 41
	i64 u0xaa443ac34067eeef, ; 306: System.Private.Xml.dll => 121
	i64 u0xaa52de307ef5d1dd, ; 307: System.Net.Http => 114
	i64 u0xaaaf86367285a918, ; 308: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 39
	i64 u0xaaf84bb3f052a265, ; 309: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 310: lib_System.Linq.Expressions.dll.so => 111
	i64 u0xac2af3fa195a15ce, ; 311: System.Runtime.Numerics => 128
	i64 u0xac5376a2a538dc10, ; 312: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 74
	i64 u0xac98d31068e24591, ; 313: System.Xml.XDocument => 143
	i64 u0xacd46e002c3ccb97, ; 314: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 315: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 316: System.Web.HttpUtility => 140
	i64 u0xadc90ab061a9e6e4, ; 317: System.ComponentModel.TypeConverter.dll => 99
	i64 u0xae282bcd03739de7, ; 318: Java.Interop => 148
	i64 u0xae53579c90db1107, ; 319: System.ObjectModel.dll => 118
	i64 u0xae7ea18c61eef394, ; 320: SQLite-net => 51
	i64 u0xafe29f45095518e7, ; 321: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 76
	i64 u0xb05cc42cd94c6d9d, ; 322: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 323: System.Text.RegularExpressions => 136
	i64 u0xb2a3f67f3bf29fce, ; 324: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb2d3ad98fce223fd, ; 325: UraniumUI.Material => 60
	i64 u0xb3f0a0fcda8d3ebc, ; 326: Xamarin.AndroidX.CardView => 65
	i64 u0xb46be1aa6d4fff93, ; 327: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 328: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 329: System.IO.Pipelines => 109
	i64 u0xb5c38bf497a4cfe2, ; 330: lib_System.Threading.Tasks.dll.so => 137
	i64 u0xb5c7fcdafbc67ee4, ; 331: Microsoft.Extensions.Logging.Abstractions.dll => 41
	i64 u0xb7b7753d1f319409, ; 332: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 333: lib_System.Private.CoreLib.dll.so => 147
	i64 u0xb9185c33a1643eed, ; 334: Microsoft.CSharp.dll => 92
	i64 u0xb9f64d3b230def68, ; 335: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 336: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba4670aa94a2b3c6, ; 337: lib_System.Xml.XDocument.dll.so => 143
	i64 u0xba48785529705af9, ; 338: System.Collections.dll => 96
	i64 u0xbc22a245dab70cb4, ; 339: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 58
	i64 u0xbd0e2c0d55246576, ; 340: System.Net.Http.dll => 114
	i64 u0xbd437a2cdb333d0d, ; 341: Xamarin.AndroidX.ViewPager2 => 86
	i64 u0xbd5d0b88d3d647a5, ; 342: lib_Xamarin.AndroidX.Browser.dll.so => 64
	i64 u0xbee38d4a88835966, ; 343: Xamarin.AndroidX.AppCompat.AppCompatResources => 63
	i64 u0xc040a4ab55817f58, ; 344: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 345: System.Console.dll => 101
	i64 u0xc12b8b3afa48329c, ; 346: lib_System.Linq.dll.so => 112
	i64 u0xc1ff9ae3cdb6e1e6, ; 347: Xamarin.AndroidX.Activity.dll => 61
	i64 u0xc2445f292e10309e, ; 348: SQLitePCLRaw.nativelibrary.dll => 54
	i64 u0xc28c50f32f81cc73, ; 349: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 350: Xamarin.AndroidX.ViewPager2.dll => 86
	i64 u0xc3ac69a1b1ba2f32, ; 351: lib_SQLiteNetExtensions.dll.so => 52
	i64 u0xc4d3858ed4d08512, ; 352: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 76
	i64 u0xc50fded0ded1418c, ; 353: lib_System.ComponentModel.TypeConverter.dll.so => 99
	i64 u0xc519125d6bc8fb11, ; 354: lib_System.Net.Requests.dll.so => 116
	i64 u0xc5293b19e4dc230e, ; 355: Xamarin.AndroidX.Navigation.Fragment => 79
	i64 u0xc5325b2fcb37446f, ; 356: lib_System.Private.Xml.dll.so => 121
	i64 u0xc5a0f4b95a699af7, ; 357: lib_System.Private.Uri.dll.so => 119
	i64 u0xc7c01e7d7c93a110, ; 358: System.Text.Encoding.Extensions.dll => 132
	i64 u0xc7ce851898a4548e, ; 359: lib_System.Web.HttpUtility.dll.so => 140
	i64 u0xc858a28d9ee5a6c5, ; 360: lib_System.Collections.Specialized.dll.so => 95
	i64 u0xca3a723e7342c5b6, ; 361: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xca5801070d9fccfb, ; 362: System.Text.Encoding => 133
	i64 u0xcab3493c70141c2d, ; 363: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 364: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 365: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 366: lib_System.Text.RegularExpressions.dll.so => 136
	i64 u0xcc5c3bb714c4561e, ; 367: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 89
	i64 u0xcc76886e09b88260, ; 368: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 90
	i64 u0xccf25c4b634ccd3a, ; 369: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 370: System.Net.Requests => 116
	i64 u0xcdd0c48b6937b21c, ; 371: Xamarin.AndroidX.SwipeRefreshLayout => 84
	i64 u0xcf23d8093f3ceadf, ; 372: System.Diagnostics.DiagnosticSource.dll => 103
	i64 u0xcf8fc898f98b0d34, ; 373: System.Private.Xml.Linq => 120
	i64 u0xd0fc33d5ae5d4cb8, ; 374: System.Runtime.Extensions => 125
	i64 u0xd1194e1d8a8de83c, ; 375: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 73
	i64 u0xd12beacdfc14f696, ; 376: System.Dynamic.Runtime => 104
	i64 u0xd333d0af9e423810, ; 377: System.Runtime.InteropServices => 126
	i64 u0xd3426d966bb704f5, ; 378: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 63
	i64 u0xd3651b6fc3125825, ; 379: System.Private.Uri.dll => 119
	i64 u0xd373685349b1fe8b, ; 380: Microsoft.Extensions.Logging.dll => 40
	i64 u0xd3e4c8d6a2d5d470, ; 381: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 382: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 39
	i64 u0xd5507e11a2b2839f, ; 383: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 76
	i64 u0xd6694f8359737e4e, ; 384: Xamarin.AndroidX.SavedState => 83
	i64 u0xd6d21782156bc35b, ; 385: Xamarin.AndroidX.SwipeRefreshLayout.dll => 84
	i64 u0xd72329819cbbbc44, ; 386: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 37
	i64 u0xd7b3764ada9d341d, ; 387: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 41
	i64 u0xda1dfa4c534a9251, ; 388: Microsoft.Extensions.DependencyInjection => 38
	i64 u0xda25bba549b6c31e, ; 389: SQLiteNetExtensions.dll => 52
	i64 u0xdad05a11827959a3, ; 390: System.Collections.NonGeneric.dll => 94
	i64 u0xdb5383ab5865c007, ; 391: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdbeda89f832aa805, ; 392: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 393: System.Linq => 112
	i64 u0xdbfc90157a0de9b0, ; 394: lib_System.Text.Encoding.dll.so => 133
	i64 u0xdce2c53525640bf3, ; 395: Microsoft.Extensions.Logging => 40
	i64 u0xdd2b722d78ef5f43, ; 396: System.Runtime.dll => 130
	i64 u0xdd67031857c72f96, ; 397: lib_System.Text.Encodings.Web.dll.so => 134
	i64 u0xdde30e6b77aa6f6c, ; 398: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde110ae80fa7c2e2, ; 399: System.Xml.XDocument.dll => 143
	i64 u0xde8769ebda7d8647, ; 400: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 401: Xamarin.AndroidX.AppCompat.dll => 62
	i64 u0xe021eaa401792a05, ; 402: System.Text.Encoding.dll => 133
	i64 u0xe02f89350ec78051, ; 403: Xamarin.AndroidX.CoordinatorLayout.dll => 67
	i64 u0xe192a588d4410686, ; 404: lib_System.IO.Pipelines.dll.so => 109
	i64 u0xe1a08bd3fa539e0d, ; 405: System.Runtime.Loader => 127
	i64 u0xe1b52f9f816c70ef, ; 406: System.Private.Xml.Linq.dll => 120
	i64 u0xe2420585aeceb728, ; 407: System.Net.Requests.dll => 116
	i64 u0xe29b73bc11392966, ; 408: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe3811d68d4fe8463, ; 409: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe3a586956771a0ed, ; 410: lib_SQLite-net.dll.so => 51
	i64 u0xe494f7ced4ecd10a, ; 411: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 412: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe4f74a0b5bf9703f, ; 413: System.Runtime.Serialization.Primitives => 129
	i64 u0xe5434e8a119ceb69, ; 414: lib_Mono.Android.dll.so => 150
	i64 u0xeae68e81c894c13d, ; 415: UraniumUI.Material.dll => 60
	i64 u0xec956d6217f98e0e, ; 416: SimpleInventory.dll => 91
	i64 u0xeca593e6696030cc, ; 417: SQLitePCLRaw.provider.dynamic_cdecl => 57
	i64 u0xedc632067fb20ff3, ; 418: System.Memory.dll => 113
	i64 u0xedc8e4ca71a02a8b, ; 419: Xamarin.AndroidX.Navigation.Runtime.dll => 80
	i64 u0xeeb7ebb80150501b, ; 420: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 66
	i64 u0xef72742e1bcca27a, ; 421: Microsoft.Maui.Essentials.dll => 47
	i64 u0xefd1e0c4e5c9b371, ; 422: System.Resources.ResourceManager.dll => 124
	i64 u0xefec0b7fdc57ec42, ; 423: Xamarin.AndroidX.Activity => 61
	i64 u0xf00c29406ea45e19, ; 424: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf0ac2b489fed2e35, ; 425: lib_System.Diagnostics.Debug.dll.so => 102
	i64 u0xf11b621fc87b983f, ; 426: Microsoft.Maui.Controls.Xaml.dll => 45
	i64 u0xf17642d65ad6bfb3, ; 427: lib_SQLitePCLRaw.nativelibrary.dll.so => 54
	i64 u0xf1c4b4005493d871, ; 428: System.Formats.Asn1.dll => 105
	i64 u0xf238bd79489d3a96, ; 429: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 430: lib_Xamarin.Google.Android.Material.dll.so => 87
	i64 u0xf3ddfe05336abf29, ; 431: System => 144
	i64 u0xf4c1dd70a5496a17, ; 432: System.IO.Compression => 108
	i64 u0xf518f63ead11fcd1, ; 433: System.Threading.Tasks => 137
	i64 u0xf6077741019d7428, ; 434: Xamarin.AndroidX.CoordinatorLayout => 67
	i64 u0xf77b20923f07c667, ; 435: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 436: lib_System.Numerics.Vectors.dll.so => 117
	i64 u0xf7e74930e0e3d214, ; 437: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf7fa0bf77fe677cc, ; 438: Newtonsoft.Json.dll => 49
	i64 u0xf84773b5c81e3cef, ; 439: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8e045dc345b2ea3, ; 440: lib_Xamarin.AndroidX.RecyclerView.dll.so => 82
	i64 u0xf915dc29808193a1, ; 441: System.Web.HttpUtility.dll => 140
	i64 u0xf96c777a2a0686f4, ; 442: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 443: Microsoft.Extensions.Options => 42
	i64 u0xfa5ed7226d978949, ; 444: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 445: System.Threading.Thread => 138
	i64 u0xfb022853d73b7fa5, ; 446: lib_SQLitePCLRaw.batteries_v2.dll.so => 53
	i64 u0xfbf0a31c9fc34bc4, ; 447: lib_System.Net.Http.dll.so => 114
	i64 u0xfc719aec26adf9d9, ; 448: Xamarin.AndroidX.Navigation.Fragment.dll => 79
	i64 u0xfd22f00870e40ae0, ; 449: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 71
	i64 u0xfd536c702f64dc47, ; 450: System.Text.Encoding.Extensions => 132
	i64 u0xfd583f7657b6a1cb, ; 451: Xamarin.AndroidX.Fragment => 72
	i64 u0xfeae9952cf03b8cb ; 452: tr/Microsoft.Maui.Controls.resources => 28
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [453 x i32] [
	i32 106, i32 84, i32 97, i32 80, i32 149, i32 62, i32 58, i32 24,
	i32 2, i32 30, i32 115, i32 82, i32 96, i32 46, i32 31, i32 141,
	i32 66, i32 145, i32 24, i32 94, i32 71, i32 97, i32 42, i32 94,
	i32 131, i32 25, i32 90, i32 85, i32 21, i32 150, i32 47, i32 70,
	i32 107, i32 82, i32 64, i32 8, i32 148, i32 9, i32 39, i32 123,
	i32 146, i32 12, i32 134, i32 90, i32 18, i32 59, i32 93, i32 144,
	i32 27, i32 149, i32 137, i32 81, i32 16, i32 42, i32 107, i32 106,
	i32 130, i32 27, i32 138, i32 124, i32 101, i32 68, i32 129, i32 8,
	i32 53, i32 88, i32 43, i32 122, i32 110, i32 13, i32 11, i32 148,
	i32 102, i32 115, i32 29, i32 7, i32 136, i32 105, i32 33, i32 20,
	i32 120, i32 139, i32 26, i32 135, i32 5, i32 142, i32 72, i32 52,
	i32 34, i32 65, i32 8, i32 142, i32 6, i32 35, i32 46, i32 2,
	i32 44, i32 97, i32 86, i32 36, i32 125, i32 59, i32 110, i32 70,
	i32 85, i32 1, i32 49, i32 132, i32 88, i32 64, i32 141, i32 68,
	i32 53, i32 78, i32 54, i32 145, i32 63, i32 124, i32 146, i32 150,
	i32 20, i32 92, i32 129, i32 88, i32 24, i32 141, i32 22, i32 118,
	i32 81, i32 125, i32 135, i32 77, i32 111, i32 121, i32 35, i32 127,
	i32 14, i32 77, i32 149, i32 1, i32 56, i32 44, i32 75, i32 115,
	i32 68, i32 48, i32 25, i32 31, i32 130, i32 57, i32 73, i32 95,
	i32 119, i32 55, i32 147, i32 103, i32 15, i32 38, i32 92, i32 67,
	i32 139, i32 100, i32 3, i32 122, i32 40, i32 126, i32 66, i32 95,
	i32 134, i32 98, i32 142, i32 56, i32 5, i32 38, i32 89, i32 113,
	i32 110, i32 45, i32 4, i32 127, i32 147, i32 87, i32 123, i32 44,
	i32 128, i32 101, i32 75, i32 69, i32 3, i32 105, i32 9, i32 56,
	i32 126, i32 18, i32 48, i32 43, i32 69, i32 43, i32 79, i32 46,
	i32 2, i32 50, i32 28, i32 18, i32 122, i32 14, i32 98, i32 91,
	i32 11, i32 113, i32 36, i32 83, i32 128, i32 17, i32 27, i32 72,
	i32 7, i32 99, i32 25, i32 4, i32 17, i32 117, i32 96, i32 118,
	i32 100, i32 85, i32 57, i32 37, i32 74, i32 58, i32 144, i32 33,
	i32 62, i32 65, i32 29, i32 51, i32 32, i32 104, i32 33, i32 36,
	i32 138, i32 107, i32 47, i32 123, i32 89, i32 146, i32 50, i32 98,
	i32 77, i32 103, i32 9, i32 69, i32 60, i32 139, i32 93, i32 50,
	i32 49, i32 78, i32 10, i32 23, i32 55, i32 22, i32 21, i32 106,
	i32 55, i32 35, i32 34, i32 108, i32 75, i32 45, i32 70, i32 135,
	i32 112, i32 1, i32 17, i32 108, i32 91, i32 6, i32 13, i32 48,
	i32 100, i32 93, i32 111, i32 80, i32 16, i32 61, i32 37, i32 59,
	i32 19, i32 102, i32 78, i32 74, i32 131, i32 87, i32 81, i32 109,
	i32 145, i32 104, i32 16, i32 117, i32 131, i32 83, i32 71, i32 73,
	i32 12, i32 41, i32 121, i32 114, i32 39, i32 5, i32 111, i32 128,
	i32 74, i32 143, i32 23, i32 19, i32 140, i32 99, i32 148, i32 118,
	i32 51, i32 76, i32 26, i32 136, i32 3, i32 60, i32 65, i32 10,
	i32 0, i32 109, i32 137, i32 41, i32 26, i32 147, i32 92, i32 22,
	i32 15, i32 143, i32 96, i32 58, i32 114, i32 86, i32 64, i32 63,
	i32 0, i32 101, i32 112, i32 61, i32 54, i32 15, i32 86, i32 52,
	i32 76, i32 99, i32 116, i32 79, i32 121, i32 119, i32 132, i32 140,
	i32 95, i32 28, i32 133, i32 20, i32 23, i32 34, i32 136, i32 89,
	i32 90, i32 32, i32 116, i32 84, i32 103, i32 120, i32 125, i32 73,
	i32 104, i32 126, i32 63, i32 119, i32 40, i32 14, i32 39, i32 76,
	i32 83, i32 84, i32 37, i32 41, i32 38, i32 52, i32 94, i32 30,
	i32 30, i32 112, i32 133, i32 40, i32 130, i32 134, i32 32, i32 143,
	i32 11, i32 62, i32 133, i32 67, i32 109, i32 127, i32 120, i32 116,
	i32 13, i32 21, i32 51, i32 12, i32 7, i32 129, i32 150, i32 60,
	i32 91, i32 57, i32 113, i32 80, i32 66, i32 47, i32 124, i32 61,
	i32 6, i32 102, i32 45, i32 54, i32 105, i32 19, i32 87, i32 144,
	i32 108, i32 137, i32 67, i32 4, i32 117, i32 31, i32 49, i32 29,
	i32 82, i32 140, i32 10, i32 42, i32 0, i32 138, i32 53, i32 114,
	i32 79, i32 71, i32 132, i32 72, i32 28
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

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

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
