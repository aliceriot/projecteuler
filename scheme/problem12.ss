;; first we want to write a function which gets a given triangular number

(define trianum
  (lambda (n)
    (cond
      ((eq? n 1) 1)
      (else
        (+ n (trianum (sub1 n)))))))

;; cool, that works and is basically identical to the factorial function

;; now we want to write a function to check for divisors

(define divisors
  (lambda (n) ;; n is number we're getting divisors for
    (lambda (m) ;; m is the divisor we're currently checking
      (cond
        ((eq? m 1) 1)
        (else
          (cond
            ((eq? (modulo n m) 0)
             (add1 ((divisors n)(sub1 m))))
            (else
              ((divisors n)(sub1 m)))))))))
                   

;; now we need a function to find out a value which gives 500 for divisors!

(define find-500
  (lambda (n)
    (let ([x (trianum n)])
      (cond
        ((eq? ((divisors x) x) 501) x)
        (else
          (find-500 (add1 n)))))))

;; not sure if this is a great way to do this 
;; in fact I just don't think it works
;; I'll come back to it later/do it in python
