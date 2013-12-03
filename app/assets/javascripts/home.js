/* Links to FB SDK for JS */
function fb_login() {
	window.fbAsynInit = function() {
		FB.init({
			appId : '474944245955765',
			status : true,
			cookie : true,
			xfbml : true
		});
		alert("trying to log in");
		FB.Event.subscribe('auth.authResponseChange', function(response){
			if (response.status == 'connected') {
				testAPI();
			} else if (response.status == 'not_authorized') {
				FB.login();
			} else {
				FB.login();
			}
		});
	};

	/* Asynchronously loads FB SDK */
	(function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/all.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
}

function testAPI() {
	console.log("Welcome to FB");
	FB.api('/me', function(response) {
		alert("Hello " + response.name + " !");
	});
}