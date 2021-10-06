const btn_g = document.querySelector('.btn_g');
btn_g.onclick = () => {
	const password = document.querySelector('#password');
	const item_ip = document.querySelector('.item_ip');
	const msg1 = document.querySelector('.msg1');
	const msg2 = document.querySelector('.msg2');
	if(item_ip.value.length == 0){
		msg1.style.display = 'block';
		msg2.style.display = 'none';
	} else {
		msg1.style.display = 'none';
		if(password.value == item_ip.value){
			const form = document.querySelector('form');
			form.submit();
		}else {
			msg2.style.display = 'block';
		}
	}
}