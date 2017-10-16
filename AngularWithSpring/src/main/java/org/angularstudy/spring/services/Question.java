package org.angularstudy.spring.services;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Question {
	private int id;
	private String questionName;
	private List<Answer> answers;

	public Question() {
		// TODO Auto-generated constructor stub
	}

	public Question(int id, String questionName, List<Answer> answers) {
		super();
		this.id = id;
		this.questionName = questionName;
		this.answers = answers;
	}

	@XmlAttribute
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@XmlElement
	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	@XmlElement
	public List<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}

}
