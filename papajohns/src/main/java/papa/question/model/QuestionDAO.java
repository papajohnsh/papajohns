package papa.question.model;

import java.util.List;

public interface QuestionDAO {

	public int question(QuestionDTO dto);
	public List<QuestionDTO> questionView(String id);
}
