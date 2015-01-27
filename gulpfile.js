// Configuration
global.path = {
    server: "./",
    css: "./",
    scss: "styles/",
    assets: "assets/",
    img: "assets/img/",
    js: "js/",
    refresh: ["*.html", "**/*.php", "js/*.js"]
}

// Browser support
global.browser_support = [
    "ie >= 9",
    "ie_mob >= 10",
    "ff >= 30",
    "chrome >= 34",
    "safari >= 7",
    "opera >= 23",
    "ios >= 7",
    "android >= 4.4",
    "bb >= 10"
]


// Require : load tasks
require('coffee-script/register');
var requireDir = require('require-dir');
var dir = requireDir('./tasks');