# Pebble Coldbox module
This is just a quick CFML/Coldbox 4 implementation of Twig like Java Template engine Pebble

See for documentation http://www.mitchellbosecke.com/pebble/home
See for Pebble Source Code https://github.com/mbosecke/pebble

## How to use
### Requirements
- Coldbox 4
- cbjavaloader
- Just drop the Pebble folder in your modules

### How to
- Put your Pebble templates in the Pebble/views folder, i.e. home.peb

- Your handler should look like
```js
component{
    property name="Pebble" inject="Pebble@templateEngine";

	function index(event,rc,prc){
		var context={};
		context['websiteTitle']="My First Website";
		context['content']="My First Website";
		
		writeOutput(pebble.render(context));
		abort;
	}

}
```

## Version
### 0.1
Proof of concept

## License

    Pebble Coldbox Module Copyright (c) 2016 by Akitogo
    Pebble Copyright (c) 2013 by Mitchell Bösecke

    Some rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are
    met:
    
        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.
    
        * Redistributions in binary form must reproduce the above
          copyright notice, this list of conditions and the following
          disclaimer in the documentation and/or other materials provided
          with the distribution.
    
        * The names of the contributors may not be used to endorse or
          promote products derived from this software without specific
          prior written permission.
    
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
    A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
    OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
    LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
    DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.