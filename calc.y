class Calculator
  options no_result_var
rule
  target  : exp
          | /* none */ { 0 }

  exp     : NUMBER
          | NUMBER ADD NUMBER       { val[0] + val[2] }
          | NUMBER SUBTRACT NUMBER  { val[0] - val[2] }
          | NUMBER MULTIPLY NUMBER  { val[0] * val[2] }
          | NUMBER DIVIDE NUMBER    { val[0] / val[2] }
end

---- header ----
require 'calc.rex'

---- inner ----

---- footer ----
calc = Calculator.new
puts calc.scan_str('2+2')
puts calc.scan_str('2-2')
puts calc.scan_str('2*2')
puts calc.scan_str('2/2')
