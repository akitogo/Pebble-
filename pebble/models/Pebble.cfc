component{
    property name="javaloader" inject="loader@cbjavaloader";

	Pebble function init(){
		return this;
	}

	void function onDiComplete(){
		variables.engine= javaLoader.create( "com.mitchellbosecke.pebble.PebbleEngine$Builder" ).build();
	}

	
	string function render(struct context={}){
	    var writer = createObject("Java", "java.io.StringWriter").init();
		var compiledTemplate=engine.getTemplate(expandPath("./modules/pebble/views/home.peb"));
		
		compiledTemplate.evaluate(writer, context);

		return writer.toString();
	}
}