; problem is to find all the numbers less than 1000 which are multiples of either 3 or 5, and then we're
; going to find the sum of those. wooo! implementing this in scheme for scheme practice

; first function: this returns a proper list of all of the multiples of 3 or 5 that are less than or equal
; to a number n
(define getmultiples
  (lambda (n)
    (cond
      ((eq? n 0)(quote()))
      ((eq? (modulo n 3) 0)
       (cons n (getmultiples (- n 1))))
      ((eq? (modulo n 5) 0)
       (cons n (getmultiples (- n 1))))
      (else
        (getmultiples (- n 1))))))
; with recursion, wooo!

; now we need to write a function which sums up the list we build above

(define sumit
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else
        (+ (car lat)(sumit (cdr lat)))))))

; then to get the answer we just call

(sumit (getmultiples 999))
