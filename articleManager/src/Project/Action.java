package Project;

import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



public class Action {
    private String userid;	//����
    private static String username;   //�û��� �����޸�
    private String EmailOrTel; //������ߵ绰
    private String password;    //����
    private String age;  //��������
    private String sex; //�Ա�
    private String birthday; //����
    private String message;  //���˼��
    private String classify;
    private Pattern pattern = Pattern.compile("\\?");//�ʺ�ƥ��
    
    private static String articleid;//���±��
    private String title;//��Ŀ
    private String content;//����
    private String share;//�Ƿ���
    private String time;//����ʱ��
    private String classifyid;//����
    
    private String shareArticleid;//�������±��
    private String shareClassfyid;//�������·���
    private String keywords;//�������¹ؼ���
   
    private String commentId;//���۱��
    private String commentArticleid;//�������±��
    private String commentTime;//����ʱ��
    private String commenterId;//�����߱��
    private String commentMessage;//��������
    
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();

    public String getUsername(){
        return username;
    }
    public String getUserid(){
        return userid;
    }
    public String getEmailOrTel(){
        return EmailOrTel;
    }
    public String getPassword(){
        return password;
    }
    public String getAge(){
        return age;
    }
    public String getSex(){
        return sex;
    }
    public String getBirthday(){
        return birthday;
    }
    public String getMessage(){
        return message;
    }
    
    
    public String getArticleid(){
        return articleid;
    }

    public String getTitle(){
        return title;
    }

    public String getContent(){
        return content;
    }

    public String getShare(){
        return share;
    }

    public String getTime(){
        return time;
    }

    public String getClassifyid(){
        return classifyid;
    }
    
    public String getCommentId(){
        return commentId;
    }
    public String getCommentArticleid(){
        return commentArticleid;
    }

    public String getCommentTime(){
        return commentTime;
    }

    public String getCommenterId(){
        return commenterId;
    }

    public String getCommentMessage(){
        return commentMessage;
    }
    
    public String getClassify(){
        return classify;    
    }
    
    public String getShareArticleid(){
        return shareArticleid;
    }

    public String getShareClassfyid(){
        return shareClassfyid;
    }

    public String getKeywords(){
        return keywords;
    }

    public void setShareArticleid(String shareArticleid){
        this.shareArticleid = shareArticleid;
    }

    public void setShareClassfyid(String shareClassfyid){
        this.shareClassfyid = shareClassfyid;
    }

