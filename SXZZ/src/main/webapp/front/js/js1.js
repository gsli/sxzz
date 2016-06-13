
(function(FUN, undefined){
	var list = []; 
	
	FUN.run = function(){
		if(arguments.length < 1){
			throw new Error("jzUtils.run 参数错误");
			return;
		}
		
		var name = arguments[0].name, 
			callMethod = arguments[0].callMethod || false, 
			prompt = arguments[0].prompt || false, 
			promptMsg = arguments[0].promptMsg || "功能还在加载中，请稍候", 
			base = arguments[0].base || (window.Fai && Fai.top.Site) || top.Site || window, 
			
			args = Array.prototype.slice.call(arguments), 
			funcArgs = args.slice(1), 
			callbackFunc = {}, 
			result; 

		result = checkMethod(name, base);
		if(result.success){
			callMethod = false;
			result.func.apply(result.func, funcArgs); 
		}else{
			if(prompt){
				window.Fai && Fai.ing(promptMsg, true);
			}
		}
		
		
		if(callMethod){
			callbackFunc.name = name;
			callbackFunc.base = base;
			callbackFunc.args = funcArgs;
			list.push(callbackFunc);
		}
	};
	
	
	FUN.trigger = function(option){
		if(typeof option !== "object"){
			throw new Error("jzUtils.trigger 参数错误");
			return;
		}
		
		var funcName = option.name || "", 
			base = option.base || (window.Fai && Fai.top.Site) || top.Site || window, 
			newList = [], 
			result, 
			func, 
			i, 
			param; 
		
		if(funcName.length < 1){
			return;
		}
		
		
		for(i = 0; i < list.length; i++){
			param = list[i];
			if(param.name == funcName){
				result = checkMethod(funcName, base);
				result.success && result.func.apply(result.func, param.args);
			}else{
				newList.push(param);
			}
		}
		
		list = newList;
	};
	
	
	function checkMethod(funcName, base){
		var methodList = funcName.split("."), 
			readyFunc = base, 
			result = {
				"success":true,
				"func":function(){}
			}, 
			methodName, 
			i;
			
		for(i = 0; i < methodList.length; i++){
			methodName = methodList[i];
			if(methodName in readyFunc){
				readyFunc = readyFunc[methodName];
			}else{
				result.success = false;
				return result;
			}
		}
		
		result.func = readyFunc;
		return result; 
	}
})(window.jzUtils || (window.jzUtils = {}));
