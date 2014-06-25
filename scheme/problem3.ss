; here we have to find the largest prime factor for a big number

; first a function to find factors in general
(define factors
  (lambda (n m p) ; n is number to factor, m is a number to start a (usually 1), p is a placeholder (used when recurring)
    (cond
      ((eq? m 1)
       (factors n 2 (sqrt n)))
      ((eq? (modulo n m) 0) ; if n module m is 0, then m is a factor of n!
       (cons m (factors n (add1 m) p))) ; so we cons m onto the natural recursion
      (else
        (factors n (add1 m) p))))) ; if m is not a factor we recur

; I don't think this factoring function is very good - it doesn't scale well (factoring only 1300000 takes a
; large amount of time)
; Going to try to write an implementation of a different algorithm!
; Just had an idea: why don't we start at the top, rather than the bottom? If we're only interested in the largest
; prime factor, why, we needn't find the rest!

; (define largeprime
;   (lambda (n m)
;     (cond
;       ((eq? n m)
;        (largeprime n (sub1 m)))
;       ((

; we need sumit again
(define sumit
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else
        (+ (car lat)(sumit (cdr lat)))))))

; now we write a little function to operate on a lat and exclude non-prime numbers
(define onlyprimes
  (lambda (lat)
    (cond
      ((null? lat)(quote()))
      ((null? (factors (car lat) 1)) ; when a number is prime factors returns ()
       (cons (car lat)(onlyprimes (cdr lat)))) ; when a number is prime we cons it onto the growing list
      (else
        (onlyprimes (cdr lat)))))) ; not prime we drop it off the growing list
    
; sweet! now we just need a little list sorting function to find the biggest one
; or actually no, factors always outputs a list in order from smallest to largest factor,
; we just need to get the last entry
(define last ; note undefined for '()
  (lambda (lat)
    (cond
      ((null? (cdr lat)) ; if cdr lat is null we have a list like '(x)
       (car lat)) ;and in this case we'd like to return the car of lat (only remaining entry)
      (else
        (last (cdr lat))))))

; now to get the solution we just do (last (onlyprimes (factors 600851475143)))

; I think my approach was flawed here - what I need to do instead is find all the prime numbers less than our number of choice,
; and then check to see if they are factors of our number

; so first we write a function based on having a good test of primality

(define findprimes
  (lambda (n)
    (cond
      ((zero? n) ())
      ((isprime? n)
       (cons n (findprimes (sub1 n))))
      (else
        (findprimes (sub1 n))))))

; and now we try to write a good test of primality

(define isprime?
  (lambda (n)
    (cond
      ((< n 2)( #f))
      (or(eq? n 2)(eq? n 3) #t)
      (or(eq? (modulo n 2) 0)(eq? (modulo n 3) 0) #f)
      ((sqrttest n (sqrt n) 5) #t)
      (else #f))))
    
; we need this sqrttest helper function
(define sqrttest
  (lambda (n s m) ; n is number to test, s is the square of that number, m is iterator in recursion
    (cond
      ((


;;;;;;;starting over;;;;;;;;;;;;;;;;;;;
; 
; question is asking us to find largest prime factor
; example is 13195, should spit out 5,7,13,29




















