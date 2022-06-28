package com.kh.adoption.model.vo;

public class Animal {
	
	private int animalNo; //ANIMAL_NO	NUMBER
	private int categoryNo; //CATEGORY_NO	NUMBER
	private String categoryName; // 
	private String animalName; //ANIMAL_NAME	VARCHAR2(20 BYTE)
	private String gender; //GENDER	CHAR(1 BYTE)
	private String neutralization; // NEUTRALIZATION	CHAR(1 BYTE)
	private int animalAge; // ANIMAL_AGE	NUMBER
	private int animalWeight; // ANIMAL_WEIGHT	NUMBER
	private int friendly; // FRIENDLY	NUMBER
	private int active; // ACTIVE	NUMBER
	private String adopted; // ADOPTED	CHAR(1 BYTE)
	private String animalDesc; // ANIMAL_DESC	VARCHAR2(1000 BYTE)
	private int userNo; //USER_NO	NUMBER
	
	
	public Animal() {
		super();
	}
	
	public Animal(int animalNo, String categoryName, String animalName, String gender, String neutralization,
			int animalAge, int animalWeight) {
		super();
		this.animalNo = animalNo;
		this.categoryName = categoryName;
		this.animalName = animalName;
		this.gender = gender;
		this.neutralization = neutralization;
		this.animalAge = animalAge;
		this.animalWeight = animalWeight;
	}
	
	
	public Animal(int animalNo, int categoryNo, String animalName, String gender, String neutralization, int animalAge,
			int animalWeight) {
		super();
		this.animalNo = animalNo;
		this.categoryNo = categoryNo;
		this.animalName = animalName;
		this.gender = gender;
		this.neutralization = neutralization;
		this.animalAge = animalAge;
		this.animalWeight = animalWeight;
	}




	public Animal(int animalNo, int categoryNo, String animalName, String gender, String neutralization, int animalAge,
			int animalWeight, int friendly, int active, String adopted, String animalDesc, int userNo) {
		super();
		this.animalNo = animalNo;
		this.categoryNo = categoryNo;
		this.animalName = animalName;
		this.gender = gender;
		this.neutralization = neutralization;
		this.animalAge = animalAge;
		this.animalWeight = animalWeight;
		this.friendly = friendly;
		this.active = active;
		this.adopted = adopted;
		this.animalDesc = animalDesc;
		this.userNo = userNo;
	}
	public int getAnimalNo() {
		return animalNo;
	}
	public void setAnimalNo(int animalNo) {
		this.animalNo = animalNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getAnimalName() {
		return animalName;
	}
	public void setAnimalName(String animalName) {
		this.animalName = animalName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNeutralization() {
		return neutralization;
	}
	public void setNeutralization(String neutralization) {
		this.neutralization = neutralization;
	}
	public int getAnimalAge() {
		return animalAge;
	}
	public void setAnimalAge(int animalAge) {
		this.animalAge = animalAge;
	}
	public int getAnimalWeight() {
		return animalWeight;
	}
	public void setAnimalWeight(int animalWeight) {
		this.animalWeight = animalWeight;
	}
	public int getFriendly() {
		return friendly;
	}
	public void setFriendly(int friendly) {
		this.friendly = friendly;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getAdopted() {
		return adopted;
	}
	public void setAdopted(String adopted) {
		this.adopted = adopted;
	}
	public String getAnimalDesc() {
		return animalDesc;
	}
	public void setAnimalDesc(String animalDesc) {
		this.animalDesc = animalDesc;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Animal [animalNo=" + animalNo + ", categoryNo=" + categoryNo + ", animalName=" + animalName
				+ ", gender=" + gender + ", neutralization=" + neutralization + ", animalAge=" + animalAge
				+ ", animalWeight=" + animalWeight + ", friendly=" + friendly + ", active=" + active + ", adopted="
				+ adopted + ", animalDesc=" + animalDesc + ", userNo=" + userNo + "]";
	}
	
	

}
