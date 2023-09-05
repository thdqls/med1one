package kr.or.ddit.collection;

import java.util.ArrayList;
import java.util.List;

public class Manager {
	private List<People> peopleList = new ArrayList<People>();
	
	public Manager() {
	}
	
	public List<People> getPeopleList() {
		return peopleList;
	}

	public void setPeopleList(List<People> peopleList) {
		this.peopleList = peopleList;
	}

	public static void main(String[] args) {
		Manager manager = new Manager();
		List<People> peopleList =manager.getPeopleList();
		
		People student1 = new Student("유관순", "여성", 10, 3, 2, 1);
		People student2 = new Student("김삿갓", "남성", 12, 3, 2, 1);
		People student3 = new Student("강감찬", "남성", 10, 3, 2, 2);
		People student4 = new Student("이세종", "남성", 10, 3, 2, 3);
		People student5 = new Student("김서방", "남성", 11, 5, 1, 2);
		
		peopleList.add(student1);
		peopleList.add(student2);
		peopleList.add(student3);
		peopleList.add(student4);
		peopleList.add(student5);
		
		for(People people : peopleList) {
			System.out.println(people);
		}
		
		People teacher1 = new Teacher("전유성", "남성", 35, "정교사", "담임교사");
		People teacher2 = new Teacher("김수학", "남성", 36, "정교사", "담임교사");
		People teacher3 = new Teacher("정영어", "여성", 31, "기간제", "일반교사");
		
		peopleList.add(teacher1);
		peopleList.add(teacher2);
		peopleList.add(teacher3);
		
		
		for(People people : peopleList) {
			System.out.println(people);
		}
		
		People selectPeople = new People();
		People resultPeople = manager.select(selectPeople);
		manager.select();
	}
}
