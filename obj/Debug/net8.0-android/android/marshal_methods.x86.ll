; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [326 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [646 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 246
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 280
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 194
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 289
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 193
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 264
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 319
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 264
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 284
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 220
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 266
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 318
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 319
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 218
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 240
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 223
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 242
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 239
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 290
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 43: Microsoft.Extensions.Http.dll => 0x115c82ee => 182
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 209
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 303
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 241
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 302
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 290
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 364942007, ; 52: SkiaSharp.Extended.UI => 0x15c092b7 => 198
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 382590210, ; 57: SkiaSharp.Extended.dll => 0x16cddd02 => 197
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 391009394, ; 59: ChatGPT.dll => 0x174e5472 => 0
	i32 392610295, ; 60: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 61: _Microsoft.Android.Resource.Designer => 0x17969339 => 322
	i32 403441872, ; 62: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 63: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 314
	i32 441335492, ; 64: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 224
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 237
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 239
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 252
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 301
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 295
	i32 504833739, ; 77: SkiaSharp.SceneGraph => 0x1e1726cb => 199
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 187
	i32 525008092, ; 79: SkiaSharp.dll => 0x1f4afcdc => 196
	i32 526420162, ; 80: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 81: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 298
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 284
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 84: Microsoft.Extensions.Logging => 0x20216150 => 183
	i32 540030774, ; 85: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 87: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 88: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 177
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 277
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 275
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 93: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 309
	i32 597488923, ; 94: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 97: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 229
	i32 639843206, ; 99: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 235
	i32 643868501, ; 100: System.Net => 0x2660a755 => 81
	i32 662205335, ; 101: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 102: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 271
	i32 666292255, ; 103: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 216
	i32 672442732, ; 104: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 105: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 106: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 289
	i32 690569205, ; 107: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 690602616, ; 108: SkiaSharp.Skottie.dll => 0x2929c278 => 200
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 286
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 281
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 304
	i32 709557578, ; 115: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 292
	i32 720511267, ; 116: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 285
	i32 722857257, ; 117: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 118: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 738469988, ; 119: SkiaSharp.SceneGraph.dll => 0x2c042864 => 199
	i32 752232764, ; 120: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 121: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 206
	i32 759454413, ; 122: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 123: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 124: System.IO.Compression => 0x2e394f87 => 46
	i32 778804420, ; 125: SkiaSharp.Extended.UI.dll => 0x2e6b9cc4 => 198
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 186
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 230
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 244
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 257
	i32 870878177, ; 135: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 288
	i32 873119928, ; 136: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 137: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 138: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 139: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 140: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 141: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 316
	i32 928116545, ; 142: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 280
	i32 952186615, ; 143: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 144: Newtonsoft.Json => 0x38f24a24 => 194
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 285
	i32 966729478, ; 146: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 278
	i32 967690846, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 241
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 153: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 320
	i32 994442037, ; 154: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 155: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 294
	i32 1001831731, ; 156: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 157: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 261
	i32 1019214401, ; 158: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 159: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1029334545, ; 160: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 291
	i32 1031528504, ; 161: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 279
	i32 1035644815, ; 162: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 214
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 164: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 165: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 248
	i32 1067306892, ; 166: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 167: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 168: Xamarin.Kotlin.StdLib => 0x409e66d8 => 282
	i32 1098259244, ; 169: System => 0x41761b2c => 164
	i32 1121599056, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 247
	i32 1127624469, ; 171: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 185
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 274
	i32 1170634674, ; 173: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 174: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 270
	i32 1178241025, ; 175: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 255
	i32 1178797549, ; 176: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 295
	i32 1203215381, ; 177: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 308
	i32 1204270330, ; 178: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 216
	i32 1208641965, ; 179: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 180: CommunityToolkit.Mvvm => 0x4868cc7b => 175
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 306
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 275
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 185: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 265
	i32 1267360935, ; 186: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 269
	i32 1273260888, ; 187: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 221
	i32 1275534314, ; 188: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 286
	i32 1278448581, ; 189: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 213
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 232
	i32 1309188875, ; 191: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 192: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 274
	i32 1324164729, ; 193: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 194: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 195: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 196: Xamarin.AndroidX.SavedState => 0x52114ed3 => 261
	i32 1379779777, ; 197: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 198: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 199: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 225
	i32 1408764838, ; 200: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 201: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 202: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 278
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 210: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 211: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 212: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 213: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 215
	i32 1470490898, ; 214: Microsoft.Extensions.Primitives => 0x57a5e912 => 187
	i32 1479771757, ; 215: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 216: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 217: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 218: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 262
	i32 1493001747, ; 219: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 298
	i32 1505131794, ; 220: Microsoft.Extensions.Http => 0x59b67d12 => 182
	i32 1514721132, ; 221: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 293
	i32 1536373174, ; 222: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 223: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 224: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 225: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 226: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 313
	i32 1554762148, ; 227: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 296
	i32 1565862583, ; 228: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 229: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 230: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 231: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 232: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 314
	i32 1582372066, ; 233: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 231
	i32 1591080825, ; 234: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 321
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 279
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 238: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618067638, ; 239: System.Speech => 0x6071c0b6 => 204
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 251
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1623212457, ; 243: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 202
	i32 1624863272, ; 244: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 273
	i32 1634654947, ; 245: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 246: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 235
	i32 1636350590, ; 247: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 228
	i32 1639515021, ; 248: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 249: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 250: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 251: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 252: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 267
	i32 1658251792, ; 253: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 276
	i32 1670060433, ; 254: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 223
	i32 1675553242, ; 255: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 256: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 257: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 258: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 259: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 260: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 261: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 283
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 244
	i32 1724472758, ; 264: SkiaSharp.Extended => 0x66c95db6 => 197
	i32 1726116996, ; 265: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 266: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 267: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 219
	i32 1736233607, ; 268: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 311
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 270: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 271: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 272: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 273: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 274: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 275: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 266
	i32 1770582343, ; 276: Microsoft.Extensions.Logging.dll => 0x6988f147 => 183
	i32 1776026572, ; 277: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 278: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 279: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 280: Xamarin.AndroidX.Fragment => 0x6a96652d => 237
	i32 1796167890, ; 281: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 177
	i32 1808609942, ; 282: Xamarin.AndroidX.Loader => 0x6bcd3296 => 251
	i32 1809966115, ; 283: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 306
	i32 1813058853, ; 284: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 282
	i32 1813201214, ; 285: Xamarin.Google.Android.Material => 0x6c13413e => 276
	i32 1818569960, ; 286: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 256
	i32 1818787751, ; 287: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 288: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 300
	i32 1824175904, ; 289: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 290: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 291: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 184
	i32 1842015223, ; 292: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 317
	i32 1847515442, ; 293: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 206
	i32 1858542181, ; 294: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 295: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 296: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 297: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 217
	i32 1888955245, ; 298: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 299: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 300: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 301: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 302: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 303: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 304: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 305: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 303
	i32 1961813231, ; 306: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 263
	i32 1968388702, ; 307: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1983156543, ; 308: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 283
	i32 1985761444, ; 309: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 208
	i32 2011961780, ; 310: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 311: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 299
	i32 2019465201, ; 312: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 248
	i32 2025202353, ; 313: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 288
	i32 2031763787, ; 314: Xamarin.Android.Glide => 0x791a414b => 205
	i32 2043674646, ; 315: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 302
	i32 2045470958, ; 316: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 317: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 243
	i32 2060060697, ; 318: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 319: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 320: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 321: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 322: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 323: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 324: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 325: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 326: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 304
	i32 2159891885, ; 327: Microsoft.Maui => 0x80bd55ad => 191
	i32 2165051842, ; 328: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 311
	i32 2181898931, ; 329: Microsoft.Extensions.Options.dll => 0x820d22b3 => 186
	i32 2192057212, ; 330: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 184
	i32 2193016926, ; 331: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2196353150, ; 332: OpenAI_API.dll => 0x82e9b07e => 195
	i32 2201107256, ; 333: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 287
	i32 2201231467, ; 334: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 335: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 270
	i32 2222056684, ; 336: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 337: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 252
	i32 2252106437, ; 338: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 339: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 340: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 341: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 342: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 207
	i32 2270573516, ; 343: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 296
	i32 2279755925, ; 344: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 259
	i32 2289298199, ; 345: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 315
	i32 2293034957, ; 346: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 347: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 348: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 349: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 350: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 211
	i32 2320631194, ; 351: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 352: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 353: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 354: System.Net.Primitives => 0x8c40e0db => 70
	i32 2364201794, ; 355: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 203
	i32 2368005991, ; 356: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 357: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 316
	i32 2371007202, ; 358: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 359: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 360: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 361: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 362: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 234
	i32 2421380589, ; 363: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 364: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 307
	i32 2423080555, ; 365: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 221
	i32 2435356389, ; 366: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 367: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 368: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 369: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 370: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 371: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 224
	i32 2471841756, ; 372: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 373: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 374: Microsoft.Maui.Controls => 0x93dba8a1 => 189
	i32 2483903535, ; 375: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 376: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 377: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 378: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 246
	i32 2520433370, ; 380: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 313
	i32 2522472828, ; 381: Xamarin.Android.Glide.dll => 0x9659e17c => 205
	i32 2538310050, ; 382: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 383: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 384: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 385: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 247
	i32 2581819634, ; 386: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 269
	i32 2585220780, ; 387: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 388: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 389: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 390: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 287
	i32 2615233544, ; 391: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 238
	i32 2616218305, ; 392: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 185
	i32 2617129537, ; 393: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 394: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 395: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 228
	i32 2624644809, ; 396: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 233
	i32 2625339995, ; 397: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 203
	i32 2627185994, ; 398: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 399: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 400: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 242
	i32 2663391936, ; 401: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 207
	i32 2663698177, ; 402: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 403: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 404: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 405: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 406: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 407: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 408: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 267
	i32 2715334215, ; 409: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 410: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 411: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 412: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 413: Xamarin.AndroidX.Activity => 0xa2e0939b => 209
	i32 2735172069, ; 414: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 415: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 215
	i32 2740948882, ; 416: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 417: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 418: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 190
	i32 2764765095, ; 419: Microsoft.Maui.dll => 0xa4caf7a7 => 191
	i32 2765824710, ; 420: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 421: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 281
	i32 2778768386, ; 422: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 272
	i32 2779977773, ; 423: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 260
	i32 2788224221, ; 424: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 238
	i32 2795602088, ; 425: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 201
	i32 2801831435, ; 426: Microsoft.Maui.Graphics => 0xa7008e0b => 193
	i32 2802068195, ; 427: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 317
	i32 2803228030, ; 428: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 429: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 294
	i32 2810250172, ; 430: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 225
	i32 2819470561, ; 431: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 432: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 433: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 260
	i32 2824502124, ; 434: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 435: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 307
	i32 2838993487, ; 436: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 249
	i32 2849599387, ; 437: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 438: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 272
	i32 2855708567, ; 439: Xamarin.AndroidX.Transition => 0xaa36a797 => 268
	i32 2857259519, ; 440: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 293
	i32 2861098320, ; 441: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 442: Microsoft.Maui.Essentials => 0xaa8a4878 => 192
	i32 2863157225, ; 443: ChatGPT => 0xaaa84fe9 => 0
	i32 2868488919, ; 444: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 445: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 210
	i32 2875164099, ; 446: Jsr305Binding.dll => 0xab5f85c3 => 277
	i32 2875220617, ; 447: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 448: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 312
	i32 2884993177, ; 449: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 236
	i32 2887636118, ; 450: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 451: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 452: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 453: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 454: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 455: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2912489636, ; 456: SkiaSharp.Views.Android => 0xad9910a4 => 201
	i32 2916838712, ; 457: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 273
	i32 2918854544, ; 458: System.Speech.dll => 0xadfa2f90 => 204
	i32 2919462931, ; 459: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 460: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 212
	i32 2936416060, ; 461: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 462: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 463: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 464: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 465: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 466: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 467: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 232
	i32 2987532451, ; 468: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 263
	i32 2996846495, ; 469: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 245
	i32 3016983068, ; 470: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 265
	i32 3023353419, ; 471: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 472: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 240
	i32 3038032645, ; 473: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 322
	i32 3056245963, ; 474: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 262
	i32 3057625584, ; 475: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 253
	i32 3059408633, ; 476: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 477: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 478: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 479: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 300
	i32 3090735792, ; 480: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 481: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 482: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 483: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 484: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 485: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 486: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 487: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 488: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 489: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 490: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 491: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 254
	i32 3192346100, ; 492: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 493: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 494: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 495: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 496: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 231
	i32 3220365878, ; 497: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 498: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 499: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 500: Xamarin.AndroidX.CardView => 0xc235e84d => 219
	i32 3265493905, ; 501: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 502: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 503: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 504: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 505: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 506: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 507: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 508: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 509: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 510: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 229
	i32 3317144872, ; 511: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 512: SkiaSharp => 0xc71a4669 => 196
	i32 3340431453, ; 513: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 217
	i32 3345895724, ; 514: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 258
	i32 3346324047, ; 515: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 255
	i32 3358260929, ; 516: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 517: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 210
	i32 3362522851, ; 518: Xamarin.AndroidX.Core => 0xc86c06e3 => 226
	i32 3366347497, ; 519: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 520: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 259
	i32 3395150330, ; 521: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 522: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 523: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 230
	i32 3428513518, ; 524: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 525: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 526: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 527: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 233
	i32 3445260447, ; 528: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 529: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 188
	i32 3463511458, ; 530: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 299
	i32 3471940407, ; 531: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3473156932, ; 532: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 202
	i32 3476120550, ; 533: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 534: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 312
	i32 3485117614, ; 535: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 536: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 537: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 222
	i32 3509114376, ; 538: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 539: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 540: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 541: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 542: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 318
	i32 3560100363, ; 543: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 544: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 545: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 292
	i32 3597029428, ; 546: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 208
	i32 3598340787, ; 547: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 548: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 549: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 291
	i32 3624195450, ; 550: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 551: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 257
	i32 3633644679, ; 552: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 212
	i32 3638274909, ; 553: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 554: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 243
	i32 3643854240, ; 555: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 254
	i32 3645089577, ; 556: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 557: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 309
	i32 3657292374, ; 558: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 559: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 560: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 297
	i32 3663323240, ; 561: SkiaSharp.Skottie => 0xda59e068 => 200
	i32 3672681054, ; 562: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 563: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 218
	i32 3684561358, ; 564: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 222
	i32 3686075795, ; 565: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 305
	i32 3697841164, ; 566: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 321
	i32 3700866549, ; 567: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 568: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 227
	i32 3712658565, ; 569: OpenAI_API => 0xdd4aac85 => 195
	i32 3716563718, ; 570: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 571: Xamarin.AndroidX.Annotation => 0xdda814c6 => 211
	i32 3724971120, ; 572: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 253
	i32 3732100267, ; 573: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 574: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 575: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 576: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 577: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 220
	i32 3792276235, ; 578: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 579: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 188
	i32 3802395368, ; 580: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 581: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 582: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 583: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 584: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 585: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 586: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 587: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 588: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 589: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 590: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 591: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 592: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 268
	i32 3888767677, ; 593: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 258
	i32 3889960447, ; 594: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 320
	i32 3896106733, ; 595: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 596: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 226
	i32 3901907137, ; 597: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 598: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 599: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 271
	i32 3928044579, ; 600: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 601: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 602: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 256
	i32 3945713374, ; 603: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 604: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 605: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 214
	i32 3959773229, ; 606: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 245
	i32 3980434154, ; 607: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 315
	i32 3987592930, ; 608: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 297
	i32 4003436829, ; 609: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 610: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 213
	i32 4025784931, ; 611: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 612: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 190
	i32 4054681211, ; 613: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 614: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 615: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 301
	i32 4073602200, ; 616: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 617: Microsoft.Maui.Essentials.dll => 0xf40add04 => 192
	i32 4099507663, ; 618: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 619: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 620: Xamarin.AndroidX.Emoji2 => 0xf479582c => 234
	i32 4102112229, ; 621: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 310
	i32 4119206479, ; 622: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 308
	i32 4125707920, ; 623: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 305
	i32 4126470640, ; 624: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 625: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 626: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 627: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 628: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 629: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 630: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 631: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 632: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 633: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 250
	i32 4185676441, ; 634: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 635: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 636: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 637: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 310
	i32 4256097574, ; 638: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 227
	i32 4258378803, ; 639: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 249
	i32 4260525087, ; 640: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 641: Microsoft.Maui.Controls.dll => 0xfea12dee => 189
	i32 4274623895, ; 642: CommunityToolkit.Mvvm.dll => 0xfec99597 => 175
	i32 4274976490, ; 643: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 644: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 250
	i32 4294763496 ; 645: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 236
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [646 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 246, ; 3
	i32 280, ; 4
	i32 48, ; 5
	i32 194, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 289, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 193, ; 12
	i32 102, ; 13
	i32 264, ; 14
	i32 319, ; 15
	i32 107, ; 16
	i32 264, ; 17
	i32 139, ; 18
	i32 284, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 220, ; 23
	i32 132, ; 24
	i32 266, ; 25
	i32 151, ; 26
	i32 318, ; 27
	i32 319, ; 28
	i32 18, ; 29
	i32 218, ; 30
	i32 26, ; 31
	i32 240, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 223, ; 37
	i32 147, ; 38
	i32 242, ; 39
	i32 239, ; 40
	i32 290, ; 41
	i32 54, ; 42
	i32 182, ; 43
	i32 69, ; 44
	i32 209, ; 45
	i32 83, ; 46
	i32 303, ; 47
	i32 241, ; 48
	i32 302, ; 49
	i32 290, ; 50
	i32 131, ; 51
	i32 198, ; 52
	i32 55, ; 53
	i32 149, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 197, ; 57
	i32 62, ; 58
	i32 0, ; 59
	i32 146, ; 60
	i32 322, ; 61
	i32 165, ; 62
	i32 314, ; 63
	i32 224, ; 64
	i32 12, ; 65
	i32 237, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 239, ; 72
	i32 252, ; 73
	i32 84, ; 74
	i32 301, ; 75
	i32 295, ; 76
	i32 199, ; 77
	i32 187, ; 78
	i32 196, ; 79
	i32 150, ; 80
	i32 298, ; 81
	i32 284, ; 82
	i32 60, ; 83
	i32 183, ; 84
	i32 51, ; 85
	i32 103, ; 86
	i32 114, ; 87
	i32 177, ; 88
	i32 40, ; 89
	i32 277, ; 90
	i32 275, ; 91
	i32 120, ; 92
	i32 309, ; 93
	i32 173, ; 94
	i32 52, ; 95
	i32 44, ; 96
	i32 119, ; 97
	i32 229, ; 98
	i32 235, ; 99
	i32 81, ; 100
	i32 136, ; 101
	i32 271, ; 102
	i32 216, ; 103
	i32 8, ; 104
	i32 73, ; 105
	i32 289, ; 106
	i32 155, ; 107
	i32 200, ; 108
	i32 286, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 281, ; 112
	i32 45, ; 113
	i32 304, ; 114
	i32 292, ; 115
	i32 285, ; 116
	i32 109, ; 117
	i32 129, ; 118
	i32 199, ; 119
	i32 25, ; 120
	i32 206, ; 121
	i32 72, ; 122
	i32 55, ; 123
	i32 46, ; 124
	i32 198, ; 125
	i32 186, ; 126
	i32 230, ; 127
	i32 22, ; 128
	i32 244, ; 129
	i32 86, ; 130
	i32 43, ; 131
	i32 160, ; 132
	i32 71, ; 133
	i32 257, ; 134
	i32 288, ; 135
	i32 3, ; 136
	i32 42, ; 137
	i32 63, ; 138
	i32 16, ; 139
	i32 53, ; 140
	i32 316, ; 141
	i32 280, ; 142
	i32 105, ; 143
	i32 194, ; 144
	i32 285, ; 145
	i32 278, ; 146
	i32 241, ; 147
	i32 34, ; 148
	i32 158, ; 149
	i32 85, ; 150
	i32 32, ; 151
	i32 12, ; 152
	i32 320, ; 153
	i32 51, ; 154
	i32 294, ; 155
	i32 56, ; 156
	i32 261, ; 157
	i32 36, ; 158
	i32 181, ; 159
	i32 291, ; 160
	i32 279, ; 161
	i32 214, ; 162
	i32 35, ; 163
	i32 58, ; 164
	i32 248, ; 165
	i32 176, ; 166
	i32 17, ; 167
	i32 282, ; 168
	i32 164, ; 169
	i32 247, ; 170
	i32 185, ; 171
	i32 274, ; 172
	i32 153, ; 173
	i32 270, ; 174
	i32 255, ; 175
	i32 295, ; 176
	i32 308, ; 177
	i32 216, ; 178
	i32 29, ; 179
	i32 175, ; 180
	i32 52, ; 181
	i32 306, ; 182
	i32 275, ; 183
	i32 5, ; 184
	i32 265, ; 185
	i32 269, ; 186
	i32 221, ; 187
	i32 286, ; 188
	i32 213, ; 189
	i32 232, ; 190
	i32 85, ; 191
	i32 274, ; 192
	i32 61, ; 193
	i32 112, ; 194
	i32 57, ; 195
	i32 261, ; 196
	i32 99, ; 197
	i32 19, ; 198
	i32 225, ; 199
	i32 111, ; 200
	i32 101, ; 201
	i32 102, ; 202
	i32 104, ; 203
	i32 278, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 9, ; 210
	i32 123, ; 211
	i32 46, ; 212
	i32 215, ; 213
	i32 187, ; 214
	i32 9, ; 215
	i32 43, ; 216
	i32 4, ; 217
	i32 262, ; 218
	i32 298, ; 219
	i32 182, ; 220
	i32 293, ; 221
	i32 31, ; 222
	i32 138, ; 223
	i32 92, ; 224
	i32 93, ; 225
	i32 313, ; 226
	i32 296, ; 227
	i32 49, ; 228
	i32 141, ; 229
	i32 112, ; 230
	i32 140, ; 231
	i32 314, ; 232
	i32 231, ; 233
	i32 321, ; 234
	i32 115, ; 235
	i32 279, ; 236
	i32 157, ; 237
	i32 76, ; 238
	i32 204, ; 239
	i32 79, ; 240
	i32 251, ; 241
	i32 37, ; 242
	i32 202, ; 243
	i32 273, ; 244
	i32 174, ; 245
	i32 235, ; 246
	i32 228, ; 247
	i32 64, ; 248
	i32 138, ; 249
	i32 15, ; 250
	i32 116, ; 251
	i32 267, ; 252
	i32 276, ; 253
	i32 223, ; 254
	i32 48, ; 255
	i32 70, ; 256
	i32 80, ; 257
	i32 126, ; 258
	i32 94, ; 259
	i32 121, ; 260
	i32 283, ; 261
	i32 26, ; 262
	i32 244, ; 263
	i32 197, ; 264
	i32 97, ; 265
	i32 28, ; 266
	i32 219, ; 267
	i32 311, ; 268
	i32 149, ; 269
	i32 169, ; 270
	i32 4, ; 271
	i32 98, ; 272
	i32 33, ; 273
	i32 93, ; 274
	i32 266, ; 275
	i32 183, ; 276
	i32 21, ; 277
	i32 41, ; 278
	i32 170, ; 279
	i32 237, ; 280
	i32 177, ; 281
	i32 251, ; 282
	i32 306, ; 283
	i32 282, ; 284
	i32 276, ; 285
	i32 256, ; 286
	i32 2, ; 287
	i32 300, ; 288
	i32 134, ; 289
	i32 111, ; 290
	i32 184, ; 291
	i32 317, ; 292
	i32 206, ; 293
	i32 58, ; 294
	i32 95, ; 295
	i32 39, ; 296
	i32 217, ; 297
	i32 25, ; 298
	i32 94, ; 299
	i32 89, ; 300
	i32 99, ; 301
	i32 10, ; 302
	i32 87, ; 303
	i32 100, ; 304
	i32 303, ; 305
	i32 263, ; 306
	i32 178, ; 307
	i32 283, ; 308
	i32 208, ; 309
	i32 7, ; 310
	i32 299, ; 311
	i32 248, ; 312
	i32 288, ; 313
	i32 205, ; 314
	i32 302, ; 315
	i32 88, ; 316
	i32 243, ; 317
	i32 154, ; 318
	i32 33, ; 319
	i32 116, ; 320
	i32 82, ; 321
	i32 20, ; 322
	i32 11, ; 323
	i32 162, ; 324
	i32 3, ; 325
	i32 304, ; 326
	i32 191, ; 327
	i32 311, ; 328
	i32 186, ; 329
	i32 184, ; 330
	i32 84, ; 331
	i32 195, ; 332
	i32 287, ; 333
	i32 64, ; 334
	i32 270, ; 335
	i32 143, ; 336
	i32 252, ; 337
	i32 157, ; 338
	i32 41, ; 339
	i32 117, ; 340
	i32 179, ; 341
	i32 207, ; 342
	i32 296, ; 343
	i32 259, ; 344
	i32 315, ; 345
	i32 131, ; 346
	i32 75, ; 347
	i32 66, ; 348
	i32 172, ; 349
	i32 211, ; 350
	i32 143, ; 351
	i32 106, ; 352
	i32 151, ; 353
	i32 70, ; 354
	i32 203, ; 355
	i32 156, ; 356
	i32 316, ; 357
	i32 178, ; 358
	i32 121, ; 359
	i32 127, ; 360
	i32 152, ; 361
	i32 234, ; 362
	i32 141, ; 363
	i32 307, ; 364
	i32 221, ; 365
	i32 20, ; 366
	i32 14, ; 367
	i32 135, ; 368
	i32 75, ; 369
	i32 59, ; 370
	i32 224, ; 371
	i32 167, ; 372
	i32 168, ; 373
	i32 189, ; 374
	i32 15, ; 375
	i32 74, ; 376
	i32 6, ; 377
	i32 23, ; 378
	i32 246, ; 379
	i32 313, ; 380
	i32 205, ; 381
	i32 91, ; 382
	i32 1, ; 383
	i32 136, ; 384
	i32 247, ; 385
	i32 269, ; 386
	i32 134, ; 387
	i32 69, ; 388
	i32 146, ; 389
	i32 287, ; 390
	i32 238, ; 391
	i32 185, ; 392
	i32 88, ; 393
	i32 96, ; 394
	i32 228, ; 395
	i32 233, ; 396
	i32 203, ; 397
	i32 31, ; 398
	i32 45, ; 399
	i32 242, ; 400
	i32 207, ; 401
	i32 109, ; 402
	i32 158, ; 403
	i32 35, ; 404
	i32 22, ; 405
	i32 114, ; 406
	i32 57, ; 407
	i32 267, ; 408
	i32 144, ; 409
	i32 118, ; 410
	i32 120, ; 411
	i32 110, ; 412
	i32 209, ; 413
	i32 139, ; 414
	i32 215, ; 415
	i32 54, ; 416
	i32 105, ; 417
	i32 190, ; 418
	i32 191, ; 419
	i32 133, ; 420
	i32 281, ; 421
	i32 272, ; 422
	i32 260, ; 423
	i32 238, ; 424
	i32 201, ; 425
	i32 193, ; 426
	i32 317, ; 427
	i32 159, ; 428
	i32 294, ; 429
	i32 225, ; 430
	i32 163, ; 431
	i32 132, ; 432
	i32 260, ; 433
	i32 161, ; 434
	i32 307, ; 435
	i32 249, ; 436
	i32 140, ; 437
	i32 272, ; 438
	i32 268, ; 439
	i32 293, ; 440
	i32 169, ; 441
	i32 192, ; 442
	i32 0, ; 443
	i32 174, ; 444
	i32 210, ; 445
	i32 277, ; 446
	i32 40, ; 447
	i32 312, ; 448
	i32 236, ; 449
	i32 81, ; 450
	i32 56, ; 451
	i32 37, ; 452
	i32 97, ; 453
	i32 166, ; 454
	i32 172, ; 455
	i32 201, ; 456
	i32 273, ; 457
	i32 204, ; 458
	i32 82, ; 459
	i32 212, ; 460
	i32 98, ; 461
	i32 30, ; 462
	i32 159, ; 463
	i32 18, ; 464
	i32 127, ; 465
	i32 119, ; 466
	i32 232, ; 467
	i32 263, ; 468
	i32 245, ; 469
	i32 265, ; 470
	i32 165, ; 471
	i32 240, ; 472
	i32 322, ; 473
	i32 262, ; 474
	i32 253, ; 475
	i32 170, ; 476
	i32 16, ; 477
	i32 144, ; 478
	i32 300, ; 479
	i32 125, ; 480
	i32 118, ; 481
	i32 38, ; 482
	i32 115, ; 483
	i32 47, ; 484
	i32 142, ; 485
	i32 117, ; 486
	i32 34, ; 487
	i32 176, ; 488
	i32 95, ; 489
	i32 53, ; 490
	i32 254, ; 491
	i32 129, ; 492
	i32 153, ; 493
	i32 24, ; 494
	i32 161, ; 495
	i32 231, ; 496
	i32 148, ; 497
	i32 104, ; 498
	i32 89, ; 499
	i32 219, ; 500
	i32 60, ; 501
	i32 142, ; 502
	i32 100, ; 503
	i32 5, ; 504
	i32 13, ; 505
	i32 122, ; 506
	i32 135, ; 507
	i32 28, ; 508
	i32 72, ; 509
	i32 229, ; 510
	i32 24, ; 511
	i32 196, ; 512
	i32 217, ; 513
	i32 258, ; 514
	i32 255, ; 515
	i32 137, ; 516
	i32 210, ; 517
	i32 226, ; 518
	i32 168, ; 519
	i32 259, ; 520
	i32 101, ; 521
	i32 123, ; 522
	i32 230, ; 523
	i32 180, ; 524
	i32 163, ; 525
	i32 167, ; 526
	i32 233, ; 527
	i32 39, ; 528
	i32 188, ; 529
	i32 299, ; 530
	i32 17, ; 531
	i32 202, ; 532
	i32 171, ; 533
	i32 312, ; 534
	i32 137, ; 535
	i32 150, ; 536
	i32 222, ; 537
	i32 155, ; 538
	i32 130, ; 539
	i32 19, ; 540
	i32 65, ; 541
	i32 318, ; 542
	i32 147, ; 543
	i32 47, ; 544
	i32 292, ; 545
	i32 208, ; 546
	i32 79, ; 547
	i32 61, ; 548
	i32 291, ; 549
	i32 106, ; 550
	i32 257, ; 551
	i32 212, ; 552
	i32 49, ; 553
	i32 243, ; 554
	i32 254, ; 555
	i32 14, ; 556
	i32 309, ; 557
	i32 179, ; 558
	i32 68, ; 559
	i32 297, ; 560
	i32 200, ; 561
	i32 171, ; 562
	i32 218, ; 563
	i32 222, ; 564
	i32 305, ; 565
	i32 321, ; 566
	i32 78, ; 567
	i32 227, ; 568
	i32 195, ; 569
	i32 108, ; 570
	i32 211, ; 571
	i32 253, ; 572
	i32 67, ; 573
	i32 63, ; 574
	i32 27, ; 575
	i32 160, ; 576
	i32 220, ; 577
	i32 10, ; 578
	i32 188, ; 579
	i32 11, ; 580
	i32 173, ; 581
	i32 78, ; 582
	i32 126, ; 583
	i32 83, ; 584
	i32 181, ; 585
	i32 66, ; 586
	i32 107, ; 587
	i32 65, ; 588
	i32 128, ; 589
	i32 122, ; 590
	i32 77, ; 591
	i32 268, ; 592
	i32 258, ; 593
	i32 320, ; 594
	i32 8, ; 595
	i32 226, ; 596
	i32 2, ; 597
	i32 44, ; 598
	i32 271, ; 599
	i32 156, ; 600
	i32 128, ; 601
	i32 256, ; 602
	i32 23, ; 603
	i32 133, ; 604
	i32 214, ; 605
	i32 245, ; 606
	i32 315, ; 607
	i32 297, ; 608
	i32 29, ; 609
	i32 213, ; 610
	i32 62, ; 611
	i32 190, ; 612
	i32 90, ; 613
	i32 87, ; 614
	i32 301, ; 615
	i32 148, ; 616
	i32 192, ; 617
	i32 36, ; 618
	i32 86, ; 619
	i32 234, ; 620
	i32 310, ; 621
	i32 308, ; 622
	i32 305, ; 623
	i32 180, ; 624
	i32 50, ; 625
	i32 6, ; 626
	i32 90, ; 627
	i32 21, ; 628
	i32 162, ; 629
	i32 96, ; 630
	i32 50, ; 631
	i32 113, ; 632
	i32 250, ; 633
	i32 130, ; 634
	i32 76, ; 635
	i32 27, ; 636
	i32 310, ; 637
	i32 227, ; 638
	i32 249, ; 639
	i32 7, ; 640
	i32 189, ; 641
	i32 175, ; 642
	i32 110, ; 643
	i32 250, ; 644
	i32 236 ; 645
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ 87e4a6d890397c13b2572ce01d4b57874ecef9b0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
