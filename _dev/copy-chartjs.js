var fs = require('fs');

var dir = 'webresources';
var sourceFile = "node_modules/chart.js/dist/Chart.bundle.min.js";
var targetFile = "webresources/Chart.bundle.min.js";

if (!fs.existsSync(dir)){
    fs.mkdirSync(dir);
}
fs.writeFileSync(targetFile, fs.readFileSync(sourceFile));
