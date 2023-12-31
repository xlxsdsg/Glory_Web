<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/Glory_Web/css/title.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>About Gunman</title>
</head>
<body>
<style>
    .header-info a{
        color:var(--font-main-color);
        font-size: 1.25em;
    }
    body
    {
        background-image: url("/Glory_Web/image/背景.jpg");
        background-size:100% 100%;
        background-repeat:no-repeat;
    }
    p
    {
        color:#ffd700;
    }
    details
    {
        color:white;
    }
    h5
    {
        color:#00bfff;
    }
    h6
    {
        color:#87cefa;
    }
</style>
<P>弹药师</P>
<img src="/Glory_Web/image/弹药师.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>1级</h5>
    <h6>
        浮空弹：使命中的对手强制浮空。<br>
        僵直弹：被射中的目标会进入2秒的僵直状态。但僵直弹远比普通子弹飞得要慢。而且出膛动静大，子弹体积也大。冷却时间10秒。满阶时僵直状态时长3.5秒。<br>
        手雷/撞击式手雷：撞击爆炸。有范围伤害效果，在范围清场方面效果极其显著。<br>
        燃烧弹：落地生花。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        弹药扩充：被动技能，将需要更换弹夹后使用的特殊弹药，每次可射击数目由15发提高到20发。对普通弹夹同样有效。<br>
    </h6>
    <h5>30级</h5>
    <h6>
        冰弹：换弹匣，弹匣更换完毕以后，普通射击的子弹就会变成冰弹。命中对手时，有一定的机率让对方因冰冻减速，甚至完全进入冰冻状态。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        乱雷：又名“天女散花”。各色手雷全数丢出，是弹药专家所精通的各种手雷的综合爆发。<br>
        烟雾弹：效果手雷。相比烟玉发动较慢，笼罩范围大。<br>
        闪光弹：效果手雷。同队豁免效果差。<br>
        爆炎弹：火系燃烧伤害。<br>
        感电式手雷<br>
        爆缩式手雷：伤害不太大，冲击力极强，连霸体状态都无法绝对抵御。<br>
        计时式手雷：设定时间后爆炸，最长等待时间是8秒。<br>
        毒气式手雷：释放绿色的剧毒瓦斯。<br>
        追踪式手雷：手雷自带着一个螺旋翼，飞出后立时锁定目标飞过去。<br>
        遥控式手雷：通过一个微小的遥控器控制引爆时间。威力比起低阶的撞击式手雷还要小一些，但是由操作者控制爆炸时机，精准性高。<br>
        爆炎式手雷：火系燃烧伤害，但对角色行动没有多少控制力。<br>
    </h6>
</details>
<P>机械师</P>
<img src="/Glory_Web/image/机械师.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        机械追踪：放出一个自爆小机器人，会自己在地上行走，寻找目标。伤害不高，冷却短。<br>
        机械旋翼：操纵角色空中移动，需要机械箱施展。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        机械空投：两个冬瓜一样的玩艺转着螺旋桨飞来，这两个家伙肚皮一开，炸弹排着队地往下丢。<br>
        机械拳：体术技能。<br>
        钻臂冲击：体术技能。<br>

    </h6>
    <h5>45级</h5>
    <h6>
        火箭推进器<br>
        空气压缩机：释放气压攻击目标，没有光影效果，吹飞效果强力。<br>
        跳雷<br>
        磁场线圈：覆盖范围，范围内成倍增加角色负重。<br>
        火箭拳<br>
    </h6>
    <h5>70级</h5>
    <h6>
        推进器/推行器：加速移动。<br>
        电子眼：可以将它视角内的画面呈现给主人知道。<br>
        捕食者<br>
        巡游者<br>
        捕猎者：机械狗，速度远比机械追踪要迅速。<br>
        放大器：使目标所受技能伤害瞬间翻倍。<br>
        自走火炮<br>
    </h6>
</details>
<P>枪炮师</P>
<img src="/Glory_Web/image/枪炮师.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        拔击：浮空技。<br>
        反坦克炮：三发炮弹。冲击力和爆炸可以产生击退、僵直甚至击倒。<br>
        BBQ：膝袭起手扫射。拥有一定的抓取判定，伤害控制都很好。<br>
        格林机枪：打出一条直线的子弹扫射。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        重火力控制：加强枪炮师所有攻击和技能的射程，以及伤害所覆盖的范围。需使用手炮才能加持该状态。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        加农炮：发射一个能量球来攻击目标。蓄力后能量球的射程更远，杀伤更强，爆炸时的波动范围也会更大。<br>
        激光炮：攻击距离是荣耀所有技能之最，有击退效果。蓄力后威力提升40%，同时产生一个强大的后座力。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        刺弹炮/刺射弹：射出的炮弹爆裂后变成八枚刺射弹落下，进行范围攻击。<br>
        觉醒：蓄能火炮：蓄力后的范围技能。<br>
        卫星射线：上空一道光柱直射而下，旋转分出六个小光柱，四下扫荡。小射线可以手动操控。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        飓风炮：炮弹发射的同时卷起飓风，爆炸后有强烈的光影、浓烟。<br>
        稳定炮架：技能施展后，将限定枪炮师的位置，不可移动，不可跳跃；如此换来的是攻击力、防御力的大幅度提升以及不可被打断的攻击保护，与此同时还有霸体状态。<br>
        量子炮：蓄力射击时有很强的后座力。<br>
        悬磁炮：将其悬磁弹头触及到的目标吸附，并且强行带动被吸附的目标移动，飞行速度会因吸附到目标而变缓并下坠，最终触地爆炸。<br>
        破甲炮：伤害的同时降低目标物理防御30%，满阶可达8秒。<br>
        热感飞弹：利用火机的热源引导飞弹从天而降打击对手，攻击范围广，威力大。<br>
    </h6>
</details>
<P>神枪手</P>
<img src="/Glory_Web/image/神枪手.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        浮空弹：浮空技。<br>
        滑铲：体术技能，不限武器。看使用的时机，有可能将目标铲倒。<br>
        踏射：受身无效。<br>
        膝撞/膝袭：体术技能，击退效果，会因为负重影响到速度。施展时有霸体效果。<br>
        旋风脚/旋腿/回旋踢/回旋腿：体术技能，360度横扫身周。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        枪术精通。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        乱射：子弹三百六十度纷乱飞舞。<br>
        巴雷特狙击：神枪手攻击力最强技能，击中头部有双倍伤害的隐藏效果。可能触发穿透效果<br>
        双重控制：重置某一个冷却中的技能。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        速射：时间性的状态技，在技能时间内加强射速。<br>
        暴射：时间性的状态技，在技能时间内加强暴击机率。<br>
        曲射：时间性的状态技，在技能时间内射出曲线飞行的子弹，有系统默认的弧度，同时也可以让操作者进行甩枪操作来自由地控制弧度。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        怒射<br>
        散射<br>
        左右开弓<br>
        承前启后<br>
        枪炮武术：将枪械的射击攻击融入到近身格斗术里的一个神枪手特有的攻击性技能。<br>
    </h6>
</details>
</body>
</html>
