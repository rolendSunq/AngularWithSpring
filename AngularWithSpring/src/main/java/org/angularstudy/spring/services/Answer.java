package org.angularstudy.spring.services;

public class Answer {

	private int id;
	private String answerName;
	private String postedBy;

	public Answer() {}

	public Answer(int id, String answerName, String postedBy) {
		super();
		this.id = id;
		this.answerName = answerName;
		this.postedBy = postedBy;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnswerName() {
		return answerName;
	}

	public void setAnswerName(String answerName) {
		this.answerName = answerName;
	}

	public String getPostedBy() {
		return postedBy;
	}

	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}

}
