package com.baidu.task9.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.Random;

public class RandomService {
	private static final Log log = LogFactory.getLog(RandomService.class);
	public static StudentService getRandomService() throws RemoteException, NotBoundException, MalformedURLException {
		log.info("正在随机选择服务...");
		//产生一个[0-2)的随机数，0选择service1，1选择service2
		Random random = new Random();
		int randomInt = random.nextInt(2);
		//随机数为0，尝试开启service1
		if (randomInt == 0) try {
			log.info("正在启动service1...");
			StudentService1 service1 = getStudentService1();
			log.info("成功启动service1!");
			return service1;
		} catch (Exception e) {
			//捕捉到异常，说明service1已经关闭，直接返回service2
			log.info("service1已经关闭，正在切换到了service2...");
			StudentService2 service2 = getStudentService2();
			log.info("成功切换到service2!");
			return service2;
		}
		else {
			//随机数为1，尝试开启service2
			try{
				log.info("正在启动service2...");
				StudentService2 service2 = getStudentService2();
				log.info("成功启动service2!");
				return service2;
			}catch (Exception e){
				//捕捉到异常，说明service2已经关闭，直接返回service1
				log.info("service2已经关闭，正在切换到了service1..");
				StudentService1 service1 = getStudentService1();
				log.info("成功切换到service1!");
				return service1;
			}
		}
	}

	private static StudentService1 getStudentService1() throws RemoteException, NotBoundException, MalformedURLException {
		return (StudentService1) Naming.lookup("rmi://127.0.0.1:1111/StudentService");
	}
	private static StudentService2 getStudentService2() throws RemoteException, NotBoundException, MalformedURLException {
		return (StudentService2) Naming.lookup("rmi://127.0.0.1:2222/StudentService");
	}
}
