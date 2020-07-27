/**
 * 
 */
function addToProduct() {
		if (confirm("상품을 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}