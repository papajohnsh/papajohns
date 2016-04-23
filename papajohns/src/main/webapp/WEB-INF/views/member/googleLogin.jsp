<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
  <script src="https://apis.google.com/js/api:client.js"></script>
  <script>
  var googleUser = {};
  var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '880064170893-lc19cjf6c4end3cf3sfiv3uhhitlp8bf.apps.googleusercontent.com',
        cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
      });
      attachSignin(document.getElementById('customBtn'));
    });
  };

  function attachSignin(element) {
    console.log(element.id);
    auth2.attachClickHandler(element, {},
        function(googleUser) {
          document.getElementById('name').innerText = "Signed in: " +
              googleUser.getBasicProfile().getName();
          onSuccess(googleUser);
          
        }, function(error) {
          alert(JSON.stringify(error, undefined, 2));
        });
  }
  
  function onSuccess(googleUser) {
      var profile = googleUser.getBasicProfile();
/*         alert("ID: " + profile.getId()); // Don't send this directly to your server!
      alert('Full Name: ' + profile.getName());
      alert('Given Name: ' + profile.getGivenName());
      alert('Family Name: ' + profile.getFamilyName());
      alert("Image URL: " + profile.getImageUrl());
      alert("Email: " + profile.getEmail()); */
      

      // The ID token you need to pass to your backend:
      var id_token = googleUser.getAuthResponse().id_token;
      alert("ID Token: " + id_token);
	  window.location.href="facebookLogin.do?id="+profile.getId()+"&name="+profile.getName(); 

  }
  </script>
  <style type="text/css">
    #customBtn {
/*       display: inline-block;
      background: white;
      color: #444;
      width: 190px;
      border-radius: 5px;
      border: thin solid #888;
      box-shadow: 1px 1px 1px grey;
      white-space: nowrap; */
    }
    #customBtn:hover {
      cursor: pointer;
    }
    span.label {
      font-family: serif;
      font-weight: normal;
    }
    span.icon {
      background: url('google_icon.png') transparent 5px 0% no-repeat;
      display: inline-block;
      vertical-align: middle;
      width: 48px;
      height: 48px;
    }
    /* span.buttonText {
      display: inline-block;
      vertical-align: middle;
      padding-left: 42px;
      padding-right: 42px;
      font-size: 14px;
      font-weight: bold;
      /* Use the Roboto font that is loaded in the <head> */
      font-family: 'Roboto', sans-serif;
    } */
  </style>
  </head>
  <body>
  <!-- In the callback, you would hide the gSignInWrapper element on a
  successful sign in -->
  <div id="gSignInWrapper">
    <div id="customBtn" class="customGPlusSignIn">
      <span class="icon"></span>
    </div>
  </div>
  <div id="name"></div>
  <script>startApp();</script>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="880064170893-lc19cjf6c4end3cf3sfiv3uhhitlp8bf.apps.googleusercontent.com">
  <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
  </head>
  <body>
    <div id="my-signin2"></div>
    <script>

    function onSuccess(googleUser) {
        var profile = googleUser.getBasicProfile();
/*         alert("ID: " + profile.getId()); // Don't send this directly to your server!
        alert('Full Name: ' + profile.getName());
        alert('Given Name: ' + profile.getGivenName());
        alert('Family Name: ' + profile.getFamilyName());
        alert("Image URL: " + profile.getImageUrl());
        alert("Email: " + profile.getEmail()); */
        

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        alert("ID Token: " + id_token);
        
        
	    window.location.href="facebookLogin.do?id="+profile.getId()+"&name="+profile.getName(); 
              }
      function onFailure(error) {
        console.log(error);
      }
      function renderButton() {
        gapi.signin2.render('my-signin2', {
          'scope': 'profile email',
          'width': 222,
          'height': 49,
          'longtitle': true,
          'theme': 'dark',
          'onsuccess': onSuccess,
          'onfailure': onFailure
        });
      }
/*       function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        alert("ID: " + profile.getId()); // Don't send this directly to your server!
        alert('Full Name: ' + profile.getName());
        alert('Given Name: ' + profile.getGivenName());
        alert('Family Name: ' + profile.getFamilyName());
        alert("Image URL: " + profile.getImageUrl());
        alert("Email: " + profile.getEmail());
        

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        alert("ID Token: " + id_token);
        
        
	    window.location.href="JLogin.do?email="+profile.getEmail()+
		"&id="+profile.getId()+"&name="+profile.getName(); 
        
        
      }; */
    </script>
  </body>
</html> --%>