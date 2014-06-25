;; code to find the sum square difference

;; first a little function to find the sum of the squares
(define sum-of-squares
  (lambda (n)
    (cond
      ((eq? n 0) 0)
      (else
        (+ (* n n)(sum-of-squares (sub1 n)))))))

;; we need a helper function to sum things up
(define sum
  (lambda (n)
    (cond
      ((eq? n 0) 0)
      (else
        (+ n (sum (sub1 n)))))))

;; now a function to find the square of the sum
(define square-of-sum
  (lambda (n)
    (* (sum n)(sum n))))


;; this seems to work!
;; now we write a function to do it all

(define sum-square-diff
  (lambda (n)
    (- (square-of-sum n)(sum-of-squares n))))

