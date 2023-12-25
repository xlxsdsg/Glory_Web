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

    <title>About Master</title>
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

<P>魔道学者</P>
<img src="/Glory_Web/image/魔道学者.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        清扫：浮空技，<br>
        魔法弹：最低阶的法术。<br>
        暗影斗篷/暗夜斗篷：抓取类技能，判定强力，范围技。<br>
        修鲁鲁：布娃娃一样的东西，对半径2米以内的怪有嘲讽作用，强制怪物将仇恨放到它身上。修鲁鲁的等级不能比怪低。未经改良只对普通怪有效。持续时间20秒。技能冷却30秒。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        扫把掌握：被动技能，让魔道学者拥有骑着扫把飞行以及在空中使用扫把连续攻击的能力。凌空时扫把掌握下的攻击判定极强。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        驱散粉：成功洒到目标身上时可去除对方身上的一个增益状态，同时降减目标的攻击、释放和移动速度。对方身上没有任何增益状态时，降减目标速度的效果也会生效，持续10秒。<br>
        寒冰粉：可使魔道学者的武器普通攻击时附加一些冰属性伤害，强力的可以直接冰冻对手，弱一些的可以产生减速效果，但几率不高，一般使用是为了增强伤害。持续20秒。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        熔岩烧瓶：在陆地上使用时碎开是在平地铺开一片火海；在水中使用，瓶中碎开流出的熔岩无法把水点燃，却是不断地蒸发湖水翻出气泡。若直接命中目标会多算一些伤害。<br>
        修鲁鲁改良：被动技能，使修鲁鲁对精英、BOSS、领主之类的怪有效。<br>
        魔法射线：发射时亮起一朵星。射速很快，很难闪避。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        星星折线：星星射线技能的一个变种，有可以折射的特点，相比起来威力不如星星射线来得大。<br>
        扫把旋风：翻滚扫把进行拍打，笼罩范围极大。<br>
        寒冰降雨：持续攻击，可打断吟唱。<br>
        闪电锁链：落下一道闪着电光的锁链。<br>
        重力加速拍：利用魔法，加大重力加速度，让拍击具备更大威力。<br>
    </h6>
</details>
<P>元素法师</P>
<img src="/Glory_Web/image/YuanSuFaShi.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        元素之力：浮空技。持续3秒。<br>
        光电环/雷电光环：光系法术，在身遭施放出来一个电光环，发动超快。<br>
        火焰爆弹：火系法术。<br>
        冰霜雪球：冰系法术。<br>
        暗夜飞影：暗系法术，特殊效果是强制使目标转身180度。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        烈焰冲击：火系法术，在目标脚下燃起一个火焰法阵，爆发力强大。冷却6秒。有浮空效果。<br>
        暴风雪：冰系法术，冰雹夹杂着雪花攻击，有减速效果，冷却8秒。<br>
        移动施法：被动技能，使元素法师可以在进行各种动作时吟唱读条并释放法术。施展时移动速度会大幅下降，加到满级时也只能拥有正常50%的速度。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        冰墙：冰系法术，可以由施法者控制碎裂。<br>
        烈焰风暴：火系法术，在地上掀起火海。<br>
        天雷地火：拥有光属性和火属性两种伤害的法术。持续类技能。雷与火随机在范围内爆发，被轰中一次，就有一次的伤害。可以手动操作控制天雷和地火的攻击位置。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        火之鸟：火系法术。<br>
        绝对零度：冰系法术，冻结目标，满阶后可持续长达8秒。冻结时间是24职业所有冰系技能之最。这技能是一个空间结界法术，没有魔力飞行的距离时间。<br>
        雷光炼狱：光系法术，吟唱快，攻击快。六道雷光劈下，每一道之间相隔的时间并不不紧凑，但只要其中一道命中，就会有结界锁入角色，引导接下来的数道雷光自动追进。<br>
        雷霆末日：光系法术。召唤电光从天而降。<br>
        瞬间移动：光系法术，瞬发<br>
        雷电贯穿：光系法术。发动快，射速疾。<br>
        魔法禁锢：暗系法术。打断一切法术的吟唱，让旋法者在4秒内无法使用任何法术。<br>
        火墙：火系法术。<br>
        冰线：冰系法术。法力画过之处，将会留下一道冰线，冰线会在随后的1秒内形成法术结界，凡触碰到冰线者，将被百分百冻结4秒。<br>
        从形成结界算起冰线的存留时间为12秒，法术释放持续时间3秒。灌注法力画线的地方不允许有玩家角色或是NPC，冰线引到了角色身上技能则会被强行中断。<br>
        全神贯注：状态类技能，开启之后元素法师的下一个法术将必然成为瞬发法术。<br>
    </h6>
