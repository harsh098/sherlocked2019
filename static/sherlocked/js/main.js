function toggle () {
	var div = document.getElementById('divOne');
	if(div.classList.contains('active')){
		div.classList.remove('active');
	}
	else{
		div.classList.add('active');
	}
}

function showQuestions() {
	window.location.href = '/sherlocked/play'
}