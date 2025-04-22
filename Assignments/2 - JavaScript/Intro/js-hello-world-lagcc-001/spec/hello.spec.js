'use strict';

describe('hello', function() {
  it('logs "Hello World" to the screen', function() {
    spyOn(console, 'log');
    // v Your code below v
    var hello = "Hello World";
    console.log(hello);
    // ^ Your code above ^
    expect(console.log).toHaveBeenCalledWith("Hello World")
  });
});
