package papa.design.model;

import java.util.List;

import papa.member.model.MemberDTO;

public interface designDAO {
	
	public int designAdd(String send,int reidx);
	public List<designDTO> myClassRoom(int idx);
	public String send(int idx);
	public List<MemberDTO> designJoin(String idx);
	public String reidxList(int idx);

}
