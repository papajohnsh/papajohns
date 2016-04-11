package papa.classbbs.model;

import java.util.List;



public interface ClassBbsDAO {

	public int writeAdd(ClassBbsDTO dto);
	public List<ClassBbsDTO> classList();
	public ClassBbsDTO classContent(int idx);
	public int reWriteAdd(ClassBbsDTO dto);
	public int classNum(int idx);
	
}
