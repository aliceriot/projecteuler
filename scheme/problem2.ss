; here we want to find the sum of all of the even numbers in the fibonacci sequence which are less than 4000000
; first we'll write a function to generate a proper list of all of our fibonacci numbers <4000000

(define fibo
  (lambda (n m) ; should always be started with n=1 and m=2
    (cond
      ((> n 4000000)(quote()))
      (else
        (cons n (fibo m (+ n m)))))))


; now we need to write a small list-filtering function which will give us only the even ones

(define evens
  (lambda (lat)
    (cond
      ((null? lat)(quote()))
      ((eq? (modulo (car lat) 2) 0)
       (cons (car lat)(evens (cdr lat))))
      (else
        (evens (cdr lat))))))

; now we need a little function to sum up a list! we'll re-use sumit from problem1
(define sumit
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else
        (+ (car lat)(sumit (cdr lat)))))))

; nice! so now we just load this file in chez scheme and then do:
;; ;; (sumit (evens (fibo 1 2))) 
; at the interpreter
