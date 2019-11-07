//��Ϸ��ͼ�ĺ������-��ʼ
function scr_vsrc(obj){
    var vsrc=obj.attr("data-original");
    obj.attr("src",vsrc);
}

var oPreviewImg,oLookBigImg,oRecommended;
//�Զ��ж�ͼƬ���,����ʼ������ͼƬ-��ʼ
var visibleW = ai.ww(),
    iImgload = 0,
    jietu_ul = ai.i("jietu_ul"),
    oFirstImg = ai.a("#jietu_ul img")[0],
    oNewFirstImg = new Image();
oNewFirstImg.src = oFirstImg.getAttribute("data-original");

oNewFirstImg.onload = function() {// ��һ��ͼƬ�����

    if(this.width / this.height > 1){
        $(".js_imgAwh").addClass("ui-page-slideWrap_hor");
        var liWidth=479;
    }
    else{
        $(".js_imgAwh").addClass("ui-page-slideWrap_ver");
        var liWidth=152;
    }
    //�ӳټ���
    var loadnum=Math.ceil(visibleW/liWidth);
    var imgall=$(".jimg");
    for(var i=0;i<loadnum;i++){
        scr_vsrc(imgall.eq(i));
    }

    var spLen = ai.a("#jietu_ul>li").length;
    $("#allPage").html(spLen);
    function onScrollEndEnd(){
        if(iImgload == 0){
            for(var i=loadnum;i<spLen;i++){
                scr_vsrc(imgall.eq(i));
            }
        }
        iImgload = 1;
    }
    //�ӳټ���
    var spWit = spLen*liWidth;
    ai.i("jietu_ul").style.width = spWit+"px";
    var jietu_ul = ai.i("jietu_ul");
    var scrollBar_jietu = ai.i("scrollBar_jietu");

    oPreviewImg = slip('px',jietu_ul,{
        direction: "x",
        bar_no_hide: true,
        touchEndFun: onScrollEndEnd,
        bar_css: "bottom:-1px;border-radius: 10px;"
    });


};
//�Զ��ж�ͼƬ���,����ʼ������ͼƬ-����
//��Ϸ��ͼ�ĺ������-����



//ͼƬ�鿴��-��ʼ
var iTouchClickNum = 1;
var iShowOrhide = 0;
var oPptImgBg = ai.i("pptImg-bg");
function index(obj, current){ // ȡ��Ԫ����ͬ���е�����ֵ
    for (var i = 0, length = current.length; i<length; i++) {
        if (current[i] == obj ) {
            return i;
        }
    }
}
ai.touchClick(jietu_ul,function(e){
    if(jietu_ul.webkitMatchesSelector.call( e.target, 'ul img') ) {
        var that =  e.target;
        if(iTouchClickNum ==1 ){
            iTouchClickNum++;
            var visibleH = window.innerHeight;
            var visibleW = ai.ww();
            var oPptImgUl = ai.i("ui-pptImg-ul");
            var ojietuUlImgLength = ai.a("#jietu_ul img").length;

            oPptImgBg.style.display = "block";
            iShowOrhide = 1;
            oPptImgBg.style.marginTop='0px';
            oPptImgBg.style.height=visibleH+3+'px';

            for(var i = 0; i < ojietuUlImgLength; i++){
                var oNewLi = document.createElement('li');
                oNewLi.style.width = visibleW+"px";
                oNewLi.innerHTML = "<div class='loading'> <i class='loading-child'></i></div>";
                oPptImgUl.appendChild(oNewLi);
            }
            var oLilist = ai.a("#ui-pptImg-ul li");
            var ojietuUlImg = ai.a("#jietu_ul img");
            var ojietuUlImgHtml = '';
            var winbili=visibleW/visibleH;
            var nt = document.getElementById("nt").value;
            for(var i = 0; i < ojietuUlImgLength; i++){

                var src = null;;
                if (nt == "0" || nt == "1") {
                    src = ojietuUlImg[i].getAttribute("data-original");
                } else {
                    src = ojietuUlImg[i].getAttribute("data-original").replace("_","");
                }

                var newPic = new Image();
                newPic.src = src;
                newPic.num = i;

                newPic.onload = function(){
                    var oliW = this.width;//ȡ��ͼƬʵ�ʵĿ�
                    var oliH = this.height;//ȡ��ͼƬʵ�ʵ�
                    var imgbili=oliW/oliH; //ȡ��ͼƬ�Ŀ�͸ߵı���
                    if(oliW > visibleW || oliH > visibleH){

                        if(imgbili > winbili){//��ͼƬ�Ŀ�Ⱥ���Ļ�Ŀ�ȵȿ��ٰ��������ͼƬ�ĸ߶�
                            var iImgWidth = visibleW;
                            var iImgHeight = visibleW/imgbili;
                        }else{//��ͼƬ�ĸ߶Ⱥ���Ļ�ĸ߶ȵȸߣ��ٰ��������ͼƬ�Ŀ��
                            var iImgWidth = visibleH*imgbili;
                            var iImgHeight = visibleH;
                        }
                    }else{
                        var iImgWidth = oliW;
                        var iImgHeight = oliH;
                    }

                    oLilist[this.num].innerHTML = '';
                    this.width = iImgWidth;
                    this.height = iImgHeight;
                    this.className = "img";
                    oLilist[this.num].appendChild(this);

                }
            }

            var olastFirstPage = ai.i("lastFirstPage");
            function lastPage(){
                olastFirstPage.innerHTML = "�������һ���ˣ�";
                olastFirstPage.style['webkitTransitionDuration'] = '300ms';
                olastFirstPage.style['webkitTransform'] = 'translate3d(-70px, -70px, 0px)';
                setTimeout(function(){
                    olastFirstPage.style['webkitTransform'] = 'translate3d(-70px, -200px, 0px)';
                },1000);
            }
            function firstPage(){
                olastFirstPage.innerHTML = "��ŵ�һ�ţ�";
                olastFirstPage.style['webkitTransitionDuration'] = '300ms';
                olastFirstPage.style['webkitTransform'] = 'translate3d(-70px, -70px, 0px)';
                setTimeout(function(){
                    olastFirstPage.style['webkitTransform'] = 'translate3d(-70px, -200px, 0px)';
                },1000);
            }
            function changeEnd(){
                ai.i("numPage").innerHTML = this.page+1;
            }
            oLookBigImg = slip('page',oPptImgUl,{
                num: ojietuUlImgLength,
                no_follow: true,
                lastPageFun: lastPage,
                firstPageFun: firstPage,
                endFun: changeEnd
            });

            var iIndex = index(that.parentNode.parentNode,ai.a("#jietu_ul li"))
            ai.i("numPage").innerHTML = iIndex+1;
            oLookBigImg.toPage(iIndex, 0);

            ai.touchClick(oPptImgBg,function(e){
                setTimeout(function() {
                    oPptImgBg.style.display = "none";
                    iShowOrhide = 0;
                },100);
            });
            ai.touchMovePreventDefault(oPptImgBg);
        }else{
            var iIndex = index(that.parentNode.parentNode,ai.a("#jietu_ul li"))
            ai.i("numPage").innerHTML = iIndex+1;

            oPptImgBg.style.display = "block";
            oPptImgBg.style.marginTop='0px';
            oPptImgBg.style.height=window.innerHeight+3+'px';
            oLookBigImg.refresh();
            oLookBigImg.toPage(iIndex, 0);
        }

    }

});
//ͼƬ�鿴��-����



