package papa.qna.model;

import java.util.List;

public interface QnaDAO {

	public int qnaWrite(QnaDTO dto);
	public List<QnaDTO> qnaList();
	public QnaDTO qnaContent(int idx);
	public int getRef();
	public int getIdx(int idx);
	public int qnaNum(int idx);
	
	public QnaDTO qnaFindName(String writer);
	public QnaDTO qnaFindSubject(String subject);
	
	public List<QnaReDTO> qnaReList(int idx);
	public int qnaReWrite(QnaReDTO dto);
	
}
