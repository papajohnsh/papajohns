package papa.qnare.model;

import java.util.List;

public interface QnaReDAO {

	public int qnaReWrite(QnaReDTO dto);
	public List<QnaReDTO> QnArebbsList(int idx);
	
	
}
