<#-- @ftlvariable name="employment" type="java.util.List<com.voc.common.entity.Employment>" -->
<#-- @ftlvariable name="carouseInfo" type="java.util.List<com.voc.common.entity.CourseSystem>" -->
<#-- @ftlvariable name="carouseSys" type="java.util.List<com.voc.common.entity.CourseSystem>" -->
<#-- @ftlvariable name="carouse" type="java.util.List<com.voc.common.entity.About>" -->
<#-- @ftlvariable name="news" type="java.util.List<com.voc.common.entity.About>" -->
<#-- @ftlvariable name="story" type="java.util.List<com.voc.common.entity.About>" -->
<#-- @ftlvariable name="dynamic" type="java.util.List<com.voc.common.entity.About>" -->


<!-- 头部轮播 -->
<div>
	<div class="nav_fixed"></div>
	<div class="a_banner">
		<div class="a_banner_pic">
			<ul>
            <#list carouse as item>
				<li>
					<a href="#"
					   title="${item.title}">
						<img src="${webRoot}/${item.image}" alt="图片不存在！" height="500" width="1920">
					</a>
				</li>
            </#list>
			</ul>
			<a href="javascript:void(0);" class="a_prev"></a>
			<a href="javascript:void(0);" class="a_next"></a>
			<div class="a_change_btn"></div>
		</div>
	</div>
</div>

<!-- 轮播附加菜单 -->
<div class="banner_up base">
	<div class="banner_tap_main">
		<ul class="ul1">
			<li class="banner_up_left">
            <#list carouseSys as cs>
				<a href="${webRoot}/course/${cs.csName}.html">
					<span>${cs.description}</span>
					<i>></i>
				</a>
            </#list>
			</li>
		</ul>
		<div class="banner_up_ul2">
			<ul>
            <#list carouseSys as cs>
				<li class="banner_up_right">
					<a href="${webRoot}/course/${cs.csName}.html" target="_blank" class="a1">课程介绍</a>
					<a href="#" class="a2">就业薪资</a>
					<a href="#" class="a3">师资团队</a>
					<a href="#" class="a4">学习视频</a>
				</li>
            </#list>
			</ul>
		</div>
	</div>
</div>

<!-- 开班信息 -->
<div id="courseInfo" style="width: 1200px;margin:0 auto;">
	<div>
		<h2 class="main_title">开班信息</h2>
		<div class="subtitle">THE CLASS INFORMATION</div>
		<div style="margin:50px 0;width: 1200px">
			<ul class="kb_list kb_list2 clear">
            <#list carouseInfo as cInfo>
				<li style="overflow: hidden;width: 300px"
					class="<#if cInfo.csName == "android">ad</#if>
                    <#if cInfo.csName == "html5">h5</#if>
                    <#if cInfo.csName == "ui">ui</#if>
                    <#if cInfo.csName == "php">php</#if>
                    <#if cInfo.csName == "java">java</#if>
                    <#if cInfo.csName == "big_data">yun</#if>
                    <#if cInfo.csName == "python">ad</#if>
                    <#if cInfo.csName == "ios">ad</#if>">

					<h6>${cInfo.nickName}</h6>
                    <#list cInfo.courses as info>
                    <#--禁用课程不显示-->
                    <#--<#if info.status != -1>-->
						<div>
							<i>${info.cName}</i>
							<span>${info.beginsDate?string("yyyy-MM-dd")}</span>
                            <#global CSR = "http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%2Fdemo%2Findex.html&auth_key=1489557009-0-0-0487e60739c4af0c15cc0eb92952f03a">
							<a href="${CSR}" target="_blank"
                                <#if info.status == -1> >禁用 </#if>
                                <#if info.status == 0> class="kb">开班 </#if>
                                <#if info.status == 1> class="qz">抢座 </#if>
                                <#if info.status == 2> class="bm">爆满 </#if>
							</a>
						</div>
                    <#--</#if>-->
                    </#list>
				</li>
            </#list>
			</ul>
		</div>

	</div>
</div>

<!-- 关于蔲丁 -->
<div class="sxh161128 base">
	<ul class="clear">
		<li>
			<div class="clear title161128">
				<h4>蔲丁动态</h4>
			</div>
        <#if news??>
			<img src="${webRoot}/${(news[0].image)!}" alt="图片或记录不存在！" width="360" height="120">
			<div class="word_list161128">
                <#list news as new>
					<div style="height: 30px;width: 360px;overflow: hidden">
						<a href="#" target="_blank" title="${(new.title)!}">
							<i>▪ ${(new.title)!}</i>
						</a>
					</div>
                </#list>
			</div>

        </#if>
		</li>
		<li>
			<div class="clear title161128">
				<h4>蔲丁故事</h4>
			</div>
        <#if story??>
			<img src="${webRoot}/${(story[0].image)!}" alt="图片或记录不存在！" width="360" height="120">
			<div class="word_list161128">
                <#list story as s>
					<div style="height: 30px;width: 360px;overflow: hidden">
						<a href="#" target="_blank" title="${(s.title)!}">
							<i>▪ ${(s.title)!}</i>
						</a>
					</div>
                </#list>
			</div>
        </#if>
		</li>
		<li>
			<div class="clear title161128">
				<h4>行业动态</h4>
			</div>
        <#if dynamic??>
			<img src="${webRoot}/${(dynamic[0].image)!}" alt="图片或记录不存在！" width="360" height="120">
			<div class="word_list161128">
                <#list dynamic as dyn>
					<div style="height: 30px;width: 360px;overflow: hidden">
						<a href="#" target="_blank" title="${(dyn.title)!}">
							<i>▪ ${(dyn.title)!}</i>
						</a>
					</div>
                </#list>
			</div>
        </#if>
		</li>
	</ul>
</div>

