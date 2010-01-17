#lang scheme
(require (planet schematics/schemeunit:3)
         (planet schematics/schemeunit:3/text-ui)
         "string-calculator.ss")



(check-equal? (str-calc "") 0 "Should return 0")
(check-equal? (str-calc "1") 1 "Should return 1")
(check-equal? (str-calc "1,2") 3 "Should sum items")
(check-equal? (str-calc "1,2,3") 6 "Should sum all items")
(check-equal? (str-calc "//*\n1*2") 3 "Should delimit on custom")
(check-equal? (str-calc "//~\n1~2~3~4~5") 15 "Should sum all items")
(check-equal? (str-calc "//~\n10~2~3~4~500") 519 "Should sum all items")