/**
 * ai是一个提供基础常用函数的单体。各个函数的功能见各个函数的注释。
 * @author 黄浩明
 * @version 3.0.2
 */
var ai={touchClick:function(g,c,f){var d=0,b=0,e=f||8;g.addEventListener("touchstart",function(h){d=h.touches[0].clientX;b=h.touches[0].clientY;document.addEventListener("touchend",a,false)});function a(j){var i=j.changedTouches[0].clientX;var h=j.changedTouches[0].clientY;if(Math.abs(i-d)<e&&Math.abs(h-b)<e){c.call(g,j)}document.removeEventListener("touchend",a,false)}},ovb:{_version_value:false,_bversion_value:false,_ua:navigator.userAgent,android:function(){var b=this._ua.match(/(Android)\s+([\d.]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[2]}this.android=function(){return a};return a},ios:function(){var b=this._ua.match(/.*OS\s([\d_]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[1].replace(/_/g,".")}this.ios=function(){return a};return a},ipod:function(){var b=this._ua.match(/(iPod).*OS\s([\d_]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[2].replace(/_/g,".")}this.ipod=function(){return a};return a},ipad:function(){var b=this._ua.match(/(iPad).*OS\s([\d_]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[2].replace(/_/g,".")}this.ipad=function(){return a};return a},iphone:function(){var b=this._ua.match(/(iPhone);.*OS\s([\d_]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[2].replace(/_/g,".")}this.iphone=function(){return a};return a},kindle:function(){var b=this._ua.match(/Kindle\/([\d.]+)/),a=!!b;if(!this._version_value&&a){this._version_value=b[1]}this.kindle=function(){return a};return a},webkit:function(){var b=this._ua.match(/WebKit\/([\d.]+)/),a=!!b;if(!this._version_value&&a){this._bversion_value=b[1]}this.webkit=function(){return a};return a},uc:function(){var b=this._ua.match(/UC/),a=!!b;this.uc=function(){return a};return a},opera:function(){var b=this._ua.match(/Opera/),a=!!b;this.opera=function(){return a};return a},safari:function(){var b=this._ua.match(/Version.*Safari/),a=!!b;this.safari=function(){return a};return a},silk:function(){var b=this._ua.match(/Silk/),a=!!b;this.silk=function(){return a};return a},version:function(){return this._version_value},bVersion:function(){return this._bversion_value}},a:function(a){return document.querySelectorAll(a)},q:function(a){return document.querySelector(a)},i:function(a){return document.getElementById(a)},c:function(a){return document.getElementsByClassName(a)},hideUrl:function(){setTimeout(function(){window.scrollTo(0,1)},200)},wh:function(){return document.documentElement.clientHeight},ww:function(){return document.documentElement.clientWidth},hv:function(){if(this.wh()/this.ww()>1){return true}else{return false}},resize:function(a){this.resize_time=Date.now();window.addEventListener("resize",function(){if(Date.now()-this.resize_time<200){this.resize_time=Date.now()}else{a();this.resize_time=Date.now()}},false)},clone:function(a){function b(){}b.prototype=a;return new b},extend:function(c,a){var b=function(){};b.prototype=a.prototype;c.prototype=new b();c.prototype.constructor=c;c.superclass=a.prototype;if(a.prototype.constructor==Object.prototype.constructor){a.prototype.constructor=a}},styleLoad:function(c,b){var a=document.createElement("style");a.type="text/css";a.src=c;document.head.appendChild(a);a.onload=function(){b()}},scriptLoad:function(c,b){var a=document.createElement("script");a.type="text/javascript";a.src=c;document.head.appendChild(a);a.onload=function(){b()}},touchMovePreventDefault:function(a){a.addEventListener("touchmove",function(b){b.preventDefault()},false)}};