<!-- 课程体系 -->
<div class="contain contain3">
	<div class="class161124 base">
		<h2 class="main_title">课程体系</h2>
		<div class="subtitle">COURSE SYSTEM
			<div class="jyxb_more">
				<!-- 打开客服窗口 -->
				<a href="#" target="_block">零基础入口</a>
			</div>
		</div>
		<ul class="class_title clear">
			<!-- Android -->
			<li>
				<img src="${webRoot}/picture/class_pic2.png" height="107" width="93">
				<em>Android</em>
				<p>改变无处不在<br/>爱创新 选安卓</p>
				<a href="${webRoot}/course/android.html" target="_blank">
					<!--${webRoot}/page/android.html-->
					<div class="clear">
						<span> 讲师<br/> 团队 </span>
						<i>
							实力派讲师 <br/>
							经典与前沿结合 <br/>
							企业级联动教学模式
						</i>
					</div>
					<div class="clear">
						<span>视频<br/>教程</span>
						<i> 经典入门课程<br/> 常见问题解答<br/> 技术热点解析 </i>
					</div>
					<div class="clear">
						<!-- TODO 查询指点月份 指定（所有） 课程 最高就业薪资 以及平均薪资 -->
						<span>就业<br/>薪资</span>
						<i>2017年1月<br/>最高就业薪资9000<br/>平均就业薪资8250</i>
					</div>
				</a>
			</li>
			<!-- HTML5 -->
			<li>
				<img src="${webRoot}/picture/class_pic3.png" height="107" width="93">
				<em>HTML5</em>
				<p>跨平台操作 混合式开发<br/>学会JS原生层 独立完成移动端解决方案</p>
				<a href="${webRoot}/course/html5.html" target="_blank">
					<div class="clear">
						<span>讲师<br/>团队</span>
						<i>教学大纲实时修订<br/>“白居易”式教学简单易懂<br/>大牛讲师熟知企业需求</i>
					</div>
					<div class="clear">
						<span>视频<br/>教程</span>
						<i>经典入门视频<br/>热点技术解析<br/>前沿技术探讨</i>
					</div>
					<div class="clear">
						<span>就业<br/>薪资</span>
						<i>2017年1月<br/>最高就业薪资13000<br/>平均就业薪资9958</i>
					</div>
				</a>
			</li>
			<!-- UI -->
			<li>
				<img src="${webRoot}/picture/class_pic4.png" height="107" width="93">
				<em>UI</em>
				<p>做全能UI设计师<br/>要做不一样的自己</p>
				<a href="${webRoot}/course/ui.html" target="_blank">
					<div class="clear">
						<span>讲师<br/>团队</span>
						<i>殿堂级讲师<br/>世界500强项目经验<br/>每两周一次课件更新</i>
					</div>
					<div class="clear">
						<span>视频<br/>教程</span>
						<i>经典入门视频<br/>热点技术解析<br/>前沿技术探讨</i>
					</div>
					<div class="clear">
						<span>就业<br/>薪资</span>
						<i>2016年12月<br/>最高就业薪资13000<br/>平均就业薪资9804</i>
					</div>
				</a>
			</li>
			<!-- JavaEE -->
			<li>
				<img src="${webRoot}/picture/class_pic6.png" height="107" width="93">
				<em>JavaEE</em>
				<p>主流技术+前沿技术+企业级联动教学<br/>=BAT级企业OFFER</p>
				<a href="${webRoot}/course/java.html" target="_blank">
					<div class="clear">
						<span>讲师<br/>团队</span>
						<i>极品大咖实力相授<br/>紧贴BAT项目实施<br/>着重培养编程思维</i>
					</div>
					<div class="clear">
						<span>教学<br/>视频</span>
						<i>经典入门视频<br/>热门技术解析<br/>前沿技术探讨</i>
					</div>
					<div class="clear">
						<span>课程<br/>详解</span>
						<i>项目实战层层递进<br/>培养独立完成项目的能力<br/>大数据、集群让技术更先进</i>
					</div>
				</a>
			</li>
			<!-- 大数据 -->
			<li>
				<img src="${webRoot}/picture/class_pic7.png" height="107" width="93">
				<em>大数据</em>
				<p>大数据开发引领未来<br/>垂青先知者 你要想要的尽在手中</p>
				<a href="${webRoot}/course/big_data.html" target="_blank">
					<div class="clear">
						<span>讲师<br/>团队</span>
						<i>大数据宗师主讲<br/>实战王者领头组建<br/>生态教学缔造精英</i>
					</div>
					<div class="clear">
						<span>教学<br/>视频</span>
						<i>经典入门视频<br/>热门技术解析<br/>前沿技术探讨</i>
					</div>
					<div class="clear">
						<span>课程<br/>详解</span>
						<i>18周科学授课<br/>8大阶段覆盖全部流程<br/>拒绝纸上谈兵</i>
					</div>
				</a>
			</li>
			<!-- PHP -->
			<li>
				<img src="${webRoot}/picture/class_pic9.png" height="107" width="93">
				<em>PHP</em>
				<p>用全世界最高效的编程语言<br/>打造颠覆性Python全栈工程师</p>
				<a href="${webRoot}/course/php.html" target="_blank">
					<div class="clear">
						<span>讲师<br/>团队</span>
						<i>源于清华来自微软首席培训师<br/>世界顶尖IT企业工作经验<br/>十年总监级大牛</i>
					</div>
					<div class="clear">
						<span>教学<br/>视频</span>
						<i>经典入门视频<br/>热门技术解析<br/>前沿技术探讨</i>
					</div>
					<div class="clear">
						<span>课程<br/>详解</span>
						<i>Python全栈开发<br/>8大阶段23周超长课时<br/>100%全程面授</i>
					</div>
				</a>
			</li>
		</ul>
	</div>
</div>

