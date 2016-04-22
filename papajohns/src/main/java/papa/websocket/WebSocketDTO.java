package papa.websocket;

import org.springframework.web.socket.WebSocketSession;

public class WebSocketDTO {
	private String idx;
	private String user;
	private String teacher;
	private WebSocketSession session;
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public WebSocketSession getSession() {
		return session;
	}
	public void setSession(WebSocketSession session) {
		this.session = session;
	}
	public WebSocketDTO(String idx, String user, String teacher, WebSocketSession session) {
		super();
		this.idx = idx;
		this.user = user;
		this.teacher = teacher;
		this.session = session;
	}
	public WebSocketDTO() {
		super();
	}
	
	
}
