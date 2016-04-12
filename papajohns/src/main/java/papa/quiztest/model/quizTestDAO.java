package papa.quiztest.model;

import java.util.*;

public interface quizTestDAO {
	public int quizTestSave(quizTestDTO dto);
	public List<quizTestDTO> quizTestList();
	public int quizTestUpdate(quizTestDTO dto);
}
