package com.shyy.menu.entitys;

/**
 * �˵�ʵ����
 * 
 * @author ������
 * @CreateDate 2012-1-16����10:42:29
 */
public class Menu {

	private int id;//����
	private int pId;//��ID
	private String name;//�ڵ�����
	private int rootPId;//�޸ĸ��ڵ�ID
	private String url;//���ӵ�ַ

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
