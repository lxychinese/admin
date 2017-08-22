//UE.commands['showmsg'] = {
//    execCommand : function(){
//        var imgs = this.document.getElementsByTagName("img");
//        for(var i= 0,img;img = imgs[i++];){
//            img.setAttribute("border",2);
//            img.setAttribute("width","100");
//            img.setAttribute("height","100");
//        }
//    },
//	queryCommandState:function(){
//	     var images = this.document.getElementsByTagName("img" );
//	     for(var i=0;i<$(images).length;i++){
//	     	if($(images[i]).css("width")!="100px"){
//	     		return 0;	 //如果找到宽度不为100的图片，则返回0，代表当前按钮可以点击
//	     	}
//	     }
//	     return -1;           //否则返回-1，告诉编辑器将当前按钮置灰
//	}
//};

UE.commands['showmsg'] = {
	    execCommand : function(){//按钮点击时候要处理的信息
	     
	        if(this.document.bgColor=='red'){
	        	 this.document.bgColor='white';
	        }else{
	        	 this.document.bgColor='red';
	        }
	    }
	};