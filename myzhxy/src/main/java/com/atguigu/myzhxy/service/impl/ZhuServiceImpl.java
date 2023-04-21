package com.atguigu.myzhxy.service.impl;

import com.atguigu.myzhxy.mapper.ZhuMapper;
import com.atguigu.myzhxy.pojo.Zhu;
import com.atguigu.myzhxy.service.ZhuService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
@Transactional
public class ZhuServiceImpl extends ServiceImpl<ZhuMapper,Zhu> implements ZhuService {


    @Override
    public IPage<Zhu> getZhuByOpr(Page<Zhu> pageParam, String gradeName) {

        QueryWrapper<Zhu> queryWrapper=new QueryWrapper();

        if (!StringUtils.isEmpty(gradeName)) {
            queryWrapper.like("name",gradeName);
        }

        queryWrapper.orderByDesc("id");

        Page<Zhu> page = baseMapper.selectPage(pageParam, queryWrapper);

        return page;
    }

    @Override
    public List<Zhu> getZhu() {
        return  baseMapper.selectList(null);
    }
}

