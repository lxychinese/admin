package com.test;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
public class Server extends Thread  {
	private Socket socket;
	public static ServerSocket server;
	Server(Socket socket){
		this.socket=socket;
	}
    @Override
    public void run() {
    	//由Socket对象得到输入流，并构造相应的BufferedReader对象
    	try {
			OutputStream os = socket.getOutputStream();
			InputStream is=socket.getInputStream();
			os.write("woloce you".getBytes());
			byte[] bt=new byte[100];
			int len=is.read(bt);
			System.out.println(new String(bt,0,len));
			os.close();
			is.close();
			socket.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    public static void main(String[] args)throws Exception {
    	ServerSocket server=getInstance();
    	Socket socket=server.accept();
    	new  Server(socket).start();
    	server.close();
    }
	public static ServerSocket getInstance() throws Exception{
		if(server==null){
			server=new ServerSocket(4700);;
		}
		return server;
	}

   
}