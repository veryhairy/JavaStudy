package com.yy.study;

import java.util.Scanner;

public class main {
      public static void main(String[] args) {
    	  
    	  //父类的引用，指向了子类的对象
    	  //这是多态的一部分
    	  Person person=new Teacher();
    	  Person p2=new Doctor();
    	  Person p3=new Student();
    	  
    	  
		Scanner input=new Scanner(System.in);
		System.out.println("输入1，老师干活，输入2，医生干活"
				+ ",输入3、学生工作");
	    
		//获取控制台输入的整数值
		//这个方法有阻塞性
		//当执行到这个方法时，如果控制台
		//一直不输入内容，则程序就会卡在这里
		int choice=input.nextInt();
		Company2 company2=new Company2();
		if (choice==1){
//			Teacher t=new Teacher();
			company2.setPerson(person);
		}else if(choice==2){
//			Doctor doc=new Doctor();
            company2.setPerson(p2);
		}else if(choice==3){
			company2.setPerson(p3);
		}
		company2.work();
      }
}
