;; stuff we already had for getting the factors or something
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

(define sum
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else
        (+ (car lat)(sum (cdr lat)))))))

;;abundant?
(define abundant?
  (lambda (n)
    (cond
      ((< n (sum (factors n))) #t)
      (else #f))))
