package org.gh.dto;

public class Notice {
	private int no; //글번호
	private String title; //글제목
	private String content; //글내용
	private String resdate;  //작성일시
	private int visited;	//조회수
	
	public Notice(int no, String title, String content, String resdate, int visited) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.resdate = resdate;
		this.visited = visited;
	}
	
	public Notice() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getResdate() {
		return resdate;
	}

	public void setResdate(String resdate) {
		this.resdate = resdate;
	}

	public int getVisited() {
		return visited;
	}

	public void setVisited(int visited) {
		this.visited = visited;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", title=" + title + ", content=" + content + ", resdate=" + resdate + ", visited="
				+ visited + "]";
	}
	
	
}
