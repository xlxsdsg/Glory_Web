<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/Glory_Web/css/title.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>Vocational Department</title>
</head>
<body>
<style>
    .header-info a{
        color:var(--font-main-color);
        font-size: 1.25em;
    }
    body
    {
        background-image: url("/image/背景.jpg");
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
<P>剑客</P>
<img src="/Glory_Web/image/JianKe.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>1级</h5>
    <h6>
        上挑：挑空技。<br>
    </h6>
    <h5>5级</h5>
    <h6>
        格挡：化解物理伤害。四阶可化解70%。<br>
        连突刺：1阶时二剑连击，10阶时四剑连击。<br>
        银光落刃：范围攻击。需要在跳起时使用，跳跃高度越高，威力越大，所产生冲击波的范围也就越大。<br>
        拔刀斩：出招快，攻击范围广。<br>
    </h6>
    <h5>1级</h5>
    <h6>
        上挑：挑空技。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        剑武精通(被动技能):精通类别有五类：重剑，大剑，短剑，太刀，光剑。<br>
        每加一级，使用该类剑武器的攻击就会提高2%，满十级时有20%的提升。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        三段斩：一记横斩，一记下劈，一记上挑，衔接极快。经常被用来快速走位。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        三逆风刺：只攻击正前方，但笼罩的面积颇打，所划剑圈完全是由玩家的操作来控制。<br>
        觉醒：剑定天下(状态类技能):使用后角色的剑客技能攻速和攻击力都将有大幅度提升。释放的时候剑气会形成一个360度的攻击圈，范围相当大。被命中的目标产生僵直效果。<br>
    </h6>
    <h5>65级</h5>
    <h6>
        剑刃风暴：剑刃仿佛一阵风暴般席卷。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        幻影无形剑：完全靠玩家操作实现全部的连击，连击段数越高，伤害就越大。收招一剑带有极强力的吹飞攻击。有1秒的收招僵直。<br>
        落英式：强制倒地。<br>
        流星式：攻速极快。<br>
        破空式：判定强劲。<br>
        回风式：可以用剑气扯动目标身形。<br>
        升龙斩：剑提头顶，可使角色向上产生位移。<br>
        落凤斩：出手的时候有一个侧半身的回旋。可使角色向下产生位移。击倒判定很强。<br>
        剑落长空：剑光挥洒，犹如银河落地。<br>
        仙人指路：带强力吹风效果的刺杀技。<br>
        剑击长空/长空剑击<br>
        迎风一刀斩<br>
        风残草尽：剑光在周身掠出一个剑圈，逼退周身其他角色。<br>
        剑影步：高阶技能，产生没有生命值的残影迷惑对手，完全依靠玩家的操作来产生技能的效果。残影完全是虚体，没有属性，无法对目标造成伤害，不会被目标伤害，技能结束消失。<br>
    </h6>
</details>
<P>狂剑士</P>
<img src="/Glory_Web/image/狂剑士.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>1级</h5>
    <h6>
        倒斩：浮空技，所有挑空技能中伤害极猛、浮空效果极强的一个。<br>
    </h6>
    <h5>5级</h5>
    <h6>
        重击：充分利用武器重量，伤害与武器重量成正比。<br>
    </h6>
    <h5>15级</h5>
    <h6>
        崩山击：前跳，将目标斩落，坠地后还有一个短暂的弹起小浮空。<br>
        十字斩：一记横砍一记竖劈，有一点击退效果。<br>
        冲撞刺击：高速移动技，带有蓄力特点，有击退效果。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        血气唤醒(被动技能)，生命低于50%时增加自身力量属性（提高攻击力）。血越少加的越多。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        狂暴：20秒内角色力量、攻速、移速、异状态抵抗全面上升；智力、物防、魔防大幅度下降。<br>
        每级需20技能点，最高可达10级。满级时攻速+1。<br>
        暴走后狂暴状态下的许多技能使用出来时比起普通状态都有变异，如崩山击拥有了霸体，倒斩的剑风能掠出更远，地裂斩发动更快等。<br>
        觉醒：嗜血奋战：（该技能状态和狂暴状态不可叠加）嗜血奋战在战斗力的提升方面比狂暴高25%，同时拥有霸体状态，攻击附带嗜血效果，<br>
        该效果分正反两种：正嗜吸血，将对手生命损失的10%作为自己的恢复；反嗜卖血，消耗自己生命给对手带来重创。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        怒血狂涛：重剑化身为一道极其巨大的血刃斩下。威力凶猛，但起手很慢。<br>
        绝地风暴<br>
        嗜血：状态类技能。嗜血状态开启后，狂剑士将直接靠吸取自己的生命来提升战斗力。<br>
        地裂斩：居高临下攻击的技能，伤害和效果会和落下的高度成正比。冲击波有机率被打出眩晕。<br>
        旋风斩：高阶技能。<br>
        破灭斩：攻击效果技。被破灭斩击中的目标，5秒内角色的防御力将被破坏70%。<br>
        破魔斩：伤害出众，可削弱目标的防御力。满阶时一剑可削弱目标防御力30%长达8秒。<br>
        血气之剑：左手在剑锋上一抹一挥，喷射血箭。<br>
        血影狂刀：刀影暗红色，可以直劈，也可以横斩。有吹飞效果。<br>
        噬魂血手：抓取技，范围控制型技能，噬魂血手所笼罩范围内的角色，都将被血气牵制，被拖至施展技能的角色身边。但只控制目标的移动，并不控制目标其他动作。<br>
    </h6>
</details>
<P>鬼剑士</P>
<img src="/Glory_Web/image/鬼剑士.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5 >1级</h5>
    <h6>
        鬼爪：浮空技。<br>
    </h6>
    <h5>5级</h5>
    <h6>
        鬼斩：自带暗属性，直线伤害强力，带有吹飞效果。收招慢，破绽大。<br>
        斩鬼召唤冰魂附着为冰封鬼斩，命中有减速效果。<br>
    </h6>
    <h5>10级</h5>
    <h6>
        刀魂守护：给在刀魂守护的结界内的己方成员提供力量和智力。<br>
        每3级提升一阶，7阶刀阵可提高105点的力量和智力，满阶时提升力量是150点。持续时间20秒，冷却时间30秒。<br>
    </h6>
    <h5>15级</h5>
    <h6>
        月光斩：银光划出极大的半圆。斩鬼召唤暗魂附着为暗月光斩，命中有致盲效果。<br>
    </h6>
    <h5>20级</h5>
    <h6>
        满月斩：反手沿月光斩的方向倒飞出一个更大的圆弧。有吹飞效果。<br>
        斩鬼召唤火魂附着为炎噬满月，火属性伤害外附带暗属性伤害。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        残影：防卫技能。召唤围绕在角色身遭一圈的鬼影化成的护甲，可以吸收抵消伤害，持续1分钟。等阶越高，抵消的伤害越大，抵消的次数也越多。<br>
    </h6>
    <h5>30级</h5>
    <h6>
        冰魂守护/冰阵：冰魂守护的结界，可对进入的敌人制造冰属性的法术伤害，并有机率将目标完全冰结。是攻击性的鬼阵。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        炎阵：群伤类鬼阵，阵内有鬼火产生火焰伤害。<br>
        瘟魂守护：削弱阵内目标防御力。<br>
        血魂守护<br>
        灰阵：阵中的敌对角色，身上所有物品的重量都将根据灰阵等阶提升相应的百分比，满阶时可以让一名角色身上的重量直接2倍。<br>
        暗黑之阵/暗阵：失明效果，没有伤害。<br>
        寂静之阵/静默之阵：在当中的角色的所有技能将被封禁。<br>
        鬼步：使角色高速移动，身后残影一片。<br>
        死亡墓碑：数个长的短的高的矮的墓碑从天而降，持续攻击技能。<br>
        鬼神盛宴：所有的鬼神之力爆发，在鬼阵范围内寻找目标吞噬。<br>
    </h6>
</details>
<P>魔剑士</P>
<img src="/Glory_Web/image/魔剑士.jpg" width="200px" height="240px">
<details>
    <summary> 技能详解</summary>
    <h5>5级</h5>
    <h6>
        地裂波动剑：魔剑士最低阶的波动剑技能，伤害虽然不高，但是发招快，判定也非常不错。<br>
        裂波斩：靠魔剑士驾驭的剑意波动来封锁对手的抓取类技能。<br>
        剑锋挑起目标时会形成一个法术结界将其封锁，而后产生一个裂波以该目标为中心旋转切割攻击，裂波对周围其他目标也会造成伤害，旋转杀伤结束后裂波会炸开，将目标炸飞。可破除霸体效果。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        杀意波动：专门强化波动之力的被动技能。<br>
        冰霜波动剑/冰创波动剑：送出寒冰波动剑意，冰晶铺地而过。<br>
        烈焰波动剑：攻击力强，击退效果显著。<br>
        碎风波动剑：所有波动剑中速度最快的一招。<br>
        圆旋波动剑：瞬发技能，不走直线攻击。<br>
        疾光波动剑/极光波动剑：波动剑中最快的一式。<br>
        冰创波动阵：范围攻击，几率降低角色移动速度、触发冰冻效果。<br>
        烈焰波动阵<br>
        电光波动阵/雷光波动阵：释放出一个电球，以电球为中心的一个圆球空间内的玩家都将受到电光攻击，百分百命中。满阶时，圆球半径为15个身位。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        星云波动剑：随意出招的话，波动之力将以随机的不规则形态展现。这技能的波动之力也可以靠操作者的操作来控制，如三百六十度的扩散施展等。<br>
        波动三叠浪：冰霜、烈焰、疾光三道波动剑意，呈三叠接连扫出。<br>
    </h6>

</details>

</body>
</html>