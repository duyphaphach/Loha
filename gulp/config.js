var config = require('../config.json');

config.paths.absolute = {};

//generate absolute paths from relative ones
for(key in config.paths.relative){
    config.paths.absolute[key] = __dirname + '/../' + config.paths.relative[key];
}

//prepend path to browserSync files filter
for(key in config.server.browserSync.files){
    config.server.browserSync.files[key] = config.paths.relative.build + '/' + config.server.browserSync.files[key];
}

//prepend path to legacyVendors files
for (key in config.scripts.legacyVendors) {
  config.scripts.legacyVendors[key] = config.paths.relative.sourceScripts + '/legacy/' + config.scripts.legacyVendors[key];
}

module.exports = config;
