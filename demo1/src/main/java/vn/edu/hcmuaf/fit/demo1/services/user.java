package vn.edu.hcmuaf.fit.demo1.services;

import java.util.HashMap;
import java.util.Map;

public class user {
    private  static  user instance;
    private static Map<String,String >users = new HashMap<>();
    static {
        users.put("admin","admin");
        users.put("user","user");
        users.put("Ti","123");
    }
    private  user(){

    }
    public  static user getInstance(){
        if(instance==null){
            instance=new user();
        }
        return instance;
    }
    public boolean checkLogin(String username,String passwords){
        if(users.containsKey(username)&&users.get(username).equals(passwords)){
            return  true;
        }
        return  false;
    }
    public boolean register(String username,String password,String email,String phone){
        if(users.containsKey(username)){
            return  false;
        }else{
            users.put(username,password);
        }
        return  true;
    }

}
