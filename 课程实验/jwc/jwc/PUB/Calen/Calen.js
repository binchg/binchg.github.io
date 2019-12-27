<!--
var Festival_I = new Array(
    '0101*元旦',
    '0202 世界湿地日',
    '0210 国际气象节',
    '0214 情人节',
    '0303 全国爱耳日',
    '0308 妇女节',
    '0312 植树节',
    '0314 国际警察日',
    '0315 消费者权益日',
    '0321 世界森林日',
    '0322 世界水日',
    '0323 世界气象日',
    '0324 世界防治结核病日',
    '0401 愚人节',
    '0407 世界卫生日',
    '0501*劳动节',
    '0504 青年节',
    '0505 全国碘缺乏病日',
    '0508 世界红十字日',
    '0512 国际护士节',
    '0515 国际家庭日',
    '0517 世界电信日',
    '0518 国际博物馆日',
    '0519 全国助残日',
    '0520 全国学生营养日',
    '0522 国际生物多样性日',
    '0523 国际牛奶日',
    '0531 世界无烟日',
    '0601 儿童节',
    '0605 世界环境日',
    '0606 全国爱眼日',
    '0608 世界同性恋自豪节',
    '0617 防治荒漠化和干旱日',
    '0623 国际奥林匹克日',
    '0625 全国土地日',
    '0626 国际反毒品日',
    '0701 建党节 香港回归日',
    '0707 抗日战争纪念日',
    '0711 世界人口日',
    '0801 建军节',    
    '0910 教师节',
    '0916 国际臭氧层保护日',
    '0917 国际和平日',
    '0920 国际爱牙日',
    '0922 国际聋人节',
    '0927 世界旅游日',
    '1001*国庆节',
    '1002 国际减灾日',
    '1004 世界动物日',
    '1006 老人节',
    '1007 国际住房日',
    '1008 世界视觉日',
    '1009 世界邮政日',
    '1010 世界精神卫生日',
    '1015 国际盲人节',
    '1016 世界粮食节',
    '1017 世界消除贫困日',
    '1022 世界传统医药日',
    '1024 联合国日',
    '1108 中国记者日',
    '1109 消防宣传日',
    '1114 世界糖尿病日',
    '1117 国际大学生节',
    '1201 世界艾滋病日',
    '1203 世界残疾人日',
    '1209 世界足球日',
    '1220 澳门回归纪念',
    '1225 圣诞节'
    );

var Festival_II = new Array(
    '0101*春节',
    '0115 元宵节',
    '0505 端午节',
    '0707 七夕情人节',
    '0715 中元节',
    '0815 中秋节',
    '0909 重阳节',
    '1208 腊八节',
    '1224 小年',
    '0100*除夕'
);

var aryLunarYear = new Array( 
	'丁丑(牛)年', '戊寅(虎)年', '己卯(兔)年', '庚辰(龙)年',
	'辛巳(蛇)年', '壬午(马)年', '癸未(羊)年', '甲申(猴)年',
	'己酉(鸡)年', '丙戌(狗)年', '丁亥(猪)年', '戊子(鼠)年',
	'己丑(牛)年', '庚寅(虎)年', '辛卯(兔)年', '壬辰(龙)年');

var today;
var Festival = new Array();

function GetCalenStr(pY,pM,pD)
{    
	today =new Date(pY,pM,pD);
	result  = aryLunarYear[(pY-1901)%12] +'<br><br>'
    	result += WeekDay_Trans() +'<br>';
    	result += Festival_Trans('I', pM+1, pD);    
    	return result; 
}

// 日期、星期转换
function WeekDay_Trans() {
	var theDay,nStr1 = new Array('日','一','二','三','四','五','六');
	var tY = today.getFullYear();
	var tM = today.getMonth() + 1;
	var tD = today.getDate();
	var tW = today.getDay();

	if(tM.toString().length<2) tM='0'+tM;
	if(tD.toString().length<2) tD='0'+tD;
	
	theDay = tY + "年" + tM + "月" + tD + "日<br>星期" + nStr1[tW];
	return theDay;
}

// 国际/传统节日、农历节日
function Festival_Trans(pID,pM,pD) {
    var i=0,matchres,result = '';
    eval("Festival=Festival_"+pID);
    
    for(i in Festival){
        matchres = Festival[i].match(/^(\d{2})(\d{2})([\s\*])(.+)$/);
        if(matchres) {
            if(Number(matchres[1])==pM && Number(matchres[2])==pD) {
            result = matchres[4];
            result = '<font color=red>*' + result + '</font>';
            break;
            }
        }
    }
    return '<BR>' + result;
}
//-->