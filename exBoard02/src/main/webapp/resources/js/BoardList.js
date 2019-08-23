/**
 * 자바스크립트
 */

console.log("Comments Module..");

var commentsService = (function(){
	

	
	function getList(param, callback, error){
		var mnumc = param.mnumc;
		var team = param.team;
		
		$.getJSON("/spring/Rest/list/" + mnumc + "/" + team + ".json", function(data){
			if(callback){
//				callback(data);
				callback(data.cnt, data.list);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}

	
	
	
	
	return{

		getList: getList,

	};
})();