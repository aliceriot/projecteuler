;; want to find the smallest number which is evenly divisible by all numbers 1-20
;; I think this is way easier in python....

; this tests if a given number (n) is evenly divisible by all the numbers up to another given number (p)
(define numtest
  (lambda (n p)
    (cond
      ((eq? p 1) #t)
      ((eq? (modulo n p) 0)
       (numtest n (sub1 p)))
      (else #f))))

; this test goes through the numbers until it finds one which is evenly divisible

(define numfind
  (lambda (n p)
    (cond
      ((numtest n p) n)
      (else
        (numfind (add1 n) p)))))

;; eet werk! I think I make it work in python too (just for funs)
