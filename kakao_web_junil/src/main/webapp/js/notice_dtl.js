const notice_update_button = document.querySelector('.notice_update_button');
notice_update_button.onclick = () => {
	const notice_code = document.querySelector('#notice_code');
	location.href = 'notice-update?code=' + notice_code.value;
}