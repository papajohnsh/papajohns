<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- Modal -->

      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원가입</h4>
        </div>

        <div class="modal-body">
		         <form role="form" name="loginForm" action="memberAdd.do" method="POST">  
		   <div class="form-group">
		     <label for="id">회원아이디:</label>
		     <input type="text" required="required" class="form-control" name="id" id="id" placeholder="Enter id" onkeyup="show();">
				 <span id="idmsg" style="display:;color:blue;"></span>
		   </div>
		   <div class="form-group">
		     <label for="pwd">비밀번호:</label>
		     <input type="password" required="required" class="form-control" name="pwd" id="pwd" maxlength="15" placeholder="Enter password">
		   </div>
		   <div>
		   	<label for="repwd">비밀번호 확인:</label>
		   	<input type="password" class="form-control" name="repwd" id="repwd" maxlength="15" onkeyup="pwdCheck();" placeholder="Enter password">
		   	<span id="pwdmsg"></span>
		   </div>
		   <div class="form-group">
		     <label for="name">이름:</label>
		     <input type="text" required="required" class="form-control" name="name" id="name" placeholder="Enter name">
		   </div>
		   <div class="form-group">
		     <label for="nickname">닉네임:</label>
		     <input type="text" required="required" class="form-control" name="nickname" id="nickname" placeholder="Enter nickname">
		   </div>
		   <div class="form-group">
		   	<label for="birthday">생년월일:</label><br>
		   	 
		   	 <script type="text/javascript">
		   	 document.write('<select name=birthday>');
		   	 for(var i=1950;i<=2020;i++){
		   		 if(i==year){
		   			 document.write('<option selected="selected">'+year+'</option>');
		   		 
		   		 }else{
		   		 	document.write('<option value='+i+'>'+i+'</option>');
		   	 	}
		   	 }
		   		document.write('</select>');
		   	 </script>년
		   	 <select name="birthday">
		   	 	<script>
		   	 		for(var i=1;i<=12;i++){
		   	 			if(i==month){
		   	 			document.write('<option value='+i+'>'+i+'</option>');	
		   	 			
		   	 			}else{
		   	 				document.write('<option value='+i+'>'+i+'</option>');
		   	 			}
		   	 		}
		   	 		
		   	 	</script>
		   	 </select>월
		   	 <select name="birthday">
		   	 	<script>
		   	 		for(var i=1;i<=31;i++){
		   	 			if(i==date){
		   	 				document.write('<option selected="selected">'+date+'</option>');
		   	 			}else{
		   	 				document.write('<option value='+i+'>'+i+'</option>');
		   	 			}
		   	 		}
		   	 	</script>
		   	 </select>일
		   </div>
		   <div class="form-group">
		     <label for="email">email:</label>
		     <input type="text" name="email"  id="email1" maxlength="25" placeholder="Enter email">
		     <input type="text" name="email" id="email2" maxlength="25">
		     <select style="width: 30%" name="edomain" id="sel_mail" onchange="chgdomain3()">
		     	<option value="" selected="selected">직접입력</option>
		     	<option value="@naver.com">@naver.com</option>
		     	<option value="@daum.net">@daum.net</option>
		     	<option value="@gmail.com">@gmail.com</option>
		     </select>		     
		   </div>
		   <div class="form-group">
		<label for="phone">핸드폰 번호:</label><br>
		     <select style="width: 20%" name="phonenumber">
		     	<option value="010" selected="selected">010</option>
		     	<option value="011">011</option>
		     	<option value="016">016</option>
		     </select>	
		   	 -<input type="text" name="phonenumber" maxlength="4">-<input type="text" name="phonenumber" maxlength="4">
		     
		   </div>
		    </form>
        </div>
        <div class="modal-footer">

        <!-- <input type="submit" class="btn btn-default" value="login">-->
        <button type="submit" >Submit</button>
        <button type="button" data-dismiss="modal">Close</button>

        </div>

