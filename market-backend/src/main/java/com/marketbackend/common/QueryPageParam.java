package com.marketbackend.common;

import lombok.Data;

import java.util.HashMap;

/*查询分页参数
 * */
@Data
public class QueryPageParam {

    private static int PAGE_SIZE = 15;
    private static int PAGE_NUM = 1;
    /** PageSize 每页条数
     * PageNum 当前页数
     * param 封装其他信息 例如 姓名 年龄
     */
    private int pageSize=PAGE_SIZE;
    private int pageNum=PAGE_NUM;
    private HashMap param=new HashMap<>();

}
