'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "8dd5cb9f648dae99342ac8ef7af7ecc7",
".git/config": "0bcb5d291575bb0fd6e06179a134f056",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "c5b55239c0ac5cf6869979b30358cb74",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "fe7454d092c57d2f84d2728f8d222ab9",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b1fc5a81a7882af249bb8f3f0e59cb08",
".git/logs/refs/heads/gh-pages": "c6e63eb69622a579869b070e0b9f300f",
".git/logs/refs/heads/master": "4eb7345c9ffdc5253c6a30bfc27946be",
".git/logs/refs/remotes/origin/gh-pages": "16e334f8d0fb4866b3545aac91f44065",
".git/logs/refs/remotes/origin/master": "1512c22ad0ca41021284a7561f64b76e",
".git/objects/09/04983de6aa195559f2ecb4f5b2a2b9b06c423d": "df689b0ae3bcb658539fe2525f7b1693",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/14/b5819e314d003a203a3abfb5c0906a831b1796": "31e8f32621c7a616601c9d7fbf3e696f",
".git/objects/15/70274b2e2d2953bc1c0b961cce05c3107af581": "890a58d46ab1adc39a65029d28e54dbe",
".git/objects/1b/9109e22b81a7791dad165879ce9d8398b85d9e": "07ea704b9c1f409f233ea0cae8850c86",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/25/eefd316aa63afe8fc4b6efe59eae2101c0bbb0": "d2d6b88577280a0581ea7273ef43eb32",
".git/objects/26/d33521af10bcc7fd8cea344038eaaeb78d0ef5": "39554bb11371007e021a7fb3361ecd47",
".git/objects/27/ef22af43d8728a72fc90abf8226e04fedf765c": "fd6f47aaa24ea2b2cf1f5754e1536ba3",
".git/objects/28/702ad92190df8bcbfedd54dc210e311777a9f3": "0b5b4cf43ec756952c241d1dcdd9f172",
".git/objects/28/a107367089d27f8a4b260333f643cdbe7b85c0": "4b1f38e8f4933a4b4fcb8b3193ae49e9",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/29/40917c7c5f88a245eda9735ca7500ce181ee43": "ee2abfc6312072cc7b9d2338825b53ea",
".git/objects/2a/4dd19f730a891cdf025db071014b28d7dbb215": "a2131fa665e3e85b386a00c03e77944e",
".git/objects/2d/917472f33ef248c20a15021f814092dd30da7d": "6ddde7b01d39540a29c4b30e888754b5",
".git/objects/2d/be6a316fa6c2a8c822661e63686d867051bf98": "0ccd84e8d8f6dc1ab31891548e59e80c",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/30/bab2abb1a9fd88a1356176a99648e4468caba2": "d4f3047e07cb10da0d85b84b92488742",
".git/objects/32/07ef2e6ea755ea585a0aeaa0004ccc4e2fced1": "db97fd99631176caf32bc88eca91a891",
".git/objects/32/cce6f34dfecb1a178847d40912d577eac2fc5b": "b3094ddc06f0f0076fef41af2096e2bd",
".git/objects/32/fdba8b9cd50c70d18da68f9566ef5980ec618c": "278ebb14a21b5c7aba58b932b329271b",
".git/objects/34/a6c35e4fc9347317c018b31dcd7370129a2b34": "edcfdc818597b7288a790ef6ba013fd0",
".git/objects/35/d75676eea486ee5d1fec0812980f4d85f640a2": "2d270177c8850d4f4ea8b06a22670b65",
".git/objects/36/a7019bbeae6854be43c1cb7c216282eaadf0ef": "488890b61918f54d3015254313090b93",
".git/objects/3a/9969aa5c39a956bfa2d569e4cc4028d08ff504": "17fa8d6e0163107828d246020d505fbb",
".git/objects/3d/9e042bb502f18d212b96338f46d320492b38b8": "835dc8ab2f0bd4291fe6b643e538d362",
".git/objects/40/5c33ed152935d1c2f9c4372abe097e5863e029": "15ba1eca1f15c22dfd5c8013d613a3a8",
".git/objects/45/44be56f3d9352af74ed6b60dcbe0c77753b6ea": "ee5d59843d84f5dbb9b934d5b87b9ec9",
".git/objects/45/dc8a20658bd09ecb8ca1c88f94fe80cc4ca286": "3777040b10a836277a4dcd49b2f159fa",
".git/objects/46/eff7bdd86543a89ba76f6eabcfaceece76825b": "3421725b64f2071f405648ce189f8837",
".git/objects/47/3229f99e43bc4b746e851be2082b1deca09571": "774a2acbb6f77dda2f22554ded874d76",
".git/objects/4a/8e228ba7e04f40ffd8e04c33951e2712506901": "f07c9abca50cd614b8b60789c87c1220",
".git/objects/4d/c9edb1b14f83dcd87ee8d73ee614c4faac2ef2": "fd223a4f1d534eac80c61f48897174f7",
".git/objects/4e/5d0672d684b7eb80925b071b5235b10d7cee7d": "ba3d7ac393a8f026e93035b1e63d6777",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/4e/9eb463db058445ce1a2cb71511a7f35f0052a9": "ca201f519cf0114e57acc80b8c82eebc",
".git/objects/51/62de7c87ed53ac11b072c575efa1004f0eb671": "c6a4049028584173ba85d60aa4478678",
".git/objects/53/702f79cedb63775219ebfef8651eaff27897f6": "9f7eaaf7b7677aca96118b15edcf3320",
".git/objects/55/b3abc4d27867cf367af22568d9a02b08ebb60b": "97e8ced0ab28e2d48ed85262b503613d",
".git/objects/56/314cf97156a2b508892dcb6c25a404f54df821": "7971053c3e3e4e949c885a6eed6fb87b",
".git/objects/5e/314fdf1b5ec9693b8d91cde1e4054426799abf": "dfc78612accf8a8046cc19f505ca462b",
".git/objects/5f/9e643ab65af5eb9b367eaae34b372c397a0980": "8da8f78320af6fa0635ae0030c764c1f",
".git/objects/61/8a4258e505869255afa62e21d9e3392d7d3641": "5e09415a167c84e0133865729947de0b",
".git/objects/63/9900d13c6182e452e33a3bd638e70a0146c785": "488924a8ec51457535ebf377a60e23c8",
".git/objects/64/d04191a4f8bea644d90e7d33266a1bc0437354": "0822b4d8c2a2da039eba222e9854b502",
".git/objects/6c/0c0007f2306037f1f4f688f253fb2023bac49c": "5d407c061a7d034fe35b393c1c2af9a1",
".git/objects/6c/6c7bf8fcca6195b63b3e560fa7a5ea3ff294ab": "62d6fe0afbf7201b33741a654282afbb",
".git/objects/6d/84d9072cacb21891528b00917927a21b970e1c": "fdfca89dcea4ef9635f95d305c64ad54",
".git/objects/6f/273a9f10846aad39d572632d200a3c3602acaf": "fa16567cc3b35e883b4dd1a00e3995db",
".git/objects/72/5ee416ea12babaa69f812e3360ce68faa064fd": "31202ac3599410a9714d1d2985b55512",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/76/d40ba2322023d1722b0cd5c03a01b85027d24a": "12500083adddabb4db5df35d4d1c8173",
".git/objects/77/f20d6c91836820904a332fabaf4226851d7a34": "c499e94c6ff881910dd3dbb70be0624c",
".git/objects/79/4cf222525af00aee97c0731b0af1223821cd35": "686cdea020099639ec39295f52bdbda8",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7a/d399c826f7375351811dd4780bc2dd58ea31b4": "f1b52777c379ef447c1bfbf0c4bce0e6",
".git/objects/7d/b1958c73e4e78e47971e6525e45b7c0795c0c2": "5da4005c6905d5c494bd2b40a0b6d566",
".git/objects/7e/3da57ae16ffaa2ef414dd0bae5c10f8f8bfb39": "d6139a743544d03e3c99147c4372c790",
".git/objects/7e/778887b2ee8d099142a0db8f2145d0422f9f7a": "0fca6ad193e34e320737c590d2d44693",
".git/objects/7e/8417f2d976f5759013a711dc58ba557bf39bdb": "75a416be5986bddd9999b2d97998e61c",
".git/objects/7e/ab96dd8978ce1c1447a916d0e5d96ee0b6b19f": "ac11085a7c129a33059a5fb987847830",
".git/objects/7f/f7cc33fe788ab521dd923307cdec42597f04df": "29912425a49327da9d2b221513c5b117",
".git/objects/80/9b0384d859708299801738ef95d928d68135d9": "fc81ee22c10c60e570ab74f3804dd3f8",
".git/objects/80/ab56db95cc8021063e6b7c8c472e8b5b628b83": "40b8707705da84594fc89a3ad0dc9c91",
".git/objects/87/5a90ac0f85980893e2fd806da62d55d9fd6137": "fe2362ef242bcf38a87dbf5b0e39ba62",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/153fc768364e339385170ce41fefd745963414": "808e07094d0eeda3755c773415a91664",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/e255ffa2008cf95221676992931a4862636a21": "c487345e9b4a97f1b0c9507128b17e62",
".git/objects/8d/716388ad270ef95d7b9d8e2fa8c6349df299c5": "62f66e422dc8e122230202371d0ee385",
".git/objects/93/3ea605d3299921d09c98e35fba723d76ce9f16": "fedc7706b76ff6aab1987a1021e907b0",
".git/objects/93/7595f173571723e6fd3b38c569c830a7d3f06b": "91cdeb74a8a0e527168e0b2ffc24fe5a",
".git/objects/94/a25f7f4cb416c083d265558da75d457237d671": "f4ba8c706b5e4a214d83e95a0099370a",
".git/objects/96/72e685142ae4e613e7b5ecd61c5650aaa3f8c7": "56995c8948813d0f8063af152fa1025b",
".git/objects/98/0edda4ae738c9e3a55dfae6d429ba991ab43e6": "d1961ba9cfbc64daf9395ec75f302814",
".git/objects/9a/538a0109d34038d2f918df4b2e2eba8fb32aff": "44aac3b641f61f55ebb20f20182d40bd",
".git/objects/9a/79645dfd8c10f006f813094450bcf05075c4e8": "3cf96e6ff920ec444600253cb500e996",
".git/objects/9a/7a2388e41ce95f94acc51caac85dca44e085b6": "c42b28fb0e0989fbbdcc0b80d56accef",
".git/objects/9c/a7139279c754f3af1d5d76f3a8463b1e23b800": "4f81549aae4d4f40a268faa04ae173c7",
".git/objects/9d/55423e3f6ee58d6fc0c9362b59a783e37f4c16": "94f7ee1ed9d5c47492c9e742e78c83b5",
".git/objects/9e/89bbe6a5fcd437983761f2b3c22c2f080174e0": "47d1d3c6d67616b0b89dd7bcc97b049b",
".git/objects/a0/ef068e533c58c816e90c9bb72d5878ad5479af": "0f485301ebf8d2e8fd51cea5e0ea98b6",
".git/objects/a1/15c4164c441886097a95045c9b21725d01d1d9": "98fa80872265123f59e9d13effc197c6",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a4/2551afc359807e3c43cc2a598b6c9b816854db": "5fee63fdbc34dcb8cf48eff7bf1129a9",
".git/objects/a5/2d223a573ca4c92e9aea0890817f9753a25245": "fe03d3da7441e007288513127c622aa0",
".git/objects/a6/5afc9d75b397dbecc4a86e7ee9b387cd7a9341": "f889d22a002524f396fedde90995f4b3",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b0/36d631d9e3a63a4d56ffd82353b01d0a8a6572": "166fd138821fe352c6db5486fa7c5aef",
".git/objects/b1/3c96e671cb10b312bf6ce392d5dd3c176f9cd5": "086b1674fe88c5f0985821d742782a0a",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/73c4224268aa92d3f84dedf6615afd47e14775": "d29db858cc901576b7fa76790ac99d03",
".git/objects/c3/ccf17dd578a66792b5de0896a771c606bcdd3b": "24090d2c76b397fbca239d53dc545529",
".git/objects/c7/859e12e842bf20d3408d0b39bd287d9af59b02": "df63400a1521d0be201a4d386c146721",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/d4/74edf70935fc94e0ebfc735cc0076e33c12481": "069a6c74766304b97e5e99b35e94e8c1",
".git/objects/d4/b02c5cecca6a496b57cf7be5350fa79b1964e9": "87e65bd99a88e7c3ca08f4a2609fc14e",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/ebd4805981b8400db3e3291c74a743fef9a824": "6c33f0e88a71d9ba8563eab3ee932f04",
".git/objects/d7/1f9bc77d7b1448d4af63c98b887b1d7800b6a5": "a824826b9dc1841a70d8bba2eb111182",
".git/objects/da/61be214a8e408811489837485f08270bac19cf": "b5a833d6c0ad83c01e4d0ca9f0c64bac",
".git/objects/db/2afbae280a40641c6460526b56b2c001d5f4d6": "e76841966e3d73f8d77cdf4ec893dbbd",
".git/objects/dc/68d8a35fff815745995579a01fb882e28efa4a": "d3d64d0527c61ddb5d1b7953b174c294",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/e2ff58b62ecc364fd6640ed622f5ce5a1a2f6c": "c7dd35b3ddc6c78bc4ee4a0fff7035e0",
".git/objects/e8/fb8163c37422b38e1774c74f1167f593c51dee": "4fa26ec2c2eb9796d4be4433f8a448d7",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/261945fda6105aab8a4a3520f4d6f117b8dcce": "f63533ae5e223a5aab62459bbb9ab32a",
".git/objects/f0/d6dab42061b2655c1bcf79b35ec8588dc0f550": "441154b93e361d7a0e1f31f30b9ec19d",
".git/objects/f5/89ca37d210990980a9d9b1a5cb4a29d2db6c70": "8b8d21aac8e6cdbec1fc106163311c31",
".git/objects/f6/821f2bb8d5f4193efb8f3198e917daa7330e17": "9c90df642fe56a773c950a2ff894b1c4",
".git/objects/f7/7048ee487111dd5a440b8a2d27f087668d21dc": "16fd3ce7553409e7543ee37015f74442",
".git/objects/f8/9db1da10e45fe21fb91ef40b26cdeaccee5dbe": "10c4957e92998d1e561b79c6432be044",
".git/objects/pack/pack-fd6316ccee8925c0042fdd754235a8bfe8fdd740.idx": "ac18656c34f1513a36b875bd2268b570",
".git/objects/pack/pack-fd6316ccee8925c0042fdd754235a8bfe8fdd740.pack": "4025d5668dc9810a266d2cef6fb4b2ef",
".git/refs/heads/gh-pages": "5eac31ecdca7af622b1d4d844bbadb26",
".git/refs/heads/master": "080f9cee4540f26b01bb58cfa1a9427e",
".git/refs/remotes/origin/gh-pages": "5eac31ecdca7af622b1d4d844bbadb26",
".git/refs/remotes/origin/master": "c32ffb77d8da793168fa6ca0fb2bc367",
".idea/discord.xml": "95f71d85833c0bafac1cb0ae51730e0b",
".idea/ktfmt.xml": "9617e0a431922b9654fcf6cfd2d2012f",
".idea/libraries/Re_Portfolio.xml": "30f0296623637f75c851c0aedc9f3a91",
".idea/misc.xml": "d4f288593ec15175e0ab2246a477dada",
".idea/modules.xml": "9e76b956e97dbf7d14a4b3d83c8c2375",
".idea/vcs.xml": "a8b625cb090fe904fb7338f6447f50ac",
".idea/web.iml": "24742e734b568c3f23d56498828ad0f3",
".idea/workspace.xml": "db087c4133ecd0094b9a3d0c89241f82",
"assets/AssetManifest.json": "89647697b9d38d2f1ddd33a84da0ef81",
"assets/AssetManifest.smcbin": "9df1ae72f146e8f6fdd0957067cac899",
"assets/assets/bitmap/contacts/Discord.png": "bda91f746a964212836b1e4c4e84bf69",
"assets/assets/bitmap/contacts/Github.png": "18324fb793aab4fd005af3950454fce5",
"assets/assets/bitmap/contacts/Gmail.png": "ed26787a52cb19d033ee20a0f9ff7667",
"assets/assets/bitmap/contacts/LinkedIn.png": "e59b201690bba17617dcb0ae41d641ab",
"assets/assets/bitmap/experiences/Bangkit.jpg": "d3803a73fb6cb82b3aae3878e51274dd",
"assets/assets/bitmap/experiences/SI-GITS.png": "87178f6adbf0022d4f7c0a073c73aeb7",
"assets/assets/bitmap/experiences/Signals99.jpg": "20ff723ca3c97f527cb8af66cb336ffe",
"assets/assets/bitmap/experiences/Traveloka.jpg": "e08f0e173c693413c0c98c963637e17d",
"assets/assets/bitmap/experiences/UM.png": "b185240fc0c7f62fec9a74f6b74cbc94",
"assets/assets/bitmap/experiences/WSE.png": "d5c1c44b8c6338a75071c11813fe3b6a",
"assets/assets/bitmap/header-bg.jpg": "077513ceb720e7b5a799c758650c077a",
"assets/assets/bitmap/header-bg2.png": "54312cfac78fb7115ddcc723871996e0",
"assets/assets/bitmap/logo-jaka.png": "5b6cc489d39a0292fb6b49a5cfd77587",
"assets/assets/bitmap/profile-pic.png": "711b9aa8ad222210c1163bba621babb6",
"assets/assets/bitmap/projects/Brighter%2520-%25201.png": "86d33174cd8804a7b46444850f3ee3fd",
"assets/assets/bitmap/projects/Brighter%2520-%25202.png": "bdf3b4ee55bf8790a70764355be608e1",
"assets/assets/bitmap/projects/Coinsleek%2520-%25201.png": "140b9239a4acd7704f959ea1326e0e01",
"assets/assets/bitmap/projects/Coinsleek%2520-%25202.png": "cb9f2836267c9ca16080f7cdc23004f9",
"assets/assets/bitmap/projects/Coinsleek%2520-%25203.png": "636fa011def570e5af54eb2d4f1fec1d",
"assets/assets/bitmap/projects/Dorplas%2520-%25201.png": "fb5bb943c0c1b3459fd427b6b9b7fc56",
"assets/assets/bitmap/projects/Dorplas%2520-%25202.png": "16422719886349efe84092eaa388a5c9",
"assets/assets/bitmap/projects/Dorplas%2520-%25203.png": "ca41e89fb4de3f672a96df36be03bf65",
"assets/assets/bitmap/projects/HotelBli%2520-%25201.png": "1c7498316b37bb550d1b0039a11de668",
"assets/assets/bitmap/projects/HotelBli%2520-%25202.png": "02ae427cdc723dab7628e9b8b59fcca6",
"assets/assets/bitmap/projects/HotelBli%2520-%25203.png": "509691c0f99ddc98bdf9665812f5ebe4",
"assets/assets/bitmap/projects/HotelBli%2520-%25204.png": "2b894d84fdefc457a0512285d2cd3728",
"assets/assets/bitmap/projects/ICEEIE%2520-%25201.png": "c0a4c01cfc189041770bbf5ca8c8e86a",
"assets/assets/bitmap/projects/ICEEIE%2520-%25202.png": "465f4aa01a2aae228bb761c1a412bb73",
"assets/assets/bitmap/projects/Karyaku%2520-%25201.png": "6c17ea812bbe0e80edc81c9167226de8",
"assets/assets/bitmap/projects/Karyaku%2520-%25202.png": "dfcd1a77b5245ed4d97efef035cd9c3a",
"assets/assets/bitmap/projects/Karyaku%2520-%25203.png": "5e98acfd9c053b17d973dd2291f71674",
"assets/assets/bitmap/projects/Re_Portfolio.zip": "47438ec517bc7d491ec837e4a710d865",
"assets/assets/bitmap/projects/Siotang%2520-%25201.png": "677215dd98524952a2aeecd9ff74e7c6",
"assets/assets/bitmap/projects/Siotang%2520-%25202.png": "74cb1c9024f4bdc1245bad2e748aba81",
"assets/assets/bitmap/projects/Wisecrypto%2520-%25201.png": "49b687b31414f7798ed3fd5eb684bc06",
"assets/assets/bitmap/projects/Wisecrypto%2520-%25202.png": "b7dafc8b2388a4cbeb6ea229232e5011",
"assets/assets/bitmap/skills/bootstrap4.png": "828a3fe296bf92d9dd1b0e6e9744bebe",
"assets/assets/bitmap/skills/codeigniter.png": "51d66772611e5f2c26df555768534e7e",
"assets/assets/bitmap/skills/figma.png": "2053f2ae066afdecd97f18fcfa7fd839",
"assets/assets/bitmap/skills/flutter.png": "e038d7f55d1c679d7b74a87b6787b6ea",
"assets/assets/bitmap/skills/git.png": "bfc02e32825e896476117b992d45180d",
"assets/assets/bitmap/skills/javascript.png": "375ea6682a8c2e557c255005b1f348a4",
"assets/assets/bitmap/skills/kotlin.png": "6c8d2d3a07b84846d56f17fe857d086a",
"assets/assets/bitmap/skills/laravel.png": "11fb561612009e3006acac8eec8f3fb4",
"assets/assets/bitmap/skills/reactjs.png": "bd7b04afaaf3bc60ad0c7ec43fc70f91",
"assets/assets/bitmap/skills/tailwindcss.png": "2f0732a844464b2548291da5f7cc1171",
"assets/assets/fonts/Quicksand-Bold.ttf": "05fcffc56e72bc6889ecea672078dc4f",
"assets/assets/fonts/Quicksand-Light.ttf": "10ce81d2a0fc09f271edf43e66d80301",
"assets/assets/fonts/Quicksand-Medium.ttf": "db0ad2fc713ab72ea682687be4bd1021",
"assets/assets/fonts/Quicksand-Regular.ttf": "6cbafd2cb6e973c96ade779edc39c62a",
"assets/assets/fonts/Quicksand-SemiBold.ttf": "9e7757030c60a7a6973c9a95d9cea1c0",
"assets/assets/icon/Reportfolio.ttf": "27abf4eb0e84511fa494ee27afd4260b",
"assets/FontManifest.json": "c7d556f5205d711c8b248a048bd4b4c5",
"assets/fonts/MaterialIcons-Regular.otf": "de5cc9955fbc176fd62e6f4739f72803",
"assets/NOTICES": "8121817c0d41819291f75a06772506a1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"default_icons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"default_icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"default_icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"default_icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"default_icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"favicon/android-chrome-192x192.png": "2913bed2fedb9ead4bf1a538346fc8a9",
"favicon/android-chrome-512x512.png": "cb456060e16ef9bbf57fad04449724ff",
"favicon/apple-touch-icon.png": "21a39fea7099dc8f8061166700bbf82a",
"favicon/favicon-16x16.png": "4abb15c2fb45898f983d0133831ebffd",
"favicon/favicon-32x32.png": "152062decf526a524cd3267b6056790a",
"favicon/favicon.ico": "efadfa469ffe3ede00221b47c3027ff0",
"favicon/Icon-192.png": "2913bed2fedb9ead4bf1a538346fc8a9",
"favicon/site.webmanifest": "053100cb84a50d2ae7f5492f7dd7f25e",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"header-bg2.png": "54312cfac78fb7115ddcc723871996e0",
"icons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "45f9c74656e40335bfad0679547e29e7",
"/": "45f9c74656e40335bfad0679547e29e7",
"main.dart.js": "2f128d627c61174bbdf9f07c14881cf3",
"manifest.json": "ee8761bfee47ae338db15f9e8fe9b8fb",
"version.json": "0854a84dd39417a67fd1cc9241b3b38c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
