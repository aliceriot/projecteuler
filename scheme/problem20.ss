;; I easily implemented something to do this problem in python, lets try in scheme!
;; we want to write a function which sums all of the digits in the factorial of a number

(define factorial
  (lambda (n)
    (cond
      ((eq? n 1) 1)
      (else
        (* n (factorial (sub1 n)))))))


;; this returns a function which gets the value at a place x
(define get_em
  (lambda (x)
    (lambda (n)
      (cond
        ((eq? (modulo n (* 10 x)) 0) 0)
        (else
          (add1 ((get_em x)(- n x))))))))

;; this applies get_em until the number is gone!

(define get_em_all
  (lambda (num i)
    (cond
      ((eq? num 0) 0)
      (else
        (+ ((get_em i) num)(get_em_all (- num (* i ((get_em i) num)))(* i 10)))))))


;; I'm actually amazed I made this work! woo!
;; go me!

;; yesterday I wrote a solution to this in python and didn't think I could do it in scheme
;; read a little more schemer, and implemented this! although I think everything used I knew
;; before today
