/**
* Sample handler, remove if not needed
*/
component{
    property name="Pebble" inject="Pebble@templateEngine";

	function index(event,rc,prc){
		var context={};
		context['websiteTitle']="My First Website";
		context['content']="My First Website";
		
		writeOutput(pebble.render('home',context));
		abort;
	}

}