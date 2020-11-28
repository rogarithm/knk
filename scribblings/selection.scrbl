#lang scribble/manual

@(define kw keyword)

@title{selection statements}

return statement, expression statement 이외 statement는 다음 세 가지로 나뉜다:

@itemlist[
		@item{selection statements. @kw{if}, @kw{switch} statements로 여러 조건 중 하나를 골라 실행할 수 있다.}
		@item{iteration statements. @kw{while}, @kw{do}, 그리고 @kw{for}로 여러 번 반복할 수 있다.}
		@item{jump statements. @kw{break}, @kw{continue}, 그리고 @kw{goto}로 조건에 구애받지 않고 프로그램 안 어느 지점으로 건너뛸 수 있다. (@kw{return} statement도 여기 속한다.)}
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


@section{the @kw{if} statement}

@kw{if} statement는 프로그램이 expression value를 확인해서 두 선택지 중 하나를 고를 수 있도록 해준다. @code{if ( expression ) statement}

@bold{Compound Statements}

고른 선택지에 여러 개의 statement를 놓으려면 compound statements를 쓴다.

@code{{ statements }}

statements 맨 처음과 끝에 중괄호를 붙이면 여러 statement를 하나의 statement로 여기게 할 수 있다.

@codeblock{
{
		line_num = 0;
		page_num++;
}
}

중괄호 안 statement 뒤에는 ;이 붙지만, 중괄호 뒤에는 ;이 붙지 않는다.

@bold{The @kw{else} Clause}

@kw{if} statement 뒤에 @kw{else} statement를 덧붙일 수 있다. @kw{if} statement의 expression 연산값이 0일 경우 @kw{else} 뒤 statement를 연산한다.

@bold{Cascaded @kw{if} Statements}

@codeblock{
if (n < 0)
		printf("blah blah\n");
else
		if (n == 0)
				printf("clah clah\n");
		else
				printf("dlah dlah\n");
}

이렇게 쓸 수도 있지만, 보통은 다음과 같이 쓴다:


@codeblock{
if (n < 0)
		printf("blah blah\n");
else if (n == 0)
		printf("clah clah\n");
else
		printf("dlah dlah\n");
}

@bold{The "Dangling @kw{else}" Problem}

따로 구분되어 있지 않을 경우, @kw{else}는 @kw{else}와 짝지어지지 않은 중 가장 가까운 @kw{if}에 대한 @kw{else}다. 본래 의도가 아니라면 중괄호를 사용해서 실행 순서를 바꿔주면 된다. 처음부터 중괄호를 적어줬다면 이런 고민할 필요도 없었겠지만.

이렇게 적어놓으면 마치 바깥 @kw{if}에 @kw{else}가 연관있는 것처럼 보이겠지만,
@codeblock{
if (y != 0)
		if (x != 0)
				result = x / y;
else
		printf("Error: y is equal to 0\n");
}

사실은 이렇게 연산된다.
@codeblock{
if (y != 0)
		if (x != 0)
				result = x / y;
		else
				printf("Error: y is equal to 0\n");
}

애초에 중괄호로 정확히 써놓는 게 낫다.
@codeblock{
if (y != 0)
{
		if (x != 0)
		result = x / y;
}
else
		printf("Error: y is equal to 0\n");
}

@bold{Conditional Expressions}

@kw{if} statement의 기능을 하는 operator. 

@code{expr1 ? expr2 : expr3}

"if expr1 then expr2 else expr3." expr1을 연산해서 0이 아니면 expr2를 연산한 결과 값이 이 conditional expression 전체의 값이고, expr1을 연산해서 0이면 expr3을 연산한 결과 값이 전체의 값이다.

conditional expression을 쓰면 프로그램이 짧아지지만, 그만큼 이해하기 어려워진다. 따라서 쓰지 않는 것을 추천하지만 많이 쓰는 곳이 있다.

@codeblock{
if (i > j)
		return i;
else
		return j;
}

위 코드는 이렇게도 쓸 수 있다.

@codeblock{
return i > j ? i : j;
}

return statement 뿐 아니라 printf를 쓸 때도 이런 식으로 쓸 수 있다.

@bold{Boolean Values in C89}

C89에는 boolean type이 없다. 필요할 경우 따로 만들어서 써야한다. 그 중 하나는 int variable 하나를 정의해서 여기에 0이나 1을 할당하는 것이다. 이렇게 하면 돌아가긴 하지만 이 variable이 boolean value만 가질 수 있는지, 0과 1이 거짓과 참을 말하는 건지 명확하지 않다.

좀 더 명확한 방법으로, TRUE, FALSE라는 이름의 매크로를 정의하는 방법이 있다. 프로그램 최상단에 참값과 거짓값을 해당 이름에 저장해두고 프로그램 안에서 값 대신 이름으로 쓰는 것이다. 

@codeblock{
#define TRUE 1
#define FALSE 0

flag = FALSE;
...
flag = TRUE;
}

@bold{Boolean Values in C99}

C99에서는 boolean type을 가지고 있다. _Bool로 쓰는데, 이 type의 type은 unsigned int다. 그러니까 _Bool type은 이름만 바꾼 int type에 지나지 않는다. 하지만 _Bool type에는 0과 1만 할당할 수 있다.

이 외에 <stdbool.h> 헤더를 가지고 있다. _Bool 대신 bool을 써서 type을 정의할 수 있고, 위에서 매크로로 정의한 TRUE, FALSE를 true, false로 쓸 수 있다.

@section{the @kw{switch} statement}

Cascaded @kw{if} 대신 쓸 수 있는 statement. 읽기 더 쉽다.

@codeblock{
switch (expression)
{
		case constant-expression : statements
		...
		case constant-expression : statements
		default : statements
}
}

switch statement의 구성품을 살펴보자.

@item{@bold{Controlling expression}. @kw{switch} 다음 괄호 안에 오는 integer expression을 이렇게 부른다. C에선 char type을 int로 보기 때문에 여기에 쓸 수 있다. 하지만 floating-point number나 string은 쓸 수 없다.}
@item{@bold{Case labels}. constant expression을 말한다. 이 자리엔 variable이나 function call을 쓸 수 없다. constant나 constant 여러 개(만을) 쓴 expression만 쓸 수 있다. 연산한 결과가 int (또는 char)이어야 한다.}
@item{@bold{Statements}. case label 뒤엔 statement(s)를 쓸 수 있다. 중괄호 없이 여러 statement를 써도 되는 몇 안되는 경우고, 보통 맨 뒤 statement는 break를 쓴다.}

모든 case에 대해 statement를 적어야 할 필요도 없고, 모든 마지막 statement가 break일 필요도 없다. 다만, 그 영향에 대해서는 알고 있어야 한다.

@item{case 여럿이 같은 statement를 공유해도 괜찮다면, 그 중 마지막 case에만 statement를 써도 괜찮다.

@codeblock{
switch (g) {
		case 4:
		case 3:
		case 2:
		case 1: printf("don't filter me");
						break;
		default: printf("me, too.");
						 break;
}}
}

@bold{The Role of the @kw{break} Statement}

@kw{break}를 만나면 @kw{switch} statement를 빠져나가고 다음 statement를 실행한다. 프로그램은 controlling expression과 case label을 비교해서 맞는 case가 있는지 확인해서 있다면 그 case 뒤 statement를 연산한다. 만약에 모든 case 뒤 statement에 @kw{break}가 없으면 앞에서 말한 '맞는 case' 뒤 statement부터 시작해서 끝 case의 statement까지 쭉 연산한다. 의도적으로 쓸 필요가 있다면, 주석을 달아주는 것이 좋다.
