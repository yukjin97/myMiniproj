package com.mulcam.miniproj.dto;

import org.springframework.web.multipart.MultipartFile;

public class writeform {
int boardnum;
String title;
String image;
String story;
String genre;
MultipartFile file;


public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getStory() {
	return story;
}
public void setStory(String story) {
	this.story = story;
}
public int getBoardnum() {
	return boardnum;
}
public void setBoardnum(int boardnum) {
	this.boardnum = boardnum;
}
public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}
public String getGenre() {
	return genre;
}
public void setGenre(String genre) {
	this.genre = genre;
}


}
