<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/Glory_Web/css/title.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/Glory_Web/css/background.css">
    <title>Vocational Department</title>
</head>
<body>
<style>
    .container {
        background: url(/Glory_Web/image/background.jpg) no-repeat;
        background-size: 100% 650px;
        width: 100%;
        height: 650px;
    }

    .box-logo nav ul li a{
        text-align: center;
    }
    a{
        text-decoration: none;
    }
    .header-info a{
        color:var(--font-main-color);
        font-size: 1.25em;
    }
    .brief p{
        text-align:center;
    }
    A
    {
        color:#ffd700;
    }
    h2
    {
        text-align: center;
        color:#f8f8ff;
    }
    h6
    {
        text-align: center;
        color:#d3d3d3;
    }
</style>

<A href="http://localhost:8080/Glory_Web/AfterLoginMaster">魔法师系</A>
<br>
<h2>关于魔法师：</h2>
<h6>
    &emsp;&emsp;事情源于佧修派里一个叫莫亚的高级魔法师在研究黑魔法的时候，意外发现了黑暗之眼的存在。<br>
    &emsp;&emsp;黑暗之眼，可以说是魔界至今为止从未出现过的巨大能源，可以源源不断地供给生命和能量。<br>
    &emsp;&emsp;因为这一发现的公布，魔法师们渐渐发觉，魔界里到处都充斥着黑暗之眼的痕迹。<br>
    &emsp;&emsp;随着莫亚地深入研究，他发现可以将黑暗之眼替换到身体的任何部位，这样替换后的身体就可以获得巨大的魔力。<br>
    &emsp;&emsp;另外，莫亚还十分担心黑暗之眼会有自我意识而控制宿主。<br>
    &emsp;&emsp;但不幸的是，魔界中有很多人为了获取巨大的魔力而甘愿冒这个风险。<br>
    &emsp;&emsp;因而，移植黑暗之眼的人越来越多。这些人中有小部分是来自佧修派，而大多数的移植者都是来自博隆克斯，<br>
    &emsp;&emsp;那些受魔物困扰而生活困难的二流魔法师。<br>
    &emsp;&emsp;这里面，有无数人因为移植黑暗之眼而丧命或者成为再也无法使用魔法的废人，<br>
    &emsp;&emsp;但也有少数人获得了成功，变成拥有趋近于无限魔力的传说级魔法师……<br>
</h6>
<A href="http://localhost:8080/Glory_Web/AfterLoginDark%20Night">暗夜系</A>
<br>
<h2>关于暗夜：</h2>
<h6>
    &emsp;&emsp;人生没有意外，我会认识你，自然也不会没有意义。<br>
    &emsp;&emsp;浮光照惜影,凭雪映青云. 奈何踌躇志,皆皆入仇矣. <br>
    &emsp;&emsp;吟血当霜照,睥睨九天行. 执剑偏锋走,长途自无期.<br>
    &emsp;&emsp;赵客缦胡缨，吴钩霜雪明。<br>
    &emsp;&emsp;银鞍照白马，飒沓如流星。<br>
    &emsp;&emsp;十步杀一人，千里不留行。<br>
    &emsp;&emsp;事了拂衣去，深藏身与名。<br>
    &emsp;&emsp;闲过信陵饮，脱剑膝前横。<br>
    &emsp;&emsp;将炙啖朱亥，持觞劝侯嬴。<br>
    &emsp;&emsp;三杯吐然诺，五岳倒为轻. <br>
    &emsp;&emsp;眼花耳热后，意气紫霓生。<br>
</h6>
<A href="http://localhost:8080/Glory_Web/AfterLoginFight">格斗系</A>
<br>
<h2>关于格斗家：</h2>
<h6>
    &emsp;&emsp;他们是专门训练的奴隶、被解放的奴隶、自由人或是战俘；<br>
    &emsp;&emsp;他们手持短剑、盾牌或其他武器，彼此角斗，博得观众的喝彩。<br>
    &emsp;&emsp;他们是经过训练的职业杀手，他们常常为了取悦皇帝与地方领主而搏杀到死。<br>
    &emsp;&emsp;这一次，他们将为自己而战斗。<br>
</h6>
<A href="http://localhost:8080/Glory_Web/AfterLoginSword">剑士系</A>
<br>
<h2>关于剑士：</h2>
<h6>
    &emsp;&emsp;侠就是夹，左边是仁，右边是义，头顶灰天，脚踩泥地。<br>
    &emsp;&emsp;只因存爱，所以存恨，只因心慈，所以心悲，只因成王败寇，所以济弱扶倾，只因天下无道，所以以武犯禁。<br>
    &emsp;&emsp;恨怨悲苦憎怒嗔、仁爱慈孝耻义廉。是故恨人所以得仁，无爱者必不怨，不慈者必无悲，孝而有苦，憎后耻来，义自怒生，廉人心嗔。夹天地七大苦，破人情七大碍，遂舍善恶之心，得称剑神。　　<br>
    &emsp;&emsp;“告诉你们这群无知之辈吧！我辈读书之人，只求能为天地立心、为生民立命、为往圣继绝学、为万世开太平！生平全此四事，虽死无憾！” 　　<br>
    &emsp;&emsp;昆仑剑出血汪洋，千里直驱黄河黄。<br>
</h6>
<A href=http://localhost:8080/Glory_Web/AfterLoginGun">枪手系</A>
<br>
<h2>关于枪手：</h2>
<h6>
    &emsp;&emsp;天界人没有被魔法影响，慢慢理解了元素、金属加工、化学动力等现象。 <br>
    &emsp;&emsp;金属与火药技术的发达使他们创造出了枪，从那以后大部分战争都变成了以枪做为主要武器的远距离战。<br>
    &emsp;&emsp;使用枪的战士我们称为神枪手，他们也分为几个种类。<br>
    &emsp;&emsp;巴卡尔被消灭时的无法地带的漫游枪手们发展了自己独创的射击术；1年以后，为了保护黄道，产生了以火力为主的职业：枪炮师；最近受工业影响又产生了机械师职业。<br>
    &emsp;&emsp;他们是以枪械作为主要武器进行远程战斗的战士。<br>
    &emsp;&emsp;虽然也有近距离的脚踢技能，但远距离进攻为他们选择的主要方式。<br>
    &emsp;&emsp;对他们来说双臂的速度非常重要，所以他们尽量避免穿厚厚的护甲。<br>
    &emsp;&emsp;机械枪类型的重火器是他们喜爱的重火器。<br>
</h6>
<A href="http://localhost:8080/Glory_Web/AfterLoginSacrament">圣职系</A>
<br>
<h2>关于圣职：</h2>
<h6>
    &emsp;&emsp;启示之语只会降临在心灵崩塌的人身上。<br>
    &emsp;&emsp;但却无法判断他/她能否有资格承受......<br>
    &emsp;&emsp;对此，他们对外宣称这是新的“启示”。<br>
    &emsp;&emsp;“启示”降临，他们被选为圣职者<br>
    &emsp;&emsp;对神无比信仰的他们最终迎来的只能是火刑台上的死亡......<br>
    &emsp;&emsp;受到虚假启示的人们现在只有两个选择：成为伪装者，或者，接受真正的启示。<br>
    &emsp;&emsp;启示之语只会降临在心灵崩塌的人身上。<br>
    &emsp;&emsp;但却无法判断她能否有资格承受......<br>
</h6>
</body>
</html>
