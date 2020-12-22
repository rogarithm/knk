#lang racket/base

◊(define const constant)
◊(define exp expression)
◊(define op operator)
◊(define var variable)
◊(define val value)
◊(define st statement)
◊(define conv-spec "conversion specification")

◊(define (quick-table . tx-elements)
				 ◊(define rows-of-text-cells
									(let ([text-rows (filter-not whitespace? tx-elements)])
										(for/list ([text-row (in-list text-rows)])
											(for/list ([text-cell (in-list (string-split text-row "|"))])
												(string-trim text-cell)))))

				 (match-define (list tr-tag td-tag th-tag) (map default-tag-function '(tr td th)))

				 ◊(define html-rows
									(match-let ([(cons header-row other-rows) rows-of-text-cells])
										(cons (map th-tag header-row)
													(for/list ([row (in-list other-rows)])
														(map td-tag row)))))

				 (cons 'table (for/list ([html-row (in-list html-rows)])
												(apply tr-tag html-row))))

◊(wishlist
		 '(title section bold code codeblock uncertain 
		   itemlist item em form role))
