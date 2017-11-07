package com.shyy.menu.entitys;

/**
 * 菜单实体类
 * 
 * @author 束洋洋
 * @CreateDate 2012-1-16上午10:42:29
 */
public class Menu {

	private int id;//序列
	private int pId;//根ID
	private String name;//节点名称
	private int rootPId;//修改根节点ID
	private String url;//连接地址

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRootPId() {
		return rootPId;
	}

	public void setRootPId(int rootPId) {
		this.rootPId = rootPId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
