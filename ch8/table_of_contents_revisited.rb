array = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1','Chapter 2: Numbers',
 		'page 9', 'Chapter 3: Letters', 'page 13']
line_width = 40
puts(array[0].center(line_width))
puts nil
puts(array[1].ljust(line_width/2) + array[2].rjust(line_width/2))
puts(array[3].ljust(line_width/2) + array[4].rjust(line_width/1.5))
puts(array[5].ljust(line_width/2) + array[6].rjust(line_width/1.45))

