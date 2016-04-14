package papa.quiz.model;

public class quizDTO {
private int idx;
private String writer;
private String question;
private String answer;
private String example1;
private String example2;
private String example3;
private String example4;
public quizDTO() {
	super();
}
public quizDTO(int idx, String writer, String question, String answer, String example1, String example2,
		String example3, String example4) {
	super();
	this.idx = idx;
	this.writer = writer;
	this.question = question;
	this.answer = answer;
	this.example1 = example1;
	this.example2 = example2;
	this.example3 = example3;
	this.example4 = example4;
}
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
public String getExample1() {
	return example1;
}
public void setExample1(String example1) {
	this.example1 = example1;
}
public String getExample2() {
	return example2;
}
public void setExample2(String example2) {
	this.example2 = example2;
}
public String getExample3() {
	return example3;
}
public void setExample3(String example3) {
	this.example3 = example3;
}
public String getExample4() {
	return example4;
}
public void setExample4(String example4) {
	this.example4 = example4;
}

}