    public void setKeywords(String keywords){
        this.keywords = keywords;
    }

    
    public void setClassify(String classify){
        this.classify = classify;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public void setUserid(String userid) {
        this.userid = userid;
    }
    
    public void setEmailOrTel(String EmailOrTel) {
        this.EmailOrTel = EmailOrTel;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public void setAge(String age) {
        this.age = age;
    }
    
    public void setSex(String sex) {
        this.sex =  sex;
    }
    public void setBirthday(String birthday) {
        this.birthday =  birthday;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
    
    public void setArticleid(String articleid){
        this.articleid = articleid;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public void setTime(String time){
        this.time = time;
    }

    public void setContent(String content){
        this.content = content;
    }

    public void setShare(String share){
        this.share = share;
    }

    public void setClassifyid(String classifyid){
        this.classifyid = classifyid;
    }

    public void setCommentId(String commentId){
        this.commentId = commentId;
    }

    public void setCommentArticleid(String commentArticleid){
        this.commentArticleid = commentArticleid;
    }

    public void setCommentTime(String commentTime){
        this.commentTime = commentTime;
    }

    public void setCommenterId(String commenterId){
        this.commentId = commentId;
    }

    public void setCommentMessage(String commentMessage) {
        this.commentMessage = commentMessage;
    }
    // all struts logic here

    public String signin() {
    	//System.out.print(share);
    	//System.out.println(username+"&&"+password);
        String sqlForsignin = "select password from User where username=?";
        Matcher matcher = pattern.matcher(sqlForsignin);
        String sql1 = matcher.replaceFirst('"'+username+'"');//Ҫ�����ݿ��в�ѯ�����

        DBConnection connect = new DBConnection();
        List<String> result = connect.select(sql1);//��ѯ���
        if (result.size() == 0) return "Fail1";
        
        if (result.get(0).equals(password)){
        	session.setAttribute( "username",  username);
        	return "Success";
        }
        else return "Fail";
    }

    public String signup() {
    	//System.out.print("******");
    	//System.out.println(username+EmailOrTel+password+birthday);
        //System.out.println("*********");
    	DBConnection connect = new DBConnection();
        List<String> list=connect.select("select * from User where username = " + '"'+username+'"');
        List<String> list0=connect.select("select userid from User");

        if(list.size()==0){//����ȷ��userid
            if(list0.size()==0)//���ݿ����滹����������
                userid="1";
            else
            {
                int max = 0;
                for (int i = 0 ; i < list0.size(); i++){
                    if(Integer.valueOf(list0.get(i)) > max) max = Integer.valueOf(list0.get(i));
                }
                userid=String.valueOf(max+1);
            }
        }
        else return "Fail1";//����˻��Ѿ���ע��

        String sqlForsignup = "insert into User( userid, username, EmailOrTel, password) values(?,?,?,?)";
        Matcher matcher = pattern.matcher(sqlForsignup);
        sqlForsignup = matcher.replaceFirst('"'+userid+'"');
        matcher = pattern.matcher(sqlForsignup);
        sqlForsignup = matcher.replaceFirst('"'+username+'"');
        matcher = pattern.matcher(sqlForsignup);
        sqlForsignup = matcher.replaceFirst('"'+EmailOrTel+'"');
        matcher = pattern.matcher(sqlForsignup);
        sqlForsignup = matcher.replaceFirst('"'+password+'"');
        classify = "0 �ݲط���";
        int signal=connect.insert(sqlForsignup);//����ע����
        if(signal==1)
            return "Success";
        else
            return "Fail2";
    }
    
    public  String gotoEdit(){//���䲻���Ը� ����������
    	System.out.println("1150310115");
        //sql[0]="update Book set AuthorID=?,Publisher=?,PublishDate=?,Price=? where ISBN=?";
        String sqlForedit = "select * from User where username=?";
        Matcher matcher = pattern.matcher(sqlForedit);
        sqlForedit = matcher.replaceFirst('"'+username+'"');
        DBConnection connect = new DBConnection();
        List<String> listInformation  = connect.select(sqlForedit);
        session.setAttribute("userInformation", listInformation);
        System.out.println("1150310115");
        return "Success";
    }
    
    public String information(){
    	String sqlForallarticle = "select * from article where articleid = ?";
    	Matcher matcher = pattern.matcher(sqlForallarticle);
        sqlForallarticle = matcher.replaceFirst('"'+articleid+'"');
        
        DBConnection connect = new DBConnection();
        List<String> list=connect.select(sqlForallarticle);
        
        session.setAttribute("information", list);
        
        String sqlForcomment = "select * from comment where commentArticleid = ?";
    	matcher = pattern.matcher(sqlForcomment);
        sqlForcomment = matcher.replaceFirst('"'+articleid+'"');
        
        List<String> list1=connect.select(sqlForcomment);
        for(String str : list1){
        	System.out.println(str);
        }
        session.setAttribute("comment", list1);
    	return "Success";
    }
    
    public String Edit(){
        String sqlInformation = "update User set username=?,age=?,sex=?,birthday=?,message=? where EmailOrTel=?";
        Matcher matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+username+'"');
        matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+age+'"');
        matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+sex+'"');
        matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+birthday+'"');
        matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+message+'"');
        matcher = pattern.matcher(sqlInformation);
        sqlInformation = matcher.replaceFirst('"'+EmailOrTel+'"');
        
