package papa.quizAnswer.model;
import java.util.*;
public interface quizAnswerDAO {
	public int quizAnswer(quizAnswerDTO dto);
	public List<quizAnswerDTO> quizResult(int idx, int paper_idx);
	public String quizJoin(int idx, String id);
}
