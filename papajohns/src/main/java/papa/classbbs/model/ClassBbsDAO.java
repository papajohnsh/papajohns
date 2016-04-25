package papa.classbbs.model;

import java.util.List;
import java.util.Map;



public interface ClassBbsDAO {

	public int writeAdd(ClassBbsDTO dto);
	public List<ClassBbsDTO> classList(Map<String, Integer> map);
	public ClassBbsDTO classContent(int idx);
	public int classNum(int idx);
	
	public ClassBbsDTO classFindName(String writer);
	public ClassBbsDTO classFindSubject(String subject);
	
	public List<ClassBbsReDTO> classBbsReList(int idx);
	public int classReWrite(ClassBbsReDTO dto);
	public int getIdx(int idx);
	public int getRef();
	
	public List<ClassBbsDTO> classBbsFind(Map<String, String> map);
	public int classTotal();

}
