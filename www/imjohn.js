var exec = require('cordova/exec');

exports.showMsg = function (arg0, success, error) {
    exec(success, error, 'imjohn', 'showMsg', [arg0]);
};
