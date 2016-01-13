component{
    property name="javaloader" inject="loader@cbjavaloader";

	Pebble function init(){
		return this;
	}

	void function onDiComplete(){
		variables.engine= javaLoader.create( "com.mitchellbosecke.pebble.PebbleEngine$Builder" ).build();
	}

	
	string function render(string templatename='',struct context={}){
	    var writer = createObject("Java", "java.io.StringWriter").init();
	    
	    // template location must be improved, this is just a proof of concept
		var compiledTemplate=engine.getTemplate(expandPath("./modules/pebble/views/"&arguments.templatename&".peb"));
		
		compiledTemplate.evaluate(writer, context);

		return writer.toString();
	}
}