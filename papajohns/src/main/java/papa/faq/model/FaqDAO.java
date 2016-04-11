package papa.faq.model;

import java.util.List;

public interface FaqDAO {
	
	public int faqWrite(FaqDTO dto);
	public List<FaqDTO> faqList();
	public FaqDTO faqContent(int idx);
	public int faqNum(int idx); 

}
