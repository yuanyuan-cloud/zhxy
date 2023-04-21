package com.atguigu.myzhxy.mapper;

import com.atguigu.myzhxy.pojo.Teacher;
import com.atguigu.myzhxy.vo.MailListVo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherMapper extends BaseMapper<Teacher> {

    /**
     * 通讯录分页
     */
    IPage<MailListVo> getPageList(Page<Teacher> page,
                                  @Param(value = "name") String name,
                                  @Param(value = "type") String type);
}