</details>
<P>战斗法师</P>
<img src="/Glory_Web/image/战斗法师.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>炫纹</h5>
    <h6>
        共有五种，由战斗法师通过不同的技能攻击时触发产生。触发出的炫纹会漂浮在战斗法师的身遭，7个为上限，持续时间均为30秒。<br>
        30秒内，可以用炫纹发射的操作来让炫纹飞出攻击目标，炫纹自动追踪目标，无法躲闪。在杀伤目标的同时给角色一个20秒的增益状态。
        根据打击时的操作效果，产生的炫纹分大中小三种。炫纹攻击时的威力和效果可以通过连击得到强化。连击数越高生成的炫纹，威力也就越大。
    </h6>
    <h5>5级</h5>
    <h6>
        天击：上挑攻击。攻击后让目标浮空，层次越高，浮空越高。<br>
        龙牙：直刺攻击，可令敌人进入短时间的僵直状态。<br>
        连突：两记连刺。两段攻击完全重叠在目标的同一部位时有约50%几率触发出血效果。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        天击：上挑攻击。攻击后让目标浮空，层次越高，浮空越高。<br>
        龙牙：直刺攻击，可令敌人进入短时间的僵直状态。<br>
        连突：两记连刺。两段攻击完全重叠在目标的同一部位时有约50%几率触发出血效果。<br>
        落花掌：直线攻击正前方的技能，很强的吹飞效果。冷却时间4秒。<br>
        圆舞棍：强制倒地无视受身。隐藏属性甩动弧度越过180度时有伤害加成。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        冰属性炫纹（连突）：增益效果是增加自身物理防御。一级增强自身物理防御2%。<br>
        命中目标产生小僵直，冰属性魔法伤害。50%几率让目标进入减速效果，持续3秒。等级越高，产生减速的几率越高，效果越明显。魔法波动为蓝色在矛尖。<br>
        火属性炫纹（落花掌）：增益效果是增加自身力量。满阶时提升力量125点。75级更新后最高等阶为9阶。魔法波动为红色在手臂。<br>
        光属性炫纹（天击）：增益效果是提升攻速。魔法波动为黄色在双手。<br>
        暗属性炫纹（圆舞棍）：魔法波动为紫色在矛柄。<br>
        无属性炫纹（龙牙）：五大炫纹中攻击力最低的。增益效果是增加自身的移动速度。1级可增加移动速度1%，最高20级，增加移动速度20%。魔法波动为白色在脚下。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        强龙压：判定极强，若拍实则目标有强制倒地判定。<br>
        觉醒：斗者意志：被动技能，没有技能冷却，也没有持续时间。通过打出连击让战斗法师在战斗中不断进化，提升自己的战斗状态。<br>
        阶段统计以连击为准。因为连击通常都是阶段性的，这统计自然也是以阶段性的连击数给予角色强化属性。<br>
        满阶：<br>
        第一阶段：连击10次，攻速加0.5，移动速度加2%，力量增加30；<br>
        第二阶段：连击20次，攻速加1，移动速度加4%，力量增加50；<br>
        第三阶段：连击30次，攻速加1.5，移动速度加6%，力量增加70；<br>
        第四阶段：连击40次，攻速加2，移动速度加8%，力量增加90；<br>
        第五阶段：连击50次，攻速加3.5，移动速度加10%，力量增加110；<br>
        第六阶段：连击60次，攻速加3，移动速度加12%，力量增加130；<br>
        第七阶段：连击120次，攻速加6，移动速度加24%，力量增加260。<br>
        第八阶段（75级更新后）：连击150次。<br>
        怒龙穿心破：形似直刺，直剜对手心口。<br>
        豪龙破军：战斗法师物理攻击最强技能。产生的效果由命中对手的部位决定。收招极快。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        伏龙翔天/天翔龙闪：战矛和魔法波动化身为龙，物理和法术攻击二合一的技能，战斗法师综合攻击力最高的技能。二段攻击，一段的刺杀是物理伤害；而后的魔法爆炸则是法术伤害。带抓取效果，攻击目标不限定是一个。<br>
        飞龙在天：一击倒钻而下，攻击并不只在矛尖一点。角色螺旋所带出的气劲，也随着最后这一击刺中彻底爆发，瞬时带起的一阵旋风。<br>
        斗破山河：战矛插入地下传输魔法斗气，再一抽出，隐蔽爆发间接袭击对手。<br>
        风卷流云：旋转战矛，带动魔法波动引发气流，魔法波动夹杂在气流中攻击目标。配合蛟龙出海有云雾效果。<br>
        法力护盾：增强战斗法师防御力。<br>
        蛟龙出海：瞬间抖落出的水花般的魔法斗气。<br>
        霸碎：大招。横扫技能，攻击的是目标的脚裸，一圈抡出，能扫多大全凭玩家操作。<br>
        幻影龙牙：刺杀的攻击和龙牙一般无二，只是幻化出数个幻影，需要靠操作维系，数量的多少全凭手速和操作的精准。<br>
        百龙流星打：操作性技能，在系统辅助下有大加速。<br>
    </h6>
