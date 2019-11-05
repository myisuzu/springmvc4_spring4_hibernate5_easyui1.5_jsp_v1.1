$(function() {

	//创建 uploader数组	
	var uploader = new Array();
	
	// 优化retina, 在retina下这个值是2
    var ratio = window.devicePixelRatio || 1,
    
    // 缩略图大小
    thumbnailWidth = 100 * ratio,
    thumbnailHeight = 100 * ratio,
    supportTransition = (function(){
        var s = document.createElement('p').style,
        r = 'transition' in s ||
              'WebkitTransition' in s ||
              'MozTransition' in s ||
              'msTransition' in s ||
              'OTransition' in s;
        s = null;
        return r;
    })();
    
 	// 所有文件的进度信息，key为file id
    var percentages = {};
    var state = 'pedding';
	
	//可行性判断
	if ( !WebUploader.Uploader.support() ) {
        alert( 'Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器');
        throw new Error( 'WebUploader does not support the browser you are using.' );
    }
	
	//循环页面中每个上传域
	$('.uploder-container').each(function(index){
        var fileCount = 0; // 添加的文件数量
        var fileSize = 0; // 添加的文件总大小
		var filePicker=$(this).find('.filePicker');//上传按钮实例
		var queueList=$(this).find('.queueList');//拖拽容器实例
		var jxfilePicker=$(this).find('.jxfilePicker');//继续添加按钮实例
		var placeholder=$(this).find('.placeholder');//按钮与虚线框实例
		var statusBar=$(this).find('.statusBar');//再次添加按钮容器实例
		var info =statusBar.find('.info');//提示信息容器实例
		var queue = $('<ul class="filelist"></ul>').appendTo( queueList); // 图片容器       	
		
		//初始化上传实例
        uploader[index] = WebUploader.create({
            pick: {
                id: filePicker,
                label: '点击选择图片'
            },
            dnd: queueList,
            //这里可以根据 index 或者其他，使用变量形式
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png,doc',
                mimeTypes: 'image/*'
            },

            swf: '../Uploader.swf', // swf文件路径
            disableGlobalDnd: true, //禁用浏览器的拖拽功能，否则图片会被浏览器打开
            chunked: false, //是否分片处理大文件的上传
            server: '../../../../../../common/file/webuploader/upload', //上传地址
            fileVal: 'uploadFile', //配置文件表单域<input type=file name="">的name属性值
            fileNumLimit: 100, //一次最多上传文件个数
            fileSizeLimit: 1024 * 1024 * 1024,    // 总共的最大限制1G
            fileSingleSizeLimit: 10 * 1024 * 1024,   // 单文件的最大限制10M
            auto :true,
            formData: {
            	token:index//可以在这里附加控件编号，从而区分是哪个控件上传的
            }
        });

        // 添加“添加文件”的按钮
        uploader[index].addButton({
            id: jxfilePicker,
            label: '继续添加'
        });
        
        //事件：从服务器加载图片之前触发(回显图片)
        uploader[index]	.on('ready',function(){
        	var input_hidden_id = $("#input_hidden_id").val();
        	//如果input_hidden_id有值，表示修改信息，需要回显图片
        	if (input_hidden_id != null && input_hidden_id != "") {
        		var fileIdStr = "";
        		//var fileUrlStr = "";
        		if (index == 0) {
        			fileIdStr = $("#input_hidden_image_id").val();
        			//fileUrlStr = $("#input_hidden_image1").val();
        		}
        		var url = "../../../../../../common/file/list4Id?idStr="+fileIdStr;
        		//var url = "../../../../../../common/file/list4Url?urlStr="+fileUrlStr;
        		//发送文件列表请求
	        	$.ajax({
	        		url: url,
	        		type: 'GET',
	        		async: false,
	        		success: function(files){
	        			//说明请求第一个图片域
	        			if (index == 0) {
	                		$("#myForm").append("<input type='hidden' name='imageId' value='"+files[0].id+"'>");
	        				$("#myForm").append("<input type='hidden' name='imageUrl' value='"+files[0].url+"'>");
	                	}
	        			for(var i = 0; i < files.length; i++){
	        				var obj ={};
	        				statusMap = {};
	        				fileCount++;
	                        fileSize += files[i].size;
	                        if ( fileCount === 1 ) {
	                        	placeholder.addClass( 'element-invisible' );
	                            statusBar.show();
	                        }
	                        obj.id=files[i].id;
	                        //obj.kid = files[i].url;
	                        obj.name=files[i].name;
	                        obj.type=files[i].type;
	                        obj.size=files[i].size;
	                        obj.ret=files[i].url;
	                        obj.source=this;
	                        obj.flog=true;
	                        obj.status = 'complete',
	                        obj.getStatus = function(){
	                        	return '';
	                        }
	                        obj.version = WebUploader.Base.version;
	                        obj.statusText = '';
	                        obj.setStatus = function(){
	                        	var prevStatus = statusMap[this.id];
	                        	typeof text !== 'undefined' && (this.statusText = text);
	                        	if(status !== prevStatus){
	                        		statusMap[this.id] = status;
	                        		//文件状态设置为已完成
	                        		uploader[index].trigger('statuschage',status,prevStatus);
	                        	}
	                        }
	                        //console.log("这是你要的obj：" + JSON.stringify(obj));
	                        addFile(obj,uploader[index],queue,index);
	                        setState('ready' ,uploader[index],placeholder,queue,statusBar,jxfilePicker);
	                        updateStatus('ready',info,fileCount,fileSize);
	        			}
	        		}
	        	});
        	}
        });
        
        //事件：当文件加入队列时触发
        uploader[index].onFileQueued = function( file ) {
			fileCount++;
			//限制第一个图片域只上传一张图片
			if (index == 0) {
				if (fileCount > 1) {
					alert("只能上传一张图片");
					return;
				}
			}
            fileSize += file.size;
            if ( fileCount === 1 ) {
            	placeholder.addClass( 'element-invisible' );
                statusBar.show();
            }
            addFile(file,uploader[index],queue,index);
            setState( 'ready' ,uploader[index],placeholder,queue,statusBar,jxfilePicker);
            updateStatus('ready',info,fileCount,fileSize);
        };
        
        //事件：当文件上传前触发
        uploader[index].on('uploadBeforeSend',function(object,data,header) {
        });
        
        //事件：当文件上传成功后触发(uploader数组的长度就是上传插件的个数、index为当前正在上传文件的插件（第一个索引为0）)
        uploader[index].on('uploadSuccess',function(file,reponse){
        	//为新增的文件元素重新设置kid值(自定义字段)为上传服务器文件记录的主键值。当从服务器加载图片事件不触发，新增的每个图片元素(li)的id值是类似“WU_FILE_0、WU_FILE_0”这些
        	//为file增加自定义属性kid，和隐藏域value属性值保持一致，这样通过kid可以定位到对应隐藏域
        	file.kid = reponse.data.fileId;
        	//file.kid = reponse.data.fileUrl;
        	//第一个图片域
        	if (index == 0) {
        		//只要选择图片就上传，不能控制不让上传。所以，只能让上传的超过1张的图片不添加表单，保存第一个图片域图片时就一张图片。
        		if (fileCount > 1) {
					return false;
				}
        		$("#myForm").append("<input type='hidden' name='imageId' value='"+reponse.data.fileId+"'>");
        		$("#myForm").append("<input type='hidden' name='imageUrl' value='"+reponse.data.fileUrl+"'>");
        	}
        	//alert("图片上传成功！");
        });
        
		//事件：当文件被移除队列后触发
        uploader[index].onFileDequeued = function(file) {
        	//console.log(file);
        	//移除图片元素，必须移除对应的隐藏域，否则在保持学生时，会关联这个文件id
        	$(":input[type='hidden'][value='"+file.id+"']").remove();
        	//$(":input[type='hidden'][value='"+file.ret+"']").remove();
        	$(":input[type='hidden'][name='imageUrl']").remove();
        	$(":input[type='hidden'][value='"+file.kid+"']").remove();
        	fileCount--;
            fileSize -= file.size;
            if (!fileCount) {
                setState('pedding',uploader[index],placeholder,queue,statusBar,jxfilePicker);
                updateStatus('pedding',info,fileCount,fileSize);
            }              
            removeFile(file ,index);
        };
	});
	
    /**
     * 当有文件添加进来时执行，负责view的创建
     * @param file 图片文件
     * @param now_uploader 当前图片上传插件
     * @param queue 图片容器（包含在图片上传插件中）
     * @param index 当前图片上传插件索引(第一个0，)  
     */
    function addFile(file,now_uploader,queue,index) {
        var $li = $( '<li id="' + file.id + '">' +
                '<p class="title">' + file.name + '</p>' +
                '<p class="imgWrap"></p>'+
                '<p class="progress"><span></span></p>' +
                '</li>' ),
            $btns = $('<div class="file-panel">' +
                '<span class="cancel">删除</span>' +
                '<span class="rotateRight">向右旋转</span>' +
                '<span class="rotateLeft">向左旋转</span></div>').appendTo( $li ),
            $prgress = $li.find('p.progress span'),
            $wrap = $li.find( 'p.imgWrap' ),
            $info = $('<p class="error"></p>');
            
        $wrap.text( '预览中' );
        if(file.flog == true){
        	var img = $('<img src="'+file.ret+'">');
            $wrap.empty().append( img );
        }else{
        	now_uploader.makeThumb( file, function( error, src ) {
                if ( error ) {
                    $wrap.text( '不能预览' );
                    return;
                }

                var img = $('<img src="'+src+'">');
                $wrap.empty().append( img );
            }, thumbnailWidth, thumbnailHeight );
        }
        percentages[ file.id ] = [ file.size, 0 ];
        file.rotation = 0;
       
        $li.on( 'mouseenter', function() {
            $btns.stop().animate({height: 30});
        });
        $li.on( 'mouseleave', function() {
            $btns.stop().animate({height: 0});
        });
        $btns.on( 'click', 'span', function() {
            var index = $(this).index(), deg;
            switch ( index ) {
                case 0:
                	now_uploader.removeFile( file ,index);
                    return;
                case 1:
                    file.rotation += 90;
                    break;
                case 2:
                    file.rotation -= 90;
                    break;
            }
            if ( supportTransition ) {
                deg = 'rotate(' + file.rotation + 'deg)';
                $wrap.css({
                    '-webkit-transform': deg,
                    '-mos-transform': deg,
                    '-o-transform': deg,
                    'transform': deg
                });
            } else {
                $wrap.css('filter', 'progid:DXImageTransform.Microsoft.BasicImage(rotation='+ (~~((file.rotation/90)%4 + 4)%4) +')');
            }
        });
        $li.appendTo($(".filelist").eq(index));
    }
    
    // 负责view的销毁
    function removeFile( file ,index) {
        var $li = $(".uploder-container").eq(index).find("#"+file.id);
        delete percentages[ file.id ];
        $li.off().find('.file-panel').off().end().remove();
    } 
	
    function setState( val, now_uploader,placeHolder,queue,statusBar,jxfilePicker) {
        switch ( val ) {
            case 'pedding':
                placeHolder.removeClass( 'element-invisible' );
                queue.parent().removeClass('filled');
                queue.hide();
                statusBar.addClass( 'element-invisible' );
                now_uploader.refresh();
                break;
            case 'ready':
                placeHolder.addClass( 'element-invisible' );
                jxfilePicker.removeClass( 'element-invisible');
                queue.parent().addClass('filled');
                queue.show();
                statusBar.removeClass('element-invisible');
                now_uploader.refresh();
                break;              
        }
    }
    
    function updateStatus(val,info,f_count,f_size) {
        var text = '';
        if ( val === 'ready' ) {
            text = '选中' + f_count + '张图片，共' + WebUploader.formatSize( f_size ) + '。';
        } 
        info.html( text );
    }

});