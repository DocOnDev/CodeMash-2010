#lang scheme
(require (planet schematics/schemeunit:3)
         (planet schematics/schemeunit:3/text-ui)
         "delimiter-parse.ss")


(check-equal? (get-delim  "1") #\, "Should return default delimiter")
(check-equal? (remove-delim "2,1") "2,1" "Should return string")
(check-equal? (get-delim  "//*\n2*1") #\* "Should return delimiter")
(check-equal? (remove-delim "//*\n2*1") "2*1" "Should remove delimiter")
