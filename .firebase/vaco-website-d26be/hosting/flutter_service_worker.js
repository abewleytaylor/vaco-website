'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "a97f5004f47dfa997bf5d37e33164333",
"version.json": "247f3c9c0f0f9b0aa2b3a11174a6cbd5",
"favicon.ico": "9c8ae5bfdb656e4a46c193e70daea862",
"index.html": "b2497fb31b54e11a1324b49df566f1f5",
"/": "b2497fb31b54e11a1324b49df566f1f5",
"main.dart.js": "0083b348a223d507f25784ab2aaae829",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"icons/favicon-16x16.png": "c9910dee550896cba5098dc066ae58c0",
"icons/favicon.ico": "9c8ae5bfdb656e4a46c193e70daea862",
"icons/apple-icon.png": "9b544e398235cb6d22ed87319346f7ec",
"icons/apple-icon-144x144.png": "e25be311241a2262ec8b8ba80049786f",
"icons/android-icon-192x192.png": "7ebd4e20b4b589a72b89e7400902fe2c",
"icons/apple-icon-precomposed.png": "9b544e398235cb6d22ed87319346f7ec",
"icons/apple-icon-114x114.png": "6195337d237ff5a0d12643ae96af2abf",
"icons/ms-icon-310x310.png": "53620ba9d7c8863737fa8830ac616085",
"icons/ms-icon-144x144.png": "e25be311241a2262ec8b8ba80049786f",
"icons/apple-icon-57x57.png": "3ff2e30a03e7926b08401c7803f5a3d8",
"icons/apple-icon-152x152.png": "5be65fcef5500f28a635a2b9cba2d3c7",
"icons/ms-icon-150x150.png": "62047e28103b0ec0820564489f51d3ca",
"icons/android-icon-72x72.png": "25100508fe5c19c93ddef44b215c35b9",
"icons/android-icon-96x96.png": "d38be52b127f91740966a2450c818cfa",
"icons/android-icon-36x36.png": "46b71f2f3bd540bb4470cd0da95ee9c0",
"icons/apple-icon-180x180.png": "9347ee1eb3a6f2a7eae27fba2a8a4c2e",
"icons/favicon-96x96.png": "d38be52b127f91740966a2450c818cfa",
"icons/android-icon-48x48.png": "ca2fd9e7c9b59eda4a046aef77052903",
"icons/apple-icon-76x76.png": "6f56f5633373433f55ee177f9bc7a21f",
"icons/apple-icon-60x60.png": "e8896871dedd21cf192fd14663f64a07",
"icons/android-icon-144x144.png": "e25be311241a2262ec8b8ba80049786f",
"icons/apple-icon-72x72.png": "25100508fe5c19c93ddef44b215c35b9",
"icons/apple-icon-120x120.png": "66d98d2eaa2355c17d38af69f2bede8b",
"icons/favicon-32x32.png": "b8c4fb6bb08d4f21bafcd02f07776a7c",
"icons/ms-icon-70x70.png": "05ac8bdc4e626970e92efe329f60aa61",
"manifest.json": "d26810ab9854f3eecdbdf5891d2eb22a",
"assets/AssetManifest.json": "30cb60ebd4c66f9b4e61775fae776374",
"assets/NOTICES": "611e8f6f361aafdf0e9cb4125f8024b1",
"assets/FontManifest.json": "c85edf511094fc3afd57b99280b39b02",
"assets/AssetManifest.bin.json": "574fe356857265d2029e711f3208a9c4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor-Duotone.ttf": "c48df336708c750389fa8d06ec830dab",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor-Fill.ttf": "5d304fa130484129be6bf4b79a675638",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor.ttf": "003d691b53ee8fab57d5db497ddc54db",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor-Light.ttf": "f2dc1cd993671b155e3235044280ba47",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor-Bold.ttf": "8fedcf7067a22a2a320214168689b05c",
"assets/packages/phosphor_flutter/lib/fonts/Phosphor-Thin.ttf": "f128e0009c7b98aba23cafe9c2a5eb06",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "9a53dc2841cd1d3061cc9834e19d7984",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