</details>
<P>召唤师</P>
<img src="/Glory_Web/image/ZhaoHuanShi.jpg" width="200px" height="240px">
<details>
    <summary>技能详解</summary>
    <h5>5级</h5>
    <h6>
        藤刺：浮空技。<br>
        哥布林：存在90秒。技能是扔石头，攻击带有20%的眩晕效果。<br>
        跟随：让召唤兽跟在自己身后。消耗法力极低。等阶越高，玩家对召唤兽控制的距离越远。<br>
        印记：丢出一个印记，让召唤兽前往指定的地点。可以扔到地点上，也可以扔到玩家或怪物身上，<br>
        当丢到玩家或怪物身上时，召唤兽就会对其发动攻击，丢到队内玩家身上，召唤兽会跟随玩家。消耗法力极低。等阶越高，玩家对召唤兽控制的距离越远。<br>
    </h6>
    <h5>转职</h5>
    <h6>
        召唤兽强化：对所有召唤兽攻防属性的强化。等阶越高强化就越强。<br>
    </h6>
    <h5>25级</h5>
    <h6>
        鞭挞：对召唤兽进行抽打，被抽打的召唤兽会更勤快，移动速度和攻击速度都会提高。技能等阶越高，抽打后的速度加成就越高。对敌人也可以当作一个攻击性的技能使用。<br>
    </h6>
    <h5>45级</h5>
    <h6>
        雷精灵：雷精灵的攻击有机率造成目标僵直。可以召唤两只，技能最低阶精灵存在30秒，技能满阶精灵存在1分钟。<br>
        火精灵：火精灵的攻击有机率造成目标燃烧。可以召唤两只，技能最低阶精灵存在30秒，技能满阶精灵存在1分钟。<br>
        冰精灵：有特殊效果。可以存在1分钟。<br>
        暗精灵：有特殊效果。可以存在1分钟。<br>
    </h6>
    <h5>70级</h5>
    <h6>
        死亡骑士：物理攻击，防高、血厚，高大的体型让人看着就有安全感，但有迟钝、缓慢的缺陷。<br>
        魔界之花：从异界召唤而来的植物。无法移动，但对攻击范围内的目标干扰很强力。可以散发出带毒的花蕊、用根部进行地刺攻击、伸出藤蔓将目标卷来，花叶齐开好像血喷大口一样撕咬攻击等。一次只能召唤出一朵。藤蔓攻击附带无法移动效果。火系伤害对魔界之花有极高的伤害加成。<br>
        换位：瞬间和召唤兽交换位置。<br>
        小飞龙：火属性召唤兽。等级较低，召唤快。<br>
        冰狼：冰属性召唤兽。物理系攻击附带魔法系的冰冻减速效果。皮厚血多。<br>
        灵猫：暗属性召唤兽。仇恨视野相对大。身形敏捷不易捕捉。<br>
        雷鹰：光属性召唤兽。飞行如电，可口吐落雷。<br>
        大精灵：由两个同元素的小精灵合体而成。存在时间2分钟。<br>
        火系大精灵的技能是近身攻击的火刃，攻击力强大；冰系大精灵的技能是远程攻击的落冰，有机率产生冰冻效果；光系大精灵的技能是远程攻击的闪电，有机率产生麻痹效果。<br>
        精灵王：精灵系的最强召唤兽，由四种元素的大精灵合体而成。攻击技能元素切割、元素裂痕、元素炮，威力生猛。存在时间4分钟。<br>
        兽王四元素阵：需要四兽流四只召唤兽在场，依技能要求站位。发动后四兽的战斗力将大幅度上升。<br>
        变强的召唤四兽依然有生命会被击杀，另外这时四兽的召唤时间依兽王四元素阵的技能时间计算，<br>
        当兽王四元素阵的时间到后召唤四兽将集体消失。在兽王四元素阵的技能时间里，召唤四兽的召唤都被封印，不能召唤替换。<br>
        精灵献祭：范围攻击，召唤师攻击力最强悍的技能，造成的伤害与精灵数量，精灵所余生命，以及时间生命都有关系，<br>
        精灵献祭一旦被触发后，所有被献祭的精灵就都将消失。是元素之力爆破冲击过程中不断的伤害，伤害之后没有效果影响。<br>
    </h6>
</details>
</body>
</html>