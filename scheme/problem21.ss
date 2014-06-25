;; first need a function to find the even divisors

(define factors-b
  (lambda (half num test)
    (cond
      ((eq? half test)(quote()))
      ((eq? (modulo num test) 0)
       (cons test (factors-b half num (add1 test))))
      (else
        (factors-b half num (add1 test))))))

(define factors
  (lambda (n)
    (cond
      ((odd? n)
       (factors-b (/ (+ n 1) 2) n 1))
      (else
        (factors-b (add1 (/ n 2)) n 1)))))

;;now we can reliably get the factors for something

(define sum
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else
        (+ (car lat)(sum (cdr lat)))))))

(define d
  (lambda (n)
    (sum (factors n))))

(define amicable?
  (lambda (n)
    (cond
      ((eq? (d n) n) #f)
      ((eq? (d (d n)) n) #t)
      (else #f))))

(define amicablenums
  (lambda (n)
    (cond
      ((eq? n 1)(quote()))
      ((amicable? n)
       (cons n (amicablenums (sub1 n))))
      (else
        (amicablenums (sub1 n))))))

;; then we just do
(sum (amicablenums 10000))

;; it works!