        System.out.println(sqlInformation);
        DBConnection connect = new DBConnection();
        int signal = connect.update(sqlInformation);
        if(signal == 1){
        	session.setAttribute( "username",  username);
        	return "Success";
        }
        else
            return "Fail";
    }
    
    public String allArticle(){
    	String sqlForallarticle = "select * from article where username=?";
    	Matcher matcher = pattern.matcher(sqlForallarticle);
        sqlForallarticle = matcher.replaceFirst('"'+username+'"');
        
        DBConnection connect = new DBConnection();
        List<String> list=connect.select(sqlForallarticle);
        
        int size = list.size();   
        String temp1, temp2, temp3, temp4, temp5, temp6, temp0;
        for (int i = 0; i < size; i+=7) {   
            int k = i;   
            for (int j = size - 7; j >i; j-=7)  {   
                if (Integer.valueOf(list.get(j))< Integer.valueOf(list.get(k)))  k = j;   
            }   
            temp0 = list.get(i);
            temp1 = list.get(i+1);
            temp2 = list.get(i+2);
            temp3 = list.get(i+3);
            temp4 = list.get(i+4);
            temp5 = list.get(i+5);
            temp6 = list.get(i+6);
            list.set( i, list.get(k));
            list.set( i+1, list.get(k+1));
            list.set( i+2, list.get(k+2));
            list.set( i+3, list.get(k+3));
            list.set( i+4, list.get(k+4));
            list.set( i+5, list.get(k+5));
            list.set( i+6, list.get(k+6));
            
            list.set( k, temp0);
            list.set( k+1, temp1);
            list.set( k+2, temp2);
            list.set( k+3, temp3);
            list.set( k+4, temp4);
            list.set( k+5, temp5);
            list.set( k+6, temp6);
        }   
        session.setAttribute("allarticle", list);
    	return "Success";
    }
    
    /*
    private String articleid;//���±�� ����
    private String title;//��Ŀ
    private String content;//����
    private String share;//�Ƿ���
    private String time;//����ʱ��
    private String username;//��������
    private String classifyid;//���±���Ҫ��һ��������

    ���������������������
    ���������ټ�һ�㹲�����±�
    private String sharArticleid;//�������±��
    private String articleid;//���±�ţ�һ����������ǲ�������Ϊ��һ��������
    private String classfyid;//�������·���
    private String keywords;//�������¹ؼ���

    create table article(
        articleid varchar(100) not null primary key,
        title varchar(100) not null,
        content varchar(2000) not null,
        share varchar(100) not null,
        time varchar(100) not null,
        username varchar(100) not null,
        classifyid varchar(100) not null
    );

    create table shareArticle(
        shareArticleid varchar(100) not null primary key,
        articleid varchar(100) not null,
        shareClassfyid varchar(100) not null,
        keywords varchar(100) not null,
        foreign key(articleid) references Article(articleid) on delete cascade on update cascade
    );

    
    */
    
    public String setcommentMessage(){
        String sqlForsetcommentMessage = "insert into comment( commentId, commentArticleid, commentTime, commenterId, commentMessage) " +
                "values(?,?,?,?,?)";
        DBConnection connect = new DBConnection();

        List<String> list = connect.select("select commentId from comment");

        if ( list.size() == 0) {//��ȷ�����
            commentId = "1";
        }
        else {
            int max = 0;
            for (int i = 0; i < list.size(); i++){
                if(Integer.valueOf(list.get(i)) > max)
                    max = Integer.valueOf(list.get(i));
            }
            commentId = String.valueOf(max + 1);
        }

        Matcher matcher = pattern.matcher(sqlForsetcommentMessage);
        sqlForsetcommentMessage = matcher.replaceFirst('"'+commentId+'"');
        matcher = pattern.matcher(sqlForsetcommentMessage);
        sqlForsetcommentMessage = matcher.replaceFirst('"'+articleid+'"');
        matcher = pattern.matcher(sqlForsetcommentMessage);
        sqlForsetcommentMessage = matcher.replaceFirst('"'+time()+'"');
        matcher = pattern.matcher(sqlForsetcommentMessage);
        sqlForsetcommentMessage = matcher.replaceFirst('"'+username+'"');
        matcher = pattern.matcher(sqlForsetcommentMessage);
        sqlForsetcommentMessage = matcher.replaceFirst('"'+commentMessage+'"');
        
        int signal = connect.insert(sqlForsetcommentMessage);
        if(signal==1) {
             return "Success";
        }
        else return "Fail";
    }
    
    public String setArticle(){//��������,ͬһ�����߲����������ͬ��Ŀ�����
    	//System.out.print(share);
        String sqlForsetupArticle = "insert into Article( articleid, title, content, share, username, time, classifyid) " +
                "values(?,?,?,?,?,?,?)";//0����Ĭ���ļ���
        DBConnection connect = new DBConnection();//classifyid����������Ĭ���ļ���0
        										//���������ϴ�ʱȷ��								
        String sql = "select articleid from Article where title = ? and username = ?";
        Matcher matcherforsql = pattern.matcher(sql);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        sql = matcherforsql.replaceFirst('"'+title+'"');
        matcherforsql = pattern.matcher(sql);
        sql = matcherforsql.replaceFirst('"'+username+'"');
        List<String> listforsql = connect.select(sql);
        if (listforsql.size() != 0) return "Fail";
        
        List<String> list = connect.select("select articleid from Article");
        if ( list.size() == 0){ //���ݿ�����û��������
            articleid = "1";//ȷ�����µı��
        }
        else {
            int max = 0;
            for (int i = 0 ; i < list.size(); i++){
                if(Integer.valueOf(list.get(i)) > max) max = Integer.valueOf(list.get(i));
            }
            articleid = String.valueOf(max+1);
        }
        
        if (share == null) share = "0";//1������
        else share = "1";//0��������
        classifyid = "0";//�½������¾�����Ĭ���ļ�����
        Matcher matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+articleid+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+title+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+content+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+share+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+username+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+time()+'"');
        matcher = pattern.matcher(sqlForsetupArticle);
        sqlForsetupArticle = matcher.replaceFirst('"'+classifyid+'"');//ȷ����������

        int signal = connect.insert(sqlForsetupArticle);
        if(signal==1) {
        	if (share.equals("1")){
        		return "gotoSetsharearticle";
        	}
        	else return "Success";
        }
        else return "Fail";
    }
    
    public String setSharearticle(){
    	DBConnection connect = new DBConnection();
        List<String> list0=connect.select("select shareArticleid from sharearticle");//�ڹ�������ҳ��������µ�id
        
         if(list0.size()==0)//���ݿ����滹����������
        	 shareArticleid = "1";
         else
         {
        	 int max = 0;
             for (int i = 0 ; i < list0.size(); i++){
            	 if( Integer.valueOf(list0.get(i)) > max) max = Integer.valueOf(list0.get(i));
             }
             shareArticleid = String.valueOf(max+1);
         }
     
        String sqlForsetshareArticle = "insert into sharearticle( shareArticleid, articleid,shareClassfyid, keywords) " +
                 "values(?,?,?,?)";
        Matcher matcher = pattern.matcher(sqlForsetshareArticle);
        sqlForsetshareArticle = matcher.replaceFirst('"'+shareArticleid+'"');
        matcher = pattern.matcher(sqlForsetshareArticle);
        sqlForsetshareArticle = matcher.replaceFirst('"'+articleid+'"');
        matcher = pattern.matcher(sqlForsetshareArticle);
        sqlForsetshareArticle = matcher.replaceFirst('"'+shareClassfyid+'"');
        matcher = pattern.matcher(sqlForsetshareArticle);
        sqlForsetshareArticle = matcher.replaceFirst('"'+keywords+'"');
        
        int signal=connect.insert(sqlForsetshareArticle);//����ע����
        if(signal==1)
            return "Success";
        else
            return "Fail2";
    }
    
    public String time()//��ȡϵͳ��ǰʱ��
    {
        Date date=new Date();
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(date);
        return time;
    }
    
    public String deleteArticle(){//ɾ������
        DBConnection connect = new DBConnection();
        String sqlDelete = "delete from Article where articleid= ?";
        Matcher matcherforsql = pattern.matcher(sqlDelete);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        sqlDelete = matcherforsql.replaceFirst('"'+articleid+'"');
        int signal = connect.delete(sqlDelete);
        if(signal==1) return "Success";
        else return "Fail";
    }
    
    public String gotoeditArticle(){
    	DBConnection connect = new DBConnection();
        String sql = "select * from Article where articleid=?";
        Matcher matcherforsql = pattern.matcher(sql);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        sql = matcherforsql.replaceFirst('"'+articleid+'"');
        List<String> list = connect.select(sql);
        for(String str: list){
        	System.out.println(str);
        }
    	session.setAttribute("updateArticle", list);
    	return "Success";
    }

    public String updateArticle(){//�������� ����������±�ź�����
        DBConnection connect = new DBConnection();
        String sql = "select articleid from Article where username = ? and title = ?";
        Matcher matcherforsql = pattern.matcher(sql);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        sql = matcherforsql.replaceFirst('"'+username+'"');
        matcherforsql = pattern.matcher(sql);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        sql = matcherforsql.replaceFirst('"'+title+'"');
        List<String> listforsql = connect.select(sql);
        if (listforsql.size() != 1) return "Fail";

        String sqlForupdateArticle = "update Article set  title = ?, content = ?, share = ?, time = ? where articleid =?";
        Matcher matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+title+'"');
        matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+content+'"');
        matcher = pattern.matcher(sqlForupdateArticle);
        if(share == null) share = "0";
        else share = "1";
        sqlForupdateArticle = matcher.replaceFirst('"'+share+'"');
        matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+time()+'"');
        matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+articleid+'"');//ȷ����������

        int signal = connect.update(sqlForupdateArticle);
        if( signal == 1)
        {
        	sql = "select * from sharearticle where articleid = ?";//�ڹ������¿���������Ƿ��и�����
        	Matcher matcher11 = pattern.matcher(sql);
    		sql = matcher11.replaceFirst('"'+articleid+'"');
    		DBConnection connect2 = new DBConnection();
    		List<String> list = connect2.select(sql);
    		System.out.print("%%%%%%%%");
        	if (share.equals("1")){//һ�����������
        		for (String str:list){
        			System.out.print(str);
        		}
                if (list.size() != 0) //�еĻ����� û�еĻ�����
                {
                	session.setAttribute("list", list);
                	return "updatesharearticle";
                }
                else return "gotoSetsharearticle";
        	}
        	
        	else{
        		if(list.size() != 0){//֮ǰ���� ���ڲ����� ��ô�ӹ������ɾ��
        			String sqlDelete = "delete from sharearticle where articleid= ?";
        	        matcherforsql = pattern.matcher(sqlDelete);//ͬһ�����߲����������ͬ��Ŀ�����,��ͬ���߿��Գ���
        	        sqlDelete = matcherforsql.replaceFirst('"'+articleid+'"');
        	        int signnal = connect.delete(sqlDelete);
        	        if(signal==1) return "Success";
        	        else return "Fail";
        		}
        		return "Success";
        	}
        }
        else return "Fail";
    }
    
    public String updateshareArticle(){
    	String sqlForupdateArticle = "update sharearticle set shareClassfyid = ?, keywords = ? where articleid =?";
        Matcher matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+shareClassfyid+'"');//
        matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+keywords+'"');//
        matcher = pattern.matcher(sqlForupdateArticle);
        sqlForupdateArticle = matcher.replaceFirst('"'+articleid+'"');//
        DBConnection connect = new DBConnection();
        int signal = connect.update(sqlForupdateArticle);
        if( signal == 1){
        	return "Success";
        } 
        return "Fail";
    }
    
    public String allshare(){
    	String sql = "select articleid from sharearticle";//�ڹ������¿���������Ƿ��и�����
		DBConnection connect2 = new DBConnection();
		List<String> list = connect2.select(sql);
		List<String> list2 =  new ArrayList<>();
		for (int i = 0; i < list.size(); i++){
			String  sql1 = "select * from  article where articleid = ?";
			Matcher matcher = pattern.matcher(sql1);
		    sql1 = matcher.replaceFirst('"'+list.get(i)+'"');//
			List<String> list1 = connect2.select(sql1);//����ÿ�����������id �����±��� �������ǵ���ϸ��Ϣ
			for (String str: list1){//��ϸ��Ϣ��ӵ�
				list2.add(str);
			}
		}
		session.setAttribute("allshare", list2);
    	return "Success";
    }
    
    /*
    ���۱�Ĺ���
    ���۱�� �������µı�� ����ʱ�� �����˵ı�� ��������
    �������۵���ɾ������
    create table Comment(
            commentId varchar(100) not null primary key,
            commentArticleid varchar(100) not null,
            commentTime varchar(100) not null,
            commenterId varchar(100) not null,
            commentMessage varchar(200) not null,
            foreign key(commentArticleid) references Article(articleid) on delete cascade on update cascade
    );
    �������ֵ�ı�,�����ֵҲ�����ı�
     */
    private String searchText;
    private String searchType;

    public void setSearchText(String searchText){
        this.searchText = searchText;
    }

    public void setSearchType(String searchType){
        this.searchType = searchType;
    }

    public String getSearchText(){
        return searchText;
    }

    public String getSearchType(){
        return searchType;
    }

    public String search(){
    	System.out.println(searchText);
    	System.out.println(searchType);
        if (searchType.equals("1")){
            searchBytime(this.searchText);
        }

        else if (searchType.equals("2")){
            searchBykeywords(this.searchText);
        }

        else if (searchType.equals("3")){
            searchBytitle(this.searchText);
        }

        else if(searchType.equals("4")){
            searchBytype(this.searchText);
        }
        else{
            searchBycontent(this.searchText);
        }
        session.setAttribute("searchType",searchType);
        return "Success";
    }
    //����ʱ���ѯ

    public String searchBytime(String searchTime){//��ʱ�����
        String sqlForsearchBytime = "select articleid from sharearticle";

        DBConnection connect = new DBConnection();
        List<String> result = connect.select(sqlForsearchBytime);
      
        
        List<String> resultForsearchbytime = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){//�����еĹ���������ѡ����
        	String sql = "select * from article where articleid = ?";
        	Matcher matcher = pattern.matcher(sql);
            sql = matcher.replaceFirst(result.get(i));
         
            List<String> list = connect.select(sql);
            if(list.get(4).startsWith(searchTime)){//���ʱ��ƥ�䣬�����
                for (String str : list){
                    resultForsearchbytime.add(str);
            }
            }
        }
        session.setAttribute("resultForsearchbytime", resultForsearchbytime);//����ֵ�����µ���ϸ��Ϣ
        return "Sucess";
    }

    //��װ��Ŀ��ѯ �����������¾���ѯ
    public String searchBytitle(String searchTitle){//��������Ŀ���� ,ֻҪ����������Ŀ����һ���־Ϳ���, ȫ�ݼ���
        String sqlForsearchBytitle = "select articleid from sharearticle";

        DBConnection connect = new DBConnection();
        List<String> result = connect.select(sqlForsearchBytitle);

        
        List<String> resultForsearchbytitle = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){//�����еĹ���������ѡ����
        	String sql = "select * from article where articleid = ?";
            Matcher matcher = pattern.matcher(sql);
            sql = matcher.replaceFirst(result.get(i));

            List<String> list = connect.select(sql);
            if(list.get(1).indexOf(searchTitle) != -1){//�����Ŀƥ�䣬�����
                for (String str : list){
                    resultForsearchbytitle.add(str);
                }
            }
        }
        session.setAttribute("resultForsearchbytitle", resultForsearchbytitle);//����ֵ�����µ���ϸ��Ϣ
        return "Sucess";
    }

    //�����Ͳ�ѯ �����������²�ѯ
    public String searchBytype(String searchType){//���������ͼ�������Щ��Ӧ���ǹ������µ��㷨
        String sqlForsearchBytype = "select * from sharearticle";
        DBConnection connect = new DBConnection();
        List<String> result1 = connect.select(sqlForsearchBytype);//��Ź���������Ϣ
        List<String> result = new ArrayList<>();//�����ѡ��������Ϣ

        if(searchType.equals("�������ѧ")) searchType = "1";
        else if(searchType.equals("����")) searchType = "2";
        else if(searchType.equals("����")) searchType = "3";
        else if(searchType.equals("���")) searchType = "4";

        for(int i = 0; i < result1.size(); i+=4){
            if(result1.get(i+2).equals(searchType)){//�������ƥ��
                result.add(result1.get( i + 1));
            }
        }

       
        List<String> resultForsearchbytype = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){//�����еĹ���������ѡ����
        	String sql = "select * from article where articleid = ?";
            Matcher matcher = pattern.matcher(sql);
            sql = matcher.replaceFirst(result.get(i));

            List<String> list = connect.select(sql);
            for (String str : list){
                resultForsearchbytype.add(str);//��������Ϣ��ӵ��б���
            }
        }

        session.setAttribute("resultForsearchbytype", resultForsearchbytype);//����ֵ�����µ���Īĸ
        return "Success";
    }

    //��װ�ؼ��ֲ�ѯ ÿ���������¶�Ҫ�����йؼ���
    public String searchBykeywords(String searchKeywords){//�����Լ������¿��԰������ͷ��࣬
        // ���ǹ����������Ҫ��һ�����߶����ǩ������˵�Ƿ��࣬�ͱ���˵��ķ����Ǽ������ѧ���ؼ�������Ϣ��ȫ
        String sqlForsearchBykeywords = "select * from shareArticle";
        DBConnection connect = new DBConnection();

        List<String> result1 = connect.select(sqlForsearchBykeywords);
        List<String> result = new ArrayList<>();
        List<String> resultForsearchbykeywords = new ArrayList<>();

        for(int i = 0; i < result1.size(); i+=4){
            if(result1.get(i+3).indexOf(searchKeywords) != -1){//�������ƥ��
                result.add(result1.get( i + 1));
            }
        }

        
        for (int i = 0; i < result.size(); i++){
        	String sql = "select * from article where articleid = ?";
            Matcher matcher = pattern.matcher(sql);
            sql = matcher.replaceFirst(result.get(i));

            List<String> list = connect.select(sql);
            for (String str : list){
                resultForsearchbykeywords.add(str);//��������Ϣ��ӵ��б���
            }
        }

        session.setAttribute("resultForsearchbykeywords", resultForsearchbykeywords);//����ֵ�����µ���Ŀ
        return "Sucess";
    }

    public String searchBycontent(String SearchStr){
        String string = "select articleid from shareArticle";
        DBConnection connect = new DBConnection();
        List<String> result = connect.select(string);//result �洢��������±��
        List<String> result1 ;//�м����
        List<String> resultForsearchbycontent = new ArrayList<>();//�洢���ؽ��

        
        for (int i = 0; i < result.size(); i++){
        	String sql = "select * from article where articleid = ?";
            Matcher matcher = pattern.matcher(sql);
            sql = matcher.replaceFirst(result.get(i));

            result1 = connect.select(sql);
            if( result1.get(2).indexOf(SearchStr) != -1){//����������ȥƥ���ѯ�ַ���������������������
                for(String str : result1){
                    resultForsearchbycontent.add(str);
                }
            }
        }

        session.setAttribute("resultForsearchbycontent", resultForsearchbycontent);//����ֵ�����µ���Ŀ
        return "Sucess";
    }
}
