package org.angularstudy.spring.services;

import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;

public class ObjectToXml {
	private JAXBContext contextObj;
	private Marshaller marshallerObj;

	public String executeObject() throws Exception{
		contextObj = JAXBContext.newInstance(Question.class);
		marshallerObj = contextObj.createMarshaller();
		marshallerObj.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		Answer ans1=new Answer(101,"java is a programming language","ravi");
	    Answer ans2=new Answer(102,"java is a platform","john");

	    ArrayList<Answer> list=new ArrayList<Answer>();
	    list.add(ans1);
	    list.add(ans2);

	    Question que=new Question(1,"What is java?",list);
	    //marshallerObj.marshal(que, new FileOutputStream("question.xml"));
		return marshallerObj.toString();
	}
}
