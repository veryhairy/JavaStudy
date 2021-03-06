package com.yy.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class ReceiveMain {
    public static void main(String[] args) throws IOException {
        //定义一个ds监听8080端口
        DatagramSocket ds=new DatagramSocket(8081);

        byte[] buff=new byte[1024];

        //定义一个数据包，用来接收数据
        DatagramPacket dp=new DatagramPacket(buff,0,buff.length);

        while (true){


            //调用ds的方法receive
            //会将ds接收到的数据，存到dp中
            ds.receive(dp);

            String hostName = dp.getAddress().getHostName();

            //根据dp获得的字节，创建出字符串
            String data=new String(dp.getData(),0,dp.getLength());
            System.out.println(data+"---from:"+hostName);

        }

    }
}
