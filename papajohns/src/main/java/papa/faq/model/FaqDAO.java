package papa.faq.model;

import java.util.List;
import java.util.Map;

public interface FaqDAO {
	
	public int faqWrite(FaqDTO dto);
	public List<FaqDTO> faqList();
	public FaqDTO faqContent(int idx);
	public int faqNum(int idx);
	
	public List<FaqDTO> faqFind(Map<String, String> map);

}
