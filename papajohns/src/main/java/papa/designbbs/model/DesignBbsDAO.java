package papa.designbbs.model;

import java.util.List;

public interface DesignBbsDAO {

	public int designWrite(DesignBbsDTO dto);
	public List<DesignBbsDTO> designList();
	public DesignBbsDTO designContent(int idx);
	public int designNum(int idx);
}
