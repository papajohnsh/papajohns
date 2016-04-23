package papa.design.model;

import java.util.List;

import papa.member.model.MemberDTO;

public interface designDAO {
	
	public int designUpdate(String send,int reidx,int idx);
	public List<designDTO> myClassRoom(int idx);
	public String send(int idx);
	public List<MemberDTO> designJoin(String idx);
	public String reidxList(int idx);
	public String teacher(int idx);

}
