package com.controller;
import java.util.Random;

public class TempKey {

    private boolean lowerCheck;
    private int size;

    //키의 사이즈값과, 키의 옵션을 선택할 수 있다.
    public String getKey(int size, boolean lowerCheck) {
        this.size = size;
        this.lowerCheck = lowerCheck;
        return init();
    }

    private String init() {
        Random ran = new Random();
        StringBuffer sb = new StringBuffer();
        int num = 0;
        do {
            num = ran.nextInt(75)+48;
            if((num>=48 && num<=57) || (num>=65 && num<=90) || (num>=97 && num<=122)) {
                sb.append((char)num);
            }else {
                continue;
            }
        } while (sb.length() < size);
        //키값을 문자열로 변경하며 소문자로 변경한다.
        if(lowerCheck) {
            return sb.toString().toLowerCase();
        }
        return sb.toString();
    }

}