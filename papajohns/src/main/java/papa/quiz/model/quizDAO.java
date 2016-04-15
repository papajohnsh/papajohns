package papa.quiz.model;

import java.util.List;



public interface quizDAO {
	public int quizAdd(quizDTO dto);
	public int quizUpdate(quizDTO dto);
	public List<quizDTO> quizList();
	
}
