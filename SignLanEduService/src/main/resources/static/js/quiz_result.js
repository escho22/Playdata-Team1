console.log('*****Quiz Module..........')

var quizService = (function(){
	console.log("make ajax add function")
	
	function add(w_num,quiz_data,callback,error){
		console.log(quiz_data);
		$.ajax({
			type:'post',
			url:'./quiz_4_'+w_num,
			data:JSON.stringify(quiz_data),
			contentType:"application/json;charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					//alert("success!!");
					callback(result)
				}
			},
			error:function(xhr,status,er){
				if(error){
					alert("error!!");
					error(er)
				}
			}
		});
	};
	
	return{
		add: add,
	}
})();


