/**
 * 
 */

function getimg(id) {
	var Galaxy_S20 = new String("https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/83230728105284-6126e577-5207-43f7-bed3-7ec87a5956e9.jpg");
	var LG_GRAM = new Stirng("https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/4048925896954-dc6ab0ab-dc4c-47d7-92ae-05e1c74bc6b4.jpg");
	var Galaxy_Tab = new String("https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/521016655425335-738243bf-69ac-44fa-a20c-0ef998f13d88.jpg");
	var str = id.replaceAll(" ", "_");
	var result = new String("");
	
	if(Galaxy_S20 == str) {
		result = Galaxy_S20;
		return result;
	}
	else if(LG_GRAM == str) {
		result = LG_GRAM;
		return result;
	}
	else if(Galaxy_Tab == str) {
		result = LG_GRAM;
		return result;
	}	
}