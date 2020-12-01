<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<div class="control-group">
    <div class="controls">
   <input value="${student.sid}"  name="sid" id="id" type="hidden" />
        学号：<input value="${student.sno}" class="input-small span3" name="sno" id="stuno" type="text" placeholder="学号"/>
        姓名：<input value="${student.stuname}" class="input-small span3" name="stuname" id="stuname" type="text" placeholder="姓名"/>
    </div>
</div>
<div class="control-group">
    <div class="controls">
        性别：<input value="${student.stusex}" class="input-small span3" name="stusex" id="stusex" type="text" placeholder="性别"/>
        专业：<input value="${student.stusub}" class="input-small span3" name="stusub" id="stusub" type="text" placeholder="专业"/> 
    </div>
</div>
<div class="control-group">
    <div class="controls">
        班级：<input value="${student.stuclass}" class="input-small span3" name="stuclass" id="stuclass" type="text" placeholder="班级"/>
        电话：<input value="${student.stuphone}" class="input-small span3" name="stuphone" id="stuphone" type="text" placeholder="电话"/> 
    </div>
</div>
<div class="control-group">
    <div class="controls">
        生源地：<input value="${student.stuaddress}" class="input-small span6" name="stuaddress" id="stuclass" type="text" placeholder="生源地"/>
    </div>
</div>