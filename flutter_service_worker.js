'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "6334a1e1b31c531efe59d97d18e3a7b4",
".git/config": "17872f6acc76733ff3b5901de55db75b",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "7c3f463508f5b48495508db2a848f4cf",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "c1a95e42e708b4774a805a6e0f674738",
".git/logs/refs/heads/master": "c1a95e42e708b4774a805a6e0f674738",
".git/objects/03/38c17ac9cf40bb7d724891dd1b5ae03fa3c6c7": "a1eb327309cdf30906e559b1c4e6524c",
".git/objects/04/70233b9bc80ab4494fac2af99b50417f4e8a84": "66201ea0303f4b86f02c2092111d56c3",
".git/objects/04/f47a47a2abfa25076a9d88021312a667bc0d42": "925aed4ecc866abb0a50cabf00f2654c",
".git/objects/0e/a7d26b6fe2bae25604d9a16539162638d2651c": "7bc1ee711ffa4c7c8bf00a91bd6d9091",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/23/c3243abe54ad964f0d05d5138b369965aaee38": "e27fafca983ba8f311ba4040af72d550",
".git/objects/25/e7c9a6de65ce8a8e68cf3a2652182c135264ba": "598ba5ea21baf64fe670bfe0a1d7fa8f",
".git/objects/27/a9f6bb419484ccca5fe10853d378e43674dec2": "e8c1749490bd5f46d27cf063d59e5551",
".git/objects/29/10144f6e909108ab8d3fc40bf9afa862f37001": "91c01d222402d5e138f86dfed7b97c2c",
".git/objects/2e/6679910252bc6f99092af6bac41b8355dbb32f": "d06f1424e1df5a789a4ac0af638de202",
".git/objects/34/af9e610c6e5fc46a0ce6ccc49a3cc112b4c100": "000da6743295da7d5eeee23bf258045f",
".git/objects/35/2a0fb498db32b5311c95dd26aba966fb8a0740": "c4bf323d02bb791b125f22b6d061f0f1",
".git/objects/37/5429b237ebae1c1ad508693a68eb16fdab33bb": "0f813a005ad170b5a78f783bed08ffaf",
".git/objects/38/b182406b927f59dabe7dfb34e3c2fc589c4f5b": "405666891991a19cad7d628d3478512e",
".git/objects/41/de173d9014b38f8290acf270c490b37fc79a60": "d2a9d01215e9d65fd0456ded49e98878",
".git/objects/46/d0ceb091f807f367422224851f7d7e866bd62a": "ccee3b0dee6a1e958783a24273d2f012",
".git/objects/4c/51fb2d35630595c50f37c2bf5e1ceaf14c1a1e": "a20985c22880b353a0e347c2c6382997",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/63/43f40d198c152de02f08a1a25121954e726d44": "6828d22f29f03f02a2badd8b61221016",
".git/objects/65/c737f3c08390564d90bd70b109a08b9ba31726": "97d26fab8aa864b7c5078066eca602d7",
".git/objects/69/cc475b5bc8dc2da34f9e5d1c107b27389284f0": "99921bb78c3e41ced75443b837ef6cff",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/76/ee18d2126d284a0af6e80bd75207bf868892aa": "c48c59c0d0d706445b60c5d792fdf98b",
".git/objects/84/535f155714786e54db9dfc79de8521e7254779": "59176f0adfe87373fc5615a71742c67d",
".git/objects/85/5a8b3c657f222e89895c9545c3e74490ac1fa1": "32b0c7d0bd8c949b8fe0d678f95caae4",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/3c7d6bbbef6e7cefcdd4df877e7ed0ee4af46e": "025a3d8b84f839de674cd3567fdb7b1b",
".git/objects/92/65271423f84461d77884d2951fb8bc3d1fd82a": "b19ea62170f08eea8d0867d33c16947d",
".git/objects/92/c36e16077d9481ce0d089b2511152ccbeeb154": "64eadf258f0b2274b15cdf8ad413fb9f",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/9d/5b812e194b1804abc887d179288762518fb04a": "56c1d98068a95fbbc950084e14caf878",
".git/objects/9d/c9fc3bc9fa3f3264013f8af2d6ef02e97813d5": "c234dddf848d2715f4c56e5427dabee7",
".git/objects/a9/91f51138ffe059d588003dc7936aff059a0428": "b73a35563fa129bd884d8b5c53ee9231",
".git/objects/ad/2f90b78480aeb6608226d9db4ecbd3ec06aaeb": "4add97a99941aa0e9eed0f2173416ade",
".git/objects/af/6057da9e04d4075f2a0143ded21d57c0394f46": "4ff431f09f1db880b94186c0c8a64116",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/44fb319b9f8bf14cf0066ee130dcf79ce18616": "416576c9ec073eda108f5942a6d7c8de",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/ba/ed3525ca8e03a770b142e8c80e20bd4d33ac82": "a7c5fccc4dc71b1149553f35211e8afb",
".git/objects/bc/7d993f94baf32ca11e5f5dc5412aac12a668a9": "d782f8a82d795ae96da7df117f4c51bd",
".git/objects/c4/58c70daff34cda1ad1e6f2463a136039212d4f": "2a58b93bf206346b636cecd51377a2da",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/c8/7beb4a187aa30e00724a194623958d7ee52778": "af7d03741cd5d2f2e54b086fd672da42",
".git/objects/ca/28c42816e1ba98b5202e9a751a7a71c42d96e6": "963cafb9d7043e8a4b08248318128b18",
".git/objects/cc/fab74c1f56c330985060e2247607eaedb3c7d7": "ad5b6117df489509af208438785f208b",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e3/0b17177a46632ea2067cc4293eb74ee94d7fba": "ebe742f53ae35a9de08ebebf4053912d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f4/d1f7631206c94602c3ba29048c46ba77d6922d": "b46fd45e1f0bd9fab2d42d315a608594",
".git/objects/f6/cc06a0d471df5df1f35082b09b45fced798d05": "b3ed116bd3c82d600d635270058f4345",
".git/objects/f7/3270c1ea8820f5a35905473f1cc942f3e26288": "fee91be62356dc341c76307d4024302d",
".git/objects/fb/e5976ce61dc58eb06809c74c2ca764868865f7": "4174b40136ef1f5482b2714e30af3703",
".git/objects/ff/39f0deeaa03530ff5009401082050d1b12802e": "47bf77a2837aaacbd779a59b7c12eac2",
".git/refs/heads/master": "b2f8e3c40194ae86e6c1dcee9f2667b1",
"assets/AssetManifest.bin": "91029fbf7b0bed90bf86409825557069",
"assets/AssetManifest.bin.json": "0b3639e7224e02c2d84e90a41c866721",
"assets/AssetManifest.json": "4e601dca6af27c25f70b1ba7ed255cfe",
"assets/assets/a.png": "8cb2a748ec6406d66dffda0f3ecc5b6e",
"assets/assets/bashar.jpg": "964cdf0bee29844f4a5609ac772b31c6",
"assets/assets/hitler.jpg": "e3d945490bc4b008f1f5520398755b4a",
"assets/assets/rock.jpg": "cb81703bba05eb28527626e41ddd902e",
"assets/FontManifest.json": "43642ecf0f4d128f6b6817672614c942",
"assets/fonts/MaterialIcons-Regular.otf": "b975357ce032015052347b073a0bc9ef",
"assets/NOTICES": "e3115fdaedab6aed6e7aee7ca4793154",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "d7d83bd9ee909f8a9b348f56ca7b68c6",
"assets/packages/fluent_ui/assets/AcrylicNoise.png": "81f27726c45346351eca125bd062e9a7",
"assets/packages/fluent_ui/fonts/FluentIcons.ttf": "b6530f23d5df9d8b334e31a4dc62e0d0",
"assets/packages/fluent_ui/fonts/SegoeIcons.ttf": "33281df4af69d8c0d7ade9a63df4c972",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "2e3dc24ddcbd67d0d93b88dc6883a453",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f29ff4e7a96ee0483b2d0298b155bc9e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "5f53bfc677989e7a9282276ab7865274",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "49702b3ea23b7a41a9f4afab49cc92a0",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7db001d266e6c4f300aadbc4b548eb81",
"/": "7db001d266e6c4f300aadbc4b548eb81",
"main.dart.js": "50481dd357f108bc8cf290c956a8dc96",
"manifest.json": "fafff7bc27a55b1a137946e23a4efae4",
"version.json": "c980aa28ae60d5dc68636f3d7d62cc53"};
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
