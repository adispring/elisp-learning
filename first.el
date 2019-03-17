(string-match
 "js\\(x\\)?$" "The quick brown fox jumped quickly.jsx")

(set (intern "abc" foo) "I'm abc")

(intern-soft "abc" foo)

(symbolp '+1)
nil

(symbolp '\+1)
t

(setq foo (make-vector 10 0))
[0 0 0 0 0 0 0 0 0 0]
(intern-soft "abc" foo)
nil
(intern "abc" foo)
abc
(intern-soft "abc" foo)
abc

(unintern "abc" foo)
t
(intern-soft "abc" foo)
nil







