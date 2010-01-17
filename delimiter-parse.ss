#lang scheme
(require "lib/str-split/str-split.ss")

(define (remove-delim input)
  (cadr (split-delim input)))

(define (get-delim input)
  (car (string->list( car (split-delim input)))))

(define (split-delim input)
  (cond ((and (> (string-length input) 2)(string=? (substring input 0 2) "//"))
         (regexp-split #rx"\n" (substring input 2)))
        (else (cons "," (list input)))))

(provide remove-delim
         get-delim)
