package com.vo;


public class News{

	private int id;
	private String title;
	private String content;
	private String createTime;
	private int type;
	private String source;
	private String createBy;
	private String state;
	private News lastNews;
	private News nextNews;
	private String url;
	private String memo;
	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	private int is_top;
	private int is_use;

	public int getIs_top() {
		return is_top;
	}

	public void setIs_top(int is_top) {
		this.is_top = is_top;
	}

	public int getIs_use() {
		return is_use;
	}

	public void setIs_use(int is_use) {
		this.is_use = is_use;
	}


	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public News getLastNews() {
		return lastNews;
	}

	public void setLastNews(News lastNews) {
		this.lastNews = lastNews;
	}

	public News getNextNews() {
		return nextNews;
	}

	public void setNextNews(News nextNews) {
		this.nextNews = nextNews;
	}

	public News()
	{
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getCreateTime()
	{
		return createTime;
	}

	public void setCreateTime(String createTime)
	{
		this.createTime = createTime;
	}

	public int getType()
	{
		return type;
	}

	public void setType(int type)
	{
		this.type = type;
	}

	public String getSource()
	{
		return source;
	}

	public void setSource(String source)
	{
		this.source = source;
	}

	public String getCreateBy()
	{
		return createBy;
	}

	public void setCreateBy(String createBy)
	{
		this.createBy = createBy;
	}

	public String getState()
	{
		return state;
	}

	public void setState(String state)
	{
		this.state = state;
	}

	public News( String title, String content, String createTime) {
		this.title = title;
		this.content = content;
		this.createTime = createTime;
	}
}
