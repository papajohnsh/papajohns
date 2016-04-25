package papa.websocket;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;


//EchoHandler는 서버단의 webSocketEndPoint 정의
public class EchoHandler extends TextWebSocketHandler {
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<>();
	private ArrayList<WebSocketDTO> papa = new ArrayList<WebSocketDTO>(); 
	//private String onLogin="";
	@Override
	public void afterConnectionEstablished(
			WebSocketSession session) throws Exception {
		log(session.getId() + " 연결 됨");
		
		String idx=getParameter("idx", session);
		String user=getParameter("user", session);
		String teacher=getParameter("teacher", session);
		String socketId=session.getId();
		
		WebSocketDTO dto = new WebSocketDTO(idx,user,teacher,session);
		papa.add(dto);
		
		//onLogin="";
		//onLogin=onLogin(session);
		//System.out.println(onLogin);
		//session.sendMessage(onLogin);
		//users.put(session.getId(), session);
	}

	@Override
	public void afterConnectionClosed(
			WebSocketSession session, CloseStatus status) throws Exception {
		log(session.getId()+" "+ status.getReason() + " 연결 종료됨");
		papa.remove(session.getId());
		//users.remove(session.getId());
	}
	
	@Override
	protected void handleTextMessage(
			WebSocketSession session, TextMessage message) throws Exception {
			
			if(!(message.getPayload().indexOf("loginOn")==-1)){
				for(int i=0;i<papa.size();i++){
					if(papa.get(i).getUser().equals(papa.get(i).getTeacher())){
						papa.get(i).getSession().sendMessage(message);
						log(papa.get(i).getUser() + "에 메시지 발송: " + message.getPayload());
					}
				}
			}
		
			
		}
		
		
		
		
		//
		
		//로그인 확인하기
	
		
		/*
		for (WebSocketSession s : users.values()) {
			s.sendMessage(message);
			log(s.getId() + "에 메시지 발송: " + message.getPayload());
		}
		*/
		/*
		try {
			Thread.sleep(1000);
		}catch(InterruptedException e){
			System.out.println(e.getMessage()); //sleep 메소드가 발생하는 InterruptedException 
		}
		*/
	

	@Override
	public void handleTransportError(
			WebSocketSession session, Throwable exception) throws Exception {
		log(session.getId() + " 익셉션 발생: " + exception.getMessage());
	}

	private void log(String logmsg) {
		System.out.println(new Date() + " : " + logmsg);
	}
	
	
	//파라미터값 받아오는 메소드
	private String getParameter(String id, WebSocketSession session){
		int startIndex=session.getUri().toString().lastIndexOf(id)+id.length()+1;
		int endIndex=session.getUri().toString().indexOf("&", startIndex);
		String param=null;
		if(endIndex == -1){param=session.getUri().toString().substring(startIndex);}
		else{param=session.getUri().toString().substring(startIndex, endIndex);}
		return param;
	}
	
	//로그인 확인 메소드
	private String onLogin(WebSocketSession session){
		String onLogin="";
		for(int i=0;i<papa.size();i++){
			onLogin+=papa.get(i).getUser()+",";
		}
		return onLogin;
	}
	
	/*
	//앞에는 방 idx 뒤에는 방장
	private String getIdx(WebSocketSession session){
		int temp=session.getUri().toString().lastIndexOf('?')+1;
		int temp2=session.getUri().toString().lastIndexOf('&');
		String idx=session.getUri().toString().substring(temp, temp2);
		
		return idx;
	}

	private String getTeacher(WebSocketSession session){
		int temp=session.getUri().toString().lastIndexOf('&')+1;
		String teacher=session.getUri().toString().substring(temp);
		return teacher;
	}
	*/
}
