;; collatz stuff!

(define collatz
  (lambda (n)
    (cond
      ((eq? n 1) 1)
      ((even? n)
       (+ 1 (collatz (/ n 2))))
      ((odd? n)(+ 1 (collatz (add1 (* n 3))))))))


(define biggest
  (lambda (n m)
    (cond
      ((eq? n 1) m)
      ((> (collatz n)(collatz m))
       (biggest (sub1 n) n))
      (else
        (biggest (sub1 n) m)))))

;; read the damn question
;; it works! but it's damn slow...
