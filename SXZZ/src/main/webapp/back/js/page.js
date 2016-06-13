	/* 首页 */
	function firstPage() {
		page = 1;
		window.location.href="/SXZZ/Back/look_fdy?page="+page;
	}
	
	/* 上一页 */
	function prePage() {
		if(page > 1) {
			page--;
			window.location.href="/SXZZ/Back/look_fdy?page="+page;
		}else {
			alert("没有上一页了");
		}
	}
	
	/* 下一页 */
	function nextPage() {
		if(page < total) {
			page++;
			window.location.href="/SXZZ/Back/look_fdy?page="+page;
		}else {
			alert("没有下一页了");
		}
	}
	
	/* 尾页 */
	function endPage() {
		page = total;
		window.location.href="/SXZZ/Back/look_fdy?page="+page;
	}