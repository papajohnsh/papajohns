package papa.class_.model;

import java.util.List;

public interface classDAO {
	
	public int makeClassAdd(classDTO dto);
	public List<String> classRoomNameSearch(String subject);
	public List<String> institutSearch(String institut);
	public List<String> nameSearch(String name);
	public List<String> class_dateSearch(String class_date);
	public List<String> class_timeSearch(String class_time);

}
