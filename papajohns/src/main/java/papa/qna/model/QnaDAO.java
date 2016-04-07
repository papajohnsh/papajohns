package papa.qna.model;

import java.util.List;

public interface QnaDAO {

	public int QnAAdd(QnaDTO dto);
	public List<QnaDTO> QnAList();
	public List<QnaDTO> QnAJoin(int idx);
	public int getRef();
	public int getIdx(int idx);
}