<!-- 就业喜报 -->
<div class="jyxx">
	<div class="base">
		<h2 class="main_title">学员就业喜报</h2>
		<p class="subtitle">THOUSANDS OF STUDENTS EMPLOYMENT NEWS FRONT</p>
		<div class="jyxb_con_list" style="display: block;">
			<table cellspacing="0" cellpadding="0" width="1200" class="table_Hd">
				<tbody>
				<tr>
					<th width="8%">姓名</th>
					<th width="10%">学历</th>
					<th width="10%">目前状态</th>
					<th width="15%">专业</th>
					<th width="25%">入职企业</th>
					<th width="10%">月薪</th>
					<th width="10%">地点</th>
					<th width="12%">就业时间</th>
				</tr>
				</tbody>
			</table>
			<div class="scrollWrap" id="scrollWrap">
				<table width="1200">
                <#if employment??>
                    <#list employment as emp>
						<tr class="fontColorRed">
							<#--<td width="8%">${(emp.stu.stuName)!}</td>-->
							<td width="8%">${(emp.stu.stuName)!?replace(emp.stu.stuName?substring(1,2),"*")}</td>
							<td width="10%">${(emp.stu.eduBackground)!}</td>
							<td width="10%">${(emp.stu.status)!}</td>
							<td width="15%">${(emp.stu.major)!}</td>
							<td width="25%">${(emp.enterprise)!}</td>
							<td width="10%">${(emp.monSalary)!}</td>
							<td width="10%">${(emp.address)!}</td>
							<td width="12%">
                                <#if emp.hireDate??>
                                        ${emp.hireDate?string("yyyy.MM.dd")}
                                    </#if>
							</td>
						</tr>
                    </#list>
                </#if>
				</table>
			</div>
			<i>以上数据来源于蔲丁内部统计</i>
		</div>
		<!-- 每月就业汇总 -->
		<div class="tab_bottom">
			<div class="scrollWrap15">
				<table cellspacing="0" cellpadding="0" style="top: 0;">
					<tr class="fontColorRed">
						<td>蔲丁2016年12月就业榜出炉 横扫疆场 平均月薪9979元</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年11月份就业榜出炉：1738人高薪就业 平均月薪10214</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年10月份就业榜出炉：904人高薪就业 平均月薪10322</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年9月份就业榜出炉：769人高薪就业，点燃秋末就业热火</td>
					</tr>

					<tr>
						<td>蔲丁2016年8月就业榜出炉：1259人高薪就业 逆境王者强势登场</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年7月就业榜出炉：873人高薪就业 携手碾压最难就业季</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年6月就业榜出炉：806人开启巅峰人生 平均薪资9667元！</td>
					</tr>

					<tr class="fontColorRed">
						<td>蔲丁2016年5月就业榜出炉 学员薪资高达21400</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- 就业风云榜-->
