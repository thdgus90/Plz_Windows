package logic;

import java.util.Date;

public class QuestionBoard {
	
	private int quest_number;
	private String mem_id;
	private String quest_title;
	private String quest_writer;
	private String quest_content;
	private Date quest_date;
	private int ref;
	private int re_step;
	private int re_level;
	private int readcount;
	
	
	
	public int getQuest_number() {
		return quest_number;
	}
	public void setQuest_number(int quest_number) {
		this.quest_number = quest_number;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getQuest_title() {
		return quest_title;
	}
	public void setQuest_title(String quest_title) {
		this.quest_title = quest_title;
	}
	public String getQuest_writer() {
		return quest_writer;
	}
	public void setQuest_writer(String quest_writer) {
		this.quest_writer = quest_writer;
	}
	public String getQuest_content() {
		return quest_content;
	}
	public void setQuest_content(String quest_content) {
		this.quest_content = quest_content;
	}
	public Date getQuest_date() {
		return quest_date;
	}
	public void setQuest_date(Date quest_date) {
		this.quest_date = quest_date;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	
	
	
	
	
}
