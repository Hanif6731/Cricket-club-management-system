/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cricketclubmangementsystem;
import cricketclubmangementsystem.profile.AdminFrame;
import cricketclubmangementsystem.profile.PhysioFrame;
import cricketclubmangementsystem.profile.EventManagerFrame;
import cricketclubmangementsystem.profile.CoachFrame;
import cricketclubmangementsystem.profile.PlayerFrame;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
public class DBConnect {
    private boolean valid = false;
    private Connection con;
    private Statement st;
    private ResultSet rs,result;
    private ArrayList al=new ArrayList();
    
    //private 
   // private 
    //private 
    //private 
   
    public DBConnect(){
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_club_mgt_sys","root","");
        st = con.createStatement();
            System.out.println("Connecting Database...");

        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, "Database Connection Failed!");
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
    
    }
    
    public void login(ArrayList log){
        al=log;
        String query;
        try{
            query="select * from `"+al.get(0)+"` where username='"+al.get(1)+"' and password='"+al.get(2)+"';";
            result=st.executeQuery(query);
            System.out.println(query);
            if(result.next()){
                valid=true;
                rs=st.executeQuery(query);
                
            }
            else{
                valid=false;
            }
            
            
        }
        catch(Exception e){
            System.out.println("Error: Login Failed"+e);
            e.printStackTrace();
        }
       
    }
    public boolean moveFrame(ArrayList log){
        if(valid){
            
            if(log.get(0)=="player"){
                PlayerFrame pf=new PlayerFrame();
                pf.setVisible(true);
                //pf.SetList(log);
                pf.dbase(this);
                valid=false;
                return true;
            }
            else if(log.get(0)=="coach"){
                CoachFrame cf=new CoachFrame();
                cf.setVisible(true);
                //cf.SetList(log);
                cf.dbase(this);
                valid=false;
                return true;
            }
            else if(log.get(0)=="event_mgr"){
                EventManagerFrame mf=new EventManagerFrame();
                mf.setVisible(true);
               // mf.SetList(log);
               mf.dbase(this);
                valid=false;
                return true;
            }
            else if(log.get(0)=="physio"){
                PhysioFrame phf=new PhysioFrame();
                phf.setVisible(true);
                //phf.SetList(log);
                phf.dbase(this);
                valid=false;
                return true;
                
            }
            
            
        }
        else{
            JOptionPane.showMessageDialog(null, "User ID or Password is incorrect!");
            
            return false;
        }
        return false;
    }
    public ResultSet getInfo(){
        String query;
        try{
            query="select * from `"+al.get(0)+"` where username='"+al.get(1)+"' and password='"+al.get(2)+"';";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    
    public void insert(ArrayList ia){
        try{
            String query=null;
            
            if(ia.get(0)=="player"){
                 query= "Insert into "+ia.get(0)+" (username,password,name,Jersey_no,gender,phone,email,Address,birth_date,debute,player_role,bat_style,bowl_style,runs,wickets,catch,stumping) values('"
                    +ia.get(1)+"','"+ia.get(2)+"','"+ia.get(3)+"',"+ia.get(4)+",'"+ia.get(5)+"','"+ia.get(6)+"','"+ia.get(7)
                    +"','"+ia.get(8)+"','"+ia.get(9)+"',CURRENT_DATE,'"+ia.get(11)+"','"+ia.get(12)
                         +"','"+ia.get(13)+"',"+ia.get(14)+","+ia.get(15)+","+ia.get(16)+","+ia.get(17)+");";
            }
            else if(ia.get(0)=="coach"){
                 query= "Insert into "+ia.get(0)+" (username,password,name,Role,phone,email,birth_date,joinnig_date,Adress) values('"
                    +ia.get(1)+"','"+ia.get(2)+"','"+ia.get(3)+"','"+ia.get(4)+"','"+ia.get(5)+"','"+ia.get(6)+"','"+ia.get(7)
                    +"',CURRENT_DATE,'"+ia.get(9)+"');";
            }
            else if(ia.get(0)=="event_mgr"){
                 query= "Insert into "+ia.get(0)+" (username,password,name,phone,email,gender,birth_date,joinnig_date,Adress) values('"
                    +ia.get(1)+"','"+ia.get(2)+"','"+ia.get(3)+"','"+ia.get(4)+"','"+ia.get(5)+"','"+ia.get(6)+"','"+ia.get(7)
                    +"',CURRENT_DATE,'"+ia.get(9)+"');";
            }
            else if(ia.get(0)=="physio"){
                 query= "Insert into "+ia.get(0)+" (username,password,name,phone,email,gender,birth_date,joinnig_date,Adress) values('"
                    +ia.get(1)+"','"+ia.get(2)+"','"+ia.get(3)+"','"+ia.get(4)+"','"+ia.get(5)+"','"+ia.get(6)+"','"+ia.get(7)
                    +"',CURRENT_DATE,'"+ia.get(9)+"');";
            }
            
            
            
            
            st.executeUpdate(query); 
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Registration successfull!");
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Admin databse exception!"+e);
            System.out.println(e);
            e.printStackTrace();
        }
        
    }
    public void update(ArrayList ia){
        try{
            String query=null;
            
            if(ia.get(0)=="player"){
                 query= "update "+ia.get(0)+" set password='"+ia.get(2)+"',name='"+ia.get(3)+"',Jersey_no="+ia.get(4)+",gender='"+ia.get(5)+"',"
                         + "phone='"+ia.get(6)+"',email='"+ia.get(7)+"',Address='"+ia.get(8)+"',birth_date='"+ia.get(9)+"',player_role='"+ia.get(11)+"',bat_style='"+ia.get(12)+"',bowl_style='"+ia.get(13)+"' where username='"+ia.get(1)+"';";
            }
            else if(ia.get(0)=="coach"){
                 query= "update "+ia.get(0)+" set password='"+ia.get(2)+"',name='"+ia.get(3)+"',Role='"+ia.get(4)+"',phone='"+ia.get(5)+"',"
                         + "email='"+ia.get(6)+"',birth_date='"+ia.get(7)+"',"
                         + "Adress='"+ia.get(9)+"' where username='"+ia.get(1)+"';";
            }
            else if(ia.get(0)=="event_mgr"){
                 query="update "+ia.get(0)+" set password='"+ia.get(2)+"',name='"+ia.get(3)+"',phone='"+ia.get(4)+"',"
                         + "email='"+ia.get(5)+"', gender='"+ia.get(6)+"',birth_date='"+ia.get(7)+"',"
                         + "Adress='"+ia.get(9)+"' where username='"+ia.get(1)+"';";
            }
            else if(ia.get(0)=="physio"){
                 query="update "+ia.get(0)+" set password='"+ia.get(2)+"',name='"+ia.get(3)+"',phone='"+ia.get(4)+"',"
                         + "email='"+ia.get(5)+"', gender='"+ia.get(6)+"',birth_date='"+ia.get(7)+"',"
                         + "Adress='"+ia.get(9)+"' where username='"+ia.get(1)+"';";
            }
            
            
            
            
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Updated successfully!");
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Databse exception!"+e);
            System.out.println(e);
            e.printStackTrace();
        }
        
    }
    public ResultSet getSearchRes(ArrayList alist){
        String query;
        try{
            query="select * from `"+alist.get(0)+"` where username='"+alist.get(1)+"';";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet getLoadRes(ArrayList alist){
        try{
            String query = "select * from `"+alist.get(0)+"`;"; 
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(SQLException e){
            System.out.println(e);
            e.printStackTrace();
        }
        
        return null;
    }
    public void DeleteProfile(ArrayList alist){
         try{
            String query = "delete from `"+alist.get(0)+"` where username='"+alist.get(1)+"';"; 
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Profile Deleted successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Databse exception!"+e);
            System.out.println(e);
            e.printStackTrace();
            
        }
        
        
    }
    
    public ResultSet loadNews(){
        String query;
        try{
            query="select DATE_FORMAT(date, '%Y-%m-%d') as date,time_FORMAT(date, '%h:%i') as time ,"
                    + "time_FORMAT(date, '%p') as ampm, news from `news` order by date desc;";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet loadEvent(){
        String query;
        try{
            query="select DATE_FORMAT(date, '%Y-%m-%d') as date,time_FORMAT(date, '%h:%i') as time,"
                    + "time_FORMAT(date, '%p') as ampm, venue,team1,team2  from `event` WHERE date>CURRENT_DATE or date=CURRENT_DATE  order by datediff(date,CURRENT_DATE)";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet loadNotice(){
        String query;
        try{
            query="select DATE_FORMAT(date, '%Y-%m-%d') as date,time_FORMAT(date, '%h:%i') as time,"
                    + "time_FORMAT(date, '%p') as ampm, notice from `notice` order by date desc;";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public void postNoticeOrNews(ArrayList ia){
        try{
            String query="insert into "+ia.get(0)+" ( date,"+ia.get(0)+") values(CURRENT_TIMESTAMP,'"+ia.get(1)+"');";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, ia.get(0)+" published successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, ia.get(0)+" publication failed!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
    
    
    public void applyOrComplainToAdmin(ArrayList ia){
        try{
            String query=null;
            if(ia.get(0)=="application"){
                query="insert into "+ia.get(0)+" (username,date,application) values ('"+ia.get(1)+"', CURRENT_DATE ,'"+ia.get(2)+"');";
            }
            else if(ia.get(0)=="complain"){
                query="insert into "+ia.get(0)+" (username,date,complain) values ('"+ia.get(1)+"', CURRENT_DATE,'"+ia.get(2)+"');";
            }
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, ia.get(0)+" sent successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, ia.get(0)+" not sent!");
            System.out.println(e);
            e.printStackTrace();
        }
        
    }
    public ResultSet applicationOrComplains(String str){
        try{ 
            String query="select * from "+str+" order by date desc";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(SQLException e){
            System.out.println(e);
            e.printStackTrace();
        }
        return null;
    }
    
    public void schedeuleEvent(ArrayList ia){
        try{
            String query="insert into event ( date,venue,team1,team2) values('"+ia.get(0)+" "+ia.get(1)+"','"+ia.get(2)+"','"+ia.get(3)+"','"+ia.get(4)+"');";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Event scheduled successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Failed to schedule event!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
    public void scheduleSession(ArrayList ia){
        try{
            String query = "insert into "+ia.get(0)+" ( date,place) values('"+ia.get(1)+" "+ia.get(2)+"','"+ia.get(3)+"');";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, ia.get(0)+" scheduled successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Failed to schedule "+ia.get(0)+" session!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
    public ResultSet getSession(String str){
        try{
            String query="select DATE_FORMAT(date, '%Y-%m-%d') as date,time_FORMAT(date, '%h:%i') as time ,"
                    + "time_FORMAT(date, '%p') as ampm, place from `"+str+"` WHERE date>CURRENT_DATE or date=CURRENT_DATE  order by datediff(date,CURRENT_DATE);";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
            
        }
        catch(SQLException e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    
    public void createTeam(ArrayList list){
        try{
            String query = "insert into team(id,name,type) values('"+list.get(0)+"','"+list.get(1)+"','"+list.get(2)+"');";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Team created successfully!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Failed to create team!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
    public ResultSet getTeamID(){
        String query;
        try{
            query="select id from `team`";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet getTeamInfo(String id){
        String query;
        try{
            query="select name,type from `team` where id='"+id+"';";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet getTeamPlayers(String id){
        String query;
        try{
            query="SELECT p.username as id,p.name AS name,pt.role as role from player p, "
                    + "pl_tm pt where p.username=pt.pid AND p.username in(SELECT pid FROM pl_tm WHERE tid='"+id+"') and pt.tid='"+id+"'";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    
    public ResultSet getPlayersID(String id){
        String query;
        try{
            query="SELECT p.username as id from player p "
                    + " where  p.username not in(SELECT pid FROM pl_tm WHERE tid='"+id+"')";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public ResultSet getPlayerInfo(String id){
        String query;
        try{
            query="select name, player_role as type from player where username = '"+id+"';";
            rs=st.executeQuery(query);
            System.out.println(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error: "+e);
            e.printStackTrace();
        }
        return null;
    }
    public void selectForTeam(ArrayList list){
        try{
            String query = "insert into pl_tm(pid,tid,role) values('"+list.get(0)+"','"+list.get(1)+"','"+list.get(2)+"');";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Player Selcted for team "+list.get(1)+"!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Failed to Select Player!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
    
    public void deselectFromTeam(ArrayList list){
        try{
            String query = "delete from pl_tm where pid='"+list.get(0)+"' and tid='"+list.get(1)+"';";
            st.executeUpdate(query);
            System.out.println(query);
            JOptionPane.showMessageDialog(null, "Player deselcted from team "+list.get(1)+"!");
            
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Failed to deselect Player!");
            System.out.println(e);
            e.printStackTrace();
            
        }
    }
}
