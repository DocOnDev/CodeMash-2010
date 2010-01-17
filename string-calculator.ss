#lang scheme
(require "lib/str-split/str-split.ss"
         "delimiter-parse.ss")

;; String Calculator Kata

(define (str-calc input) 
  (cond ((list? input)
         (cond ((null? input) 0)
               (else (+ (string->number (car input))
                        (str-calc (cdr input))))))
        ((= (string-length input) 0) 0)
        (else (str-calc (str-split (remove-delim input) (get-delim input))))))

;; Expose these functions for testing
(provide str-calc)
