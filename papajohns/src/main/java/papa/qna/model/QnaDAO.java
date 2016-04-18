package papa.qna.model;

import java.util.List;
import java.util.Map;

public interface QnaDAO {

	public int qnaWrite(QnaDTO dto);
	public List<QnaDTO> qnaList(Map<String, Integer> map);
	public QnaDTO qnaContent(int idx);
	public int getRef();
	public int getIdx(int idx);
	public int qnaNum(int idx);
	
	public List<QnaReDTO> qnaReList(int idx);
	public int qnaReWrite(QnaReDTO dto);
	
	public List<QnaDTO> qnaFind(Map<String, String> map);
	public int getTotalCnt();
	
}
