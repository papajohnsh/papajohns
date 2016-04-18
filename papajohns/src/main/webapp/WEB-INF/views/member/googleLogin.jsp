<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="880064170893-lc19cjf6c4end3cf3sfiv3uhhitlp8bf.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
  </head>
  <body>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
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
        
        
      };
    </script>
  </body>
</html>