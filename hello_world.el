(message "hello world")

;; define function
(defun hello-world (name)
  "Say Hello to user whose name is NAME." ;; document string
  (message "Hello %s" name) ;; body
  )

(hello-world "adi")

;; setq to variable
(setq foo "I'm foo")

(hello-world foo)

;; defvar
(defvar foo "Did I have a value"
  "A demo variable")

foo

(defvar bar "I'm bar"
  "A demo variable named \"bar\"") ;; document string

;; Ctrl + h v to see variable document
bar

;; 定义的函数和变量默认为全局的
(defun circle-area (radix)
  (let ((pi 3.14)
        area)
    (setq area (* pi radix radix))
    (message "circle with radix: %.2f, and area is %.2f" radix area)))

(circle-area 5)

;; let vs let* , let* 可以使用之前定义的变量
(defun circle-area2(radix)
  (let* ((pi 3.14)
         (area (* pi radix radix)))
    (message "circle with radix: %.2f, and area is %.2f" radix area)))

(circle-area2 2)

;; lambda calculus

(funcall (lambda (name)
           (message "Hello %s" name)) "Emacser")

(setq foo (lambda (name)
                   (message "hello %s" name)))

(funcall foo "World")

(defvar atom-test 'haha
  "Test atom")

atom-test

bar


