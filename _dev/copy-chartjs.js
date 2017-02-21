var fs = require('fs');

var sourceFile = "node_modules/chart.js/dist/Chart.bundle.min.js";
var targetFile = "webresources/js/Chart.bundle.min.js";

fs.writeFileSync(targetFile, fs.readFileSync(sourceFile));
