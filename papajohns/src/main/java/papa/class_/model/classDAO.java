package papa.class_.model;

import java.util.List;

import papa.design.model.designDTO;
import papa.member.model.MemberDTO;

public interface classDAO {
	
	public int makeClassAdd(classDTO dto);
	public List<String> classRoomNameSearch(String subject);
	public List<String> institutSearch(String institut);
	public List<String> nameSearch(String name);
	public List<String> class_dateSearch(String class_date);
	public List<String> class_timeSearch(String class_time);
	public List<classDTO> classJoin(String idx);
	public int classAddUpdate(String list,int idx);
	public List<classDTO> classDesign(int idx);
	public List<MemberDTO> designJoin(String idx);
	public String reidxList(int idx);
	public classDTO joinClass(int idx);
	public int classDesignAdd(designDTO dto);
	public classDTO schedule(String idx);

}
