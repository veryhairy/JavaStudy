package com.yy;

public class Car {
	private static Car car;
	private Car(){
		System.out.println("一个Car对象");
	}
	public static synchronized Car getInstance(){
		if(car==null){
			car=new Car();
		}
		return car;
	}
	/*
	 * 现实生活中的车
	 * 可以加速，减速，转弯
	 * 有车牌号，有重量，有生产商等等
	 * 
	 * 在java的编程世界中，我们可以创建一个类，起名叫Car来表示生活中的车
	 * 那么车的信息和车可以做的事情，
	 * Car都可以拥有
	 * 
	 * 当我们与车有关的内容，写在Car这个类中
	 * 时，我们就可以说，把车抽象成了Car这个类
	 * 因为车是真是存在的
	 * 而Car是我们编程语言中的类
	 */
	
	/*
	 * 生活中的信息---》；类中的属性
	 * 生活中的动作--》类中的方法
	 */
	
	//车牌 
	//mark是没有值得，没有内容的
	//这个时候的过程是定义的过程
	
	//车牌号
		private String mark;
		//车的颜色
		private String color;
		
		public void setMark(String mark){
			this.mark=mark;
		}
		public String getMark(){
			return mark;
		}
		public void setColor(String color) {
			this.color = color;
		}
		public String getColor() {
			return color;
		}
		public void setCar(String mark,String color){
			this.mark=mark;
			this.color=color;
		}
		
		//showInfo就是这个类中的行为
		//所有根据这个类，创建出来的对象
		//都会有这个行为
		//在Java中，就把行为叫做方法
		public void showInfo(){
			System.out.println("车牌号是:"+mark+"\t"+"颜色是:"+color);
		}
}
