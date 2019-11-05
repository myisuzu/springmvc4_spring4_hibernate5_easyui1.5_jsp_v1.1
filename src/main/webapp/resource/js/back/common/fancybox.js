
/**
 * 通用展示图片方法（fancybox插件）
 * @param fileIdStr 关联上传文件id字符串，以逗号间隔(1,2,3...)
 * @returns
 */
function commonShowImage(fileIdStr) {
	$.ajax({
		//url: "${pageContext.request.contextPath}/common/fancybox/list?fileIdStr="+fileIdStr,
		url: "/common/fancybox/list?fileIdStr="+fileIdStr,
		type: "post",
		dataType: "json",
		success: function(data) {
			if (data == "") {
				$.messager.alert("提示", "没有图片！");
			} else {
				$.fancybox.open(data, {
					padding: 0,
					openEffect: 'elastic',
					openSpeed: 150,
					closeEffect: 'elastic',
					closeSpeed: 150,
					closeClick: true,
					helpers: {
						overlay : null
					}
				});
				/*
				$.fancybox.open(
					[{
						href : 'http://localhost/upload/20180827/14782470516527.jpg',
						title : 'My title'
					}, {
						href : 'http://localhost:80/upload/20180827/14688686110694.jpg',
						title : '2nd title'
					}, { 
						href : 'http://localhost/upload/20180827/14782470516527.jpg'
					}
					], {
						helpers : {
							thumbs : {
								width: 75,
								height: 50
							}
						}
					}
				);
				*/
			}
		}
	});
}