package papa.quiztest.model;

import java.util.*;

import papa.quiz.model.quizDTO;

public interface quizTestDAO {
	public int quizTestSave(quizTestDTO dto);
	public List<quizTestDTO> quizTestList();
	public int quizTestUpdate(quizTestDTO dto);
	public List<quizTestDTO> quizList2(int idx);

}
