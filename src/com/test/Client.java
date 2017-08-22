package com.test;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class Client extends Thread {

	private static Socket socket;
    private Client(Socket socket){
    	this.socket=socket;
    }
	public static void main(String[] args) throws Exception {
		Socket socket=getInstance();
		OutputStream os=socket.getOutputStream();
		InputStream is =socket.getInputStream();
		byte[] buf=new byte[100];
		int len=is.read(buf);
		System.out.println(new String(buf,0,len));
		os.write("heool thidds is aa".getBytes());
		os.close();
		is.close();
		socket.close();
	}
	public static Socket getInstance() throws Exception{
		if(socket==null){
			socket=new Socket("127.0.0.1",4700);
		}
		return socket;
	}


}
