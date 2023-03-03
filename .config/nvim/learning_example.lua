-------------------------------------------------------------------------------------
-- 1. Variables 
-------------------------------------------------------------------------------------
-- By default every variable is global, to create a local scoped variable
-- prefix it with keyword 'local' e.g. 'local PI = 3.14'
number = 69 			 	-- Every number in Lua is double. 
string = "Lua is a scripting language"  -- Strings are immutable (cannot be changed)
single_quote_string = 'Single quotes are fine too'
mutli_line_str = [[ Hello world
		    my name is Andrew
		    ]]
string = nil 				-- Garbage collector will delete 'string' now



-------------------------------------------------------------------------------------
-- 2. Control flow 
-------------------------------------------------------------------------------------
-- Example of if statement
if number > 40 then
	print("Number is bigger than 40")
elseif string ~= "not equal" then
	print("Strings is not equal")
else
	-- read line from std::input
	local name = io.read()

	-- String concatenation is done by '..' operator
	print("My name is" .. name)
end


-- Example of while loop
i = 0

while i < 50 do
	i += 1
end

-- Example of ternary operator
ternary_example = true and "YES" : "NO" --> "YES"

-- Example of for loop
-- syntax for range generation is: begin, end, step?  (step is optional)
for j = 1, 100, 5 do
	print("Super duper for loop")
end

-- Example of do-while loop
repeat
   i -= 1
until i = 0


-------------------------------------------------------------------------------------
-- 3. functions 
-------------------------------------------------------------------------------------
function fibonacci(n)
    if n < 2 then
	return 1
    end
    
    return fib(n - 2) + fib(n - 1)
end


-- Closures and anonymous functions are OK 
-- The returned function is created when adder is called
-- and it remembers the value of 'n1' parameter
function adder(n1) 
    return function (n2) return n1 + n2 end
end

adder_example = adder(2)

print(adder_example(3)) --> 5


-------------------------------------------------------------------------------------
-- 4. Tables 
-------------------------------------------------------------------------------------
-- Tables in lua are the only compound data structure. They are associative arrays.
-- Similiar to PHP arrays or JavaScript's objects, they are hash-lookup dicts. that
-- can also be used as lists. 
person = {
    name = "Andrew",
    age = 21
}

person.height = 180 		--> adds a new property/key into person
person.age = nil   		--> removes a 'age' property
person.last_name["Tuček"] 	--> literal notation for any (non-nil) value 

-- We can assign a functions to tables
function person.greet(greeting_value)
    if greeting_value then
	print(greeting_value)
    else 
	print("Hello")
    end
end

person.greet("Dobrý den"); --> prints 'Dobrý den'


-- Tables also have thing called 'metatables' 
-- these things are like JavaScript object inside of an object
-- let person = { name: "Andrew", phone: { name: "iPhone" } };
-- Lua example:
phone = {
    brand: "Apple",
    name: "iPhone 7"
    color: "Mate black"
}

setmetatable(person, phone)

print(person.phone.name) --> iPhone 7

-- Metamethods would be just a function inside of table
-- usually prefixed with '__' e.g. person.phone.__call("+420 772 559 887")