<div class="contain contain5">
	<h4 class="main_title base">就业风云榜</h4>
	<div class="subtitle base">EMPLOYMENT INFORMATION
		<p class="btnw"><span class="inn_prev">&lt;</span><span class="inn_next">&gt;</span></p>
	</div>
	<div class="bg">
		<div class="wrap_box base" id="wrap_box">
			<div class="inn_box">
				<ul>
					<li>
						<a href="#" title="张同学">
							<img src="${webRoot}/upload/emp/emp_01.jpg" style="width:285px;height: 190px;">
							<span>姓名：张同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：13000元</span>
						</a>
					</li>

					<li>
						<a href="#" title="赵同学">
							<img src="${webRoot}/upload/emp/emp_02.jpg" style="width:285px;height: 190px;">
							<span>姓名：赵同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：12300元</span>
						</a>
					</li>
					<li>
						<a href="#" title="张同学">
							<img src="${webRoot}/upload/emp/emp_03.jpg" style="width:285px;height: 190px;">
							<span>姓名：张同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：11000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="韩同学">
							<img src="${webRoot}/upload/emp/emp_04.jpg" style="width:285px;height: 190px;">
							<span>姓名：韩同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：11000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="马同学">
							<img src="${webRoot}/upload/emp/emp_05.jpg" style="width:285px;height: 190px;">
							<span>姓名：马同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：21250元</span>
						</a>
					</li>
					<li>
						<a href="#" title="耿同学">
							<img src="${webRoot}/upload/emp/emp_06.jpg" style="width:285px;height: 190px;">
							<span>姓名：耿同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：16000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="张同学">
							<img src="${webRoot}/upload/emp/emp_07.jpg" style="width:285px;height: 190px;">
							<span>姓名：张同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li><a href="#" title="郑同学">
						<img src="${webRoot}/upload/emp/emp_08.jpg" style="width:285px;height: 190px;">
						<span>姓名：郑同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
					</a>
					</li>
				</ul>

				<ul>
					<li>
						<a href="#" title="谢同学">
							<img src="${webRoot}/upload/emp/emp_09.jpg" style="width:285px;height: 190px;">
							<span>姓名：谢同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：20000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="王同学">
							<img src="${webRoot}/upload/emp/emp_10.jpg" style="width:285px;height: 190px;">
							<span>姓名：王同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：19500元</span>
						</a>
					</li>
					<li>
						<a href="#" title="陈同学">
							<img src="${webRoot}/upload/emp/emp_11.jpg" style="width:285px;height: 190px;">
							<span>姓名：陈同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：18600元</span>
						</a>
					</li>
					<li>
						<a href="#" title="李同学">
							<img src="${webRoot}/upload/emp/emp_12.jpg" style="width:285px;height: 190px;">
							<span>姓名：李同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：18000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="姚同学">
							<img src="${webRoot}/upload/emp/emp_13.jpg" style="width:285px;height: 190px;">
							<span>姓名：姚同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：16000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="王同学">
							<img src="${webRoot}/upload/emp/emp_14.jpg" style="width:285px;height: 190px;">
							<span>姓名：王同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="刘同学">
							<img src="${webRoot}/upload/emp/emp_15.jpg" style="width:285px;height: 190px;">
							<span>姓名：刘同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：17000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="杜同学">
							<img src="${webRoot}/upload/emp/emp_16.jpg" style="width:285px;height: 190px;">
							<span>姓名：杜同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：16000元</span>
						</a>
					</li>
				</ul>

				<ul>
					<li>
						<a href="#" title="邱同学">
							<img src="${webRoot}/upload/emp/emp_17.jpg" style="width:285px;height: 190px;">
							<span>姓名：邱同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="刘同学">
							<img src="${webRoot}/upload/emp/emp_18.jpg" style="width:285px;height: 190px;">
							<span>姓名：刘同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="魏同学">
							<img src="${webRoot}/upload/emp/emp_19.jpg" style="width:285px;height: 190px;">
							<span>姓名：魏同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="张同学">
							<img src="${webRoot}/upload/emp/emp_20.jpg" style="width:285px;height: 190px;">
							<span>姓名：张同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="刘同学">
							<img src="${webRoot}/upload/emp/emp_21.jpg" style="width:285px;height: 190px;">
							<span>姓名：刘同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：16000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="彭同学">
							<img src="${webRoot}/upload/emp/emp_22.jpg" style="width:285px;height: 190px;">
							<span>姓名：彭同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：18000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="杨同学">
							<img src="${webRoot}/upload/emp/emp_23.jpg" style="width:285px;height: 190px;">
							<span>姓名：杨同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：14000元</span>
						</a>
					</li>
					<li>
						<a href="#" title="潘同学">
							<img src="${webRoot}/upload/emp/emp_24.jpg" style="width:285px;height: 190px;">
							<span>姓名：潘同学&nbsp;&nbsp;&nbsp;&nbsp;薪水：15000元</span>
						</a>
					</li>
				</ul>

			</div>
		</div>
	</div>

</div>

