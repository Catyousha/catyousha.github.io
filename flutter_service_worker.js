'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "f0f883cc5843116e413b0550f766a0a7",
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
"assets/assets/icon/Reportfolio.ttf": "8b8851cf415796362439ab15ac126af1",
"assets/FontManifest.json": "c7d556f5205d711c8b248a048bd4b4c5",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "37b141bebf04b1945b37ac8b6b4c26ad",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
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
"favicon/site.webmanifest": "053100cb84a50d2ae7f5492f7dd7f25e",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"header-bg2.png": "54312cfac78fb7115ddcc723871996e0",
"index.html": "dae69a843a92514dbe7312db1d441330",
"/": "dae69a843a92514dbe7312db1d441330",
"main.dart.js": "4813f492b33925a3ed200ed2d79ce2de",
"manifest.json": "ee8761bfee47ae338db15f9e8fe9b8fb",
"version.json": "0854a84dd39417a67fd1cc9241b3b38c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
