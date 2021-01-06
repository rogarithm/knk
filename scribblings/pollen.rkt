#lang racket/base

(define wishlist '(bold uncertain itemlist item form role))

;----------------------------------------------------------
; abbreviations for words

(define const constant)
(define exp expression)
(define op operator)
(define var variable)
(define val value)
(define st statement)
(define conv-spec "conversion specification")


;----------------------------------------------------------
; tag functions

(define (title . elems)
  `('h1 ,@elems))

(define (section . elems)
  `('h2 ,@elems))

(define (code . elems)
  `(span [[class "code"]] ,@elems))

(define (codeblock . elems)
  `(pre [[class "code"]] ,@elems))


;----------------------------------------------------------


(define (quick-table . tx-elements)
  (define rows-of-text-cells
    (let ([text-rows (filter-not whitespace? tx-elements)])
      (for/list ([text-row (in-list text-rows)])
        (for/list ([text-cell (in-list (string-split text-row "|"))])
          (string-trim text-cell)))))

  (match-define (list tr-tag td-tag th-tag) (map default-tag-function '(tr td th)))

  (define html-rows
    (match-let ([(cons header-row other-rows) rows-of-text-cells])
      (cons (map th-tag header-row)
            (for/list ([row (in-list other-rows)])
              (map td-tag row)))))

  (cons 'table (for/list ([html-row (in-list html-rows)])
                 (apply tr-tag html-row))))


(define (format-as-filename target)
  (define nonbreaking-space (string #\u00A0))
  (let* ([x target]
         [x (string-trim x "?")]
         [x (string-downcase x)]
         [x (regexp-replace* #rx"é" x "e")]
         [x (string-replace x nonbreaking-space "-")]
         [x (string-replace x " " "-")])
    (format "~a.html" x)))


(define (target->url target)
  (define actual-filenames
    (map path->string (remove-duplicates (map ->output-path (directory-list (string->path "."))))))
  (define target-variants (let* ([plural-regex #rx"s$"]
                                 [singular-target (regexp-replace plural-regex target "")]
                                 [plural-target (string-append singular-target "s")])
                            (list singular-target plural-target)))
  (or (for*/first ([tfn (in-list (map format-as-filename target-variants))]
                   [afn (in-list actual-filenames)]
                   #:when (equal? tfn afn))
        tfn)
      "#"))


(define xref (lambda (target) (xref (target->url target) target)))