<!--学员作品-->
<div class="con6">
	<div class="student_works base">
		<h4 class="main_title">学员作品</h4>
		<div class="subtitle">STUDENT WORKS</div>
		<div class="zuopin_wrap">
			<span class="prevbtn"></span>
			<span class="nextbtn"></span>
			<div class="zuopin_wrap1">
				<div class="zuopin">
					<ul class="zuopin_list1">
						<li><img src="picture/zuopin_list1_img1.jpg"><span>UI - 拟物化图标</span></li>
						<li><img src="picture/zuopin_list1_img2.jpg"><span>UI - 泡泡音乐</span></li>
						<li><img src="picture/zuopin_list1_img3.jpg"><span>UI - 写实主题</span></li>
						<li><img src="picture/zuopin_list1_img4.jpg"><span>Android - 精彩信息</span></li>
						<li><img src="picture/zuopin_list1_img5.jpg"><span>Android - 智能搜索</span></li>
						<li class="width0"><img src="picture/zuopin_list1_img6.jpg"><span>iOS - DayDay看漫画</span></li>
						<li class="width0"><a href="https://v.qq.com/x/page/s0349tqbrfn.html" target="_blank"><img
								src="picture/zuopin_list1_img7.jpg"><span>PHP - 果蔬园</span></a></li>
						<li><img src="picture/zuopin_list1_img8.jpg"><span>Android - 海量韩剧</span></li>
					</ul>
					<ul class="zuopin_list2">
						<li><img src="picture/zuopin_list2_img1.jpg"><span>Android - 热门评论</span></li>
						<li class="width0"><a href="https://v.qq.com/x/page/p0349fgpx7p.html" target="_blank"><img
								src="picture/zuopin_list2_img2.jpg"><span>PHP - 淘淘商城</span></a></li>
						<li class="width0"><img src="picture/zuopin_list2_img3.jpg"><span>iOS - Video Magic</span></li>
						<li><img src="picture/zuopin_list2_img4.jpg"><span>Android - 买卖宝</span></li>
						<li><img src="picture/zuopin_list2_img5.jpg"><span>UI - 余味APP</span></li>
						<li class="width0"><img src="picture/zuopin_list2_img6.jpg"><span>PHP - 商城项目</span></li>
						<li><img src="picture/zuopin_list2_img7.jpg"><span>UI - 壹周资讯APP</span></li>
					</ul>

				</div>
			</div>
		</div>
	</div>
</div>

<!-- QQ 学习交流 -->
<div class="contain contain8">
	<div class="base">
		<div class="fl2">
			<h6 class="qq">QQ学习交流群 交流更顺畅</h6>
			<div class="zome">
				<p>
					<span>大数据开发学习群</span>
					<span>518811984</span>
					<a target="_blank" href="#">点击加入群聊</a></p>
				<p>
					<span>VR技术学习交流群</span>
					<span>474438840</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>
				<p>
					<span>Android开发者交流群</span>
					<span>480637276</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>
				<p>
					<span>JavaEE学习交流群</span>
					<span>343013298</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>
				<p>
					<span>HTML5学习技术交流群</span>
					<span>314548237</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>
				<p>
					<span>UI技术学习交流群</span>
					<span>159532533</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>

				<p>
					<span>PHP学习交流群</span>
					<span>518146831</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>

				<p>
					<span>iOS开发交流群</span>
					<span>419863868</span>
					<a target="_blank" href="#">点击加入群聊</a>
				</p>
			</div>
		</div>
		<div class="fr2">
			<h6 class="qq">常见问题</h6>
			<div class="wen">
				<a href="#"><span>[问]</span>学习iOS后可从事什么工作？？</a>
				<a href="#"><span>[问]</span>蔲丁毕业的学员都在哪些公司工作？？</a>
				<a href="#"><span>[问]</span>蔲丁有没有就业指导？</a>
				<a href="#"><span>[问]</span>学习iOS开发好就业吗？？</a>
				<a href="#"><span>[问]</span>蔲丁教育的住宿设施如何？？</a>
				<a href="#"><span>[问]</span>蔲丁教育的学员就餐都在哪里？？</a>
			</div>
		</div>
	</div>
</div>

