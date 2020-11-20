#lang scribble/manual

@(define k keyword)

@title{selection statements}

return statement, expression statement 이외 statement는 다음 세 가지로 나뉜다:

@itemlist[
		@item{selection statements. @keyword{if}, @keyword{switch} statements로 여러 조건 중 하나를 골라 실행할 수 있다.}
		@item{iteration statements. @keyword{while}, @keyword{do}, 그리고 @keyword{for}로 여러 번 반복할 수 있다.}
		@item{jump statements. @keyword{break}, @keyword{continue}, 그리고 @keyword{goto}로 조건에 구애받지 않고 프로그램 안 어느 지점으로 건너뛸 수 있다. (@keyword{return} statement도 여기 속한다.)}
]

그 외 statement 여럿을 묶은 compound statement, 아무것도 하지 않는 null statement가 있다.

이 장에서 selection statements와 compound statement를 다룬다. if statment를 쓸 때 logical expression을 쓸 줄 알아야 하는데, relational operators, equality operators, logical operators를 부품 삼아서 logical expression을 어떻게 만드는지 설명할 것이다. 


@section{logical expressions}

if와 몇 가지 statement에선 expression이 내놓는 value가 참인지 거짓인지 확인해야만 한다. 다른 언어에서는 true, false를 갖는 boolean type을 쓰지만, C에서는 1로 true를, 0으로 false를 나타낸다.

@bold{Relational Operators}

수학에서 숫자 둘을 비교할 때 쓰는 (a가 b보다) 작다, 크다, 작거나 같다, 크거나 같다 에서의 뜻 그대로다. 단 결과값이 1과 0 둘 중 하나다. 두 숫자의 관계가 쓰여진 대로면 1 (true), 그렇지 않으면 0 (false).

arithemetic operators보다 우선도가 낮고, 이 operator가 여러 개 모여있을 경우 왼쪽 모임부터 연산한다.

@bold{Equality Operators}

둘이 같은지, 같지 않은지를 확인한다. operator대로의 관계면 1, 그렇지 않으면 0. relational operator와 같이 이 operator가 여러 개 모여있을 경우 왼쪽 모임부터 연산한다. 하지만 이 operator는 relational operators보다 우선도가 낮다. rel op와 eq op가 같이 있으면 rel op 먼저 연산한 뒤에 eq op를 연산한다는 말이다.

@bold{Logical Operators}

and, or, not의 기능을 하는 logical operators !, ||, &&. 0이나 1 둘 중 하나를 값으로 돌려준다. 이들 operator는 0이 아닌 operand를 참으로, 0인 operand를 거짓으로 받아들인다. ||와 && operator는 일종의 "short-circuit" 연산을 하는데, 앞의 operand에서 참이나 거짓을 알 수 있으면 뒤에 나오는 operand는 굳이 연산하지 않는다.

! operator는 unary plus and minus operator과 같은 우선도를 갖고, &&와 || operator는 relational and equality operator보다 낮은 우선도를 갖는다. 여러 개 모여있을 경우 ! operator는 오른쪽 모임부터, &&와 ||operator는 왼쪽 모임부터 계산한다.


@section{the @keyword{if} statement}

@k{if} statement는 프로그램이 expression value를 확인해서 두 선택지 중 하나를 고를 수 있도록 해준다. @code{if ( expression ) statement}


