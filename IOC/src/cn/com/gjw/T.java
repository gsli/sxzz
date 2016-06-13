package cn.com.gjw;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class T {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ioc = new ClassPathXmlApplicationContext("beans.xml");
		Hello hello = (Hello)ioc.getBean("hello");
	//	hello.setMessage("hello world!");
		hello.say();
		ioc.close();
	}
}