<!-- 企业合作 友情链接 底部 -->
<div class="contain contain10">
	<div class="bottom_part1 base">
		<h6 class="qiye">
			<span class="hover">企业合作</span>
			<span>友情链接</span>
		</h6>
		<div class="btn_content">
			<p>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</p>
			<p>
				<a href="http://www.mobiletrain.org/page/ui.html" title="ui培训" target="_blank">ui培训</a>
				<a href="http://sz.mobiletrain.org/" title="深圳iOS培训" target="_blank">深圳iOS培训</a>
				<a href="http://www.codingke.com/" title="扣丁学堂" target="_blank">扣丁学堂</a>
				<a href="http://bbs.mobiletrain.org/" title="Android开发环境搭建" target="_blank">Android开发环境搭建</a>
				<a href="http://www.atguigu.com/" title="尚硅谷" target="_blank">尚硅谷</a>
				<a href="http://e.youku.com/" title="优酷学堂" target="_blank">优酷学堂</a>
				<a href="http://www.bicpaedu.com/" title="注册会计师考试" target="_blank">注册会计师考试</a>
				<a href="http://www.zaixian-fanyi.com/" title="在线翻译" target="_blank">在线翻译</a>
				<a href="http://www.bdkssc.com/" title="职称计算机考试" target="_blank">职称计算机考试</a>
				<a href="http://www.zhaopin.com/xiamen/" title="厦门人才网" target="_blank">厦门人才网</a>
				<a href="http://jiaoyu.3158.cn/" title="教育培训加盟" target="_blank">教育培训加盟</a>
				<a href="http://toefl.xiaoma.com/" title="托福" target="_blank">托福</a>
				<a href="http://www.art456.com/" title="中国美术高考网" target="_blank">中国美术高考网</a>
				<a href="http://www.beiwaionline.com/" title="网络教育" target="_blank">网络教育</a>
				<a href="http://www.jiangshi99.com/" title="培训师" target="_blank">培训师</a>
				<a href="http://www.bailitop.com/" title="百利天下留学" target="_blank">百利天下留学</a>
				<a href="http://www.java1234.com/" title="java1234" target="_blank">java1234</a>
				<a href="http://www.tianjihr.com/" title="天基人才网" target="_blank">天基人才网</a>
				<a href="http://www.jc88.net/" title="教程巴巴" target="_blank">教程巴巴</a>
				<a href="http://hb.huatu.com/" title="湖北公务员考试" target="_blank">湖北公务员考试</a>
				<a href="http://guide.3310.com/" title="安卓教程" target="_blank">安卓教程</a>
				<a href="http://www.hwhr.cn/" title="重庆人才网" target="_blank">重庆人才网</a>
				<a href="http://jianli.pincai.com/" title="简历模板" target="_blank">简历模板</a>
				<a href="http://www.zzyjs.com/" title="在职研究生" target="_blank">在职研究生</a>
				<a href="http://www.ywxue.com" title="设计在线教育" target="_blank">设计在线教育</a>
				<a href="http://ls.zxxk.com/" title="历史" target="_blank">历史</a>
				<a href="http://pdftoword.55.la/" title="pdf转换成word" target="_blank">pdf转换成word</a>
				<a href="http://www.zgjhjy.com/" title="京翰教育" target="_blank">京翰教育</a>
				<a href="http://www.ccifn.com/" title="中外建金融" target="_blank">中外建金融</a>
				<a href="http://www.58guakao.com/" title="58建筑招聘网" target="_blank">58建筑招聘网</a>
				<a href="http://www.yanhan.com.cn" title="北京培训学校" target="_blank">北京培训学校</a>
				<a href="http://www.u88.cn" title="加盟" target="_blank">加盟</a>
				<a href="http://www.eduego.com/" title="在职研究生" target="_blank">在职研究生</a>
				<a href="http://www.houxue.com/" title="厚学网" target="_blank">厚学网</a>
				<a href="http://www.zgsydw.com/" title="事业单位招聘网" target="_blank">事业单位招聘网</a>
				<a href="http://www.zxzhijia.com/" title="装修网" target="_blank">装修网</a>
				<a href="http://www.u88.com/" title="创业加盟网" target="_blank">创业加盟网</a>
				<a href="http://www.jiemo.net/" title="芥末留学网" target="_blank">芥末留学网</a>
				<a href="http://shanghai.tianqi.com/" title="上海天气预报" target="_blank">上海天气预报</a>
				<a href="http://www.yztcedu.com/" title="育知同创" target="_blank">育知同创</a>
				<a href="http://www.jiaotou.org/" title="教头网" target="_blank">教头网</a>
			</p>
		</div>
	</div>
</div>

