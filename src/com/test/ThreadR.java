/**  
* @Title:  ThreadR.java
* @Package com.test
* @Description: TODO(用一句话描述该文件做什么)
* @author Liu XiaoYang
* @date  2014-8-27 下午12:16:08
* @version V1.0  
* Update Logs:
* ****************************************************
* Name:
* Date:
* Description:
******************************************************
*/
package com.test;

/**
 * @ClassName: ThreadR
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author Liu XiaoYang
 * @date 2014-8-27 下午12:16:08
 *
 */
public class ThreadR {
	public static void main(String[] args) {
		new ThreadR().init();
	}
	private void init(){
		final OutPut outPut=new OutPut();
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				while(true){
					try {
						Thread.sleep(10);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					outPut.put("liuxiaoyang");
				}
				
			}
		}).start();
		
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				while(true){
					try {
						Thread.sleep(10);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					outPut.put("hongmeili");
				}
				
			}
		}).start();
	}

	class OutPut{
		String xssss="xx";
		public void put(String name){
			int len=name.length();
			synchronized (xssss) {
				for(int i=0;i<len;i++){
					System.out.print(name.charAt(i));
				}
			}
			System.out.println();
		}
	}
}
