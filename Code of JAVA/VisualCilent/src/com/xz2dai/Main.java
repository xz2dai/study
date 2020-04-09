package com.xz2dai;

import com.xz2dai.bean.Login;
import com.xz2dai.bean.UserOrdinary;

import java.io.*;

public class Main {

    private static String ip = "120.79.87.21";
    private static int port = 5423;
    private static int portUpload = 5422;

    public static void main(String[] args) throws IOException {
	// write your code here

        //Socket sc = new Socket("101.133.235.230",2333);
        //Socket sc = new Socket(InetAddress.getLocalHost(),2333);


        /*
        BufferedReader br = new BufferedReader(new InputStreamReader(sc.getInputStream()));

        DataOutputStream dout = new DataOutputStream(sc.getOutputStream());

         */

        /*
        //初始化
        BufferedReader din = new BufferedReader(new InputStreamReader(sc.getInputStream(), StandardCharsets.UTF_8));
        BufferedWriter dout = new BufferedWriter(new OutputStreamWriter(sc.getOutputStream(), StandardCharsets.UTF_8));
        //创建信息
        TestPack testpack = new TestPack();
        testpack.setId(10086);
        testpack.setInformation("hao!");
        //包装信息
        JSONObject job = (JSONObject)JSON.toJSON(testpack);
        job.put("type","search");
        job.put("login","1");
        String jstr = JSONObject.toJSONString(job);
        //发送信息
        System.out.println("send message...");
        dout.write(jstr+"\n");
        dout.flush();
        System.out.println("send message successful");
        //收取回复信息
        System.out.println("客户端："+din.readLine());
        System.out.println("客户端："+din.readLine());
        //关闭连接
        din.close();
        dout.close();
        sc.close();
        */


        Login tp = new Login();
        tp.setName("123");
        tp.setPassWord("123");

        Connect ct = new Connect(ip,port);
        ct.sendMessage(ct.search("login",tp));
        String rec = "";
        rec = ct.receiveMessage();
        System.out.println("received server message:"+rec);
        UserOrdinary uo = new UserOrdinary();
        uo  = (UserOrdinary) ct.disposeOperation(rec);
        if(uo!=null){
            System.out.println("UserID:"+uo.getIdNum());
            System.out.println("User PassWord:"+uo.getPassword());
        }
        ct.close();

    }
}
