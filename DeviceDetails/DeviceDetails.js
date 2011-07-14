/*global window */
/*global PhoneGap */
/*global GetFunctionName */
(function () {
	'use strict';

	function DeviceDetails() {
	}

	DeviceDetails.prototype.isMultitaskingSupported = function (opts) {
		var options = opts || {},
			callback = options.callback || null, // to trigger phonegap signature detection
			success = options.success || callback, 
			failure = options.failure || callback;
		PhoneGap.exec( success, failure, 'DeviceDetails', 'isMultitaskingSupported', []);
	};

	PhoneGap.addConstructor(function () {
		if (typeof window.plugins === 'undefined') {
			window.plugins = {};
		}
		if (typeof window.plugins.deviceDetails === 'undefined') {
			window.plugins.deviceDetails = new DeviceDetails();
		}
	});

}());

