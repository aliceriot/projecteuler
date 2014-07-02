;; in order to solve this problem we can just reuse an algorithm which is
;; presented as part of SICP (an example in chapter 1)

(define (count-change amount)
  (cc amount 8))

(define (cc amount kinds-of-coins)
  (cond ((eq? amount 0) 1)
        ((or (< amount 0)(= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((eq? kinds-of-coins 1) 1)       
        ((eq? kinds-of-coins 2) 2)
        ((eq? kinds-of-coins 3) 5)
        ((eq? kinds-of-coins 4) 10)
        ((eq? kinds-of-coins 5) 20)
        ((eq? kinds-of-coins 6) 50)
        ((eq? kinds-of-coins 7) 100)
        ((eq? kinds-of-coins 8) 200)))


