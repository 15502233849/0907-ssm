package com.tjetc.service.impl;

import com.tjetc.domain.Admin;
import com.tjetc.domain.AdminExample;
import com.tjetc.mapper.AdminMapper;
import com.tjetc.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public Admin findByUsername(String username) {
        AdminExample example=new AdminExample();//查询的例子
        example.createCriteria().andUsernameEqualTo(username);//example.createCriteria()查询的规则 where username=#{username}
        List<Admin> list = adminMapper.selectByExample(example);//最终转成:where username=#{username}
        return list!=null && list.size()>0?list.get(0):null;
    }
}
