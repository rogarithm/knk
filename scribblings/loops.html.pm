#lang pollen

◊(define st statement)
◊(define op operator)

◊title{loops}


◊section
◊em{Loops are the same with iteration statements. That is, loop belongs to a statement.}. loop (or iteration) is a statement that iterates executing a loop body (which is also statement). Whether executing the loop body is determined by evaluating controlling expression. C's three loops have different timing to test controlling expression.

◊|st|{for loop} has a ◊|op|{comma operator}. 


◊section{the ◊|st|{while} statement}

◊form{
while ( ◊role[controlling expression]{expression} ) ◊role[loop body]{statement}
}

controlling exp.을 연산한 val.가 true인지 확인 후 맞으면 loop body 실행

loop body에 statement 여러 개를 쓰려면 statements의 처음과 끝을 중괄호로 감싸준다:

◊codeblock{
while (i != num)
{
		exp1
		exp2
		exp3
		...
}
}

while statement는 loop body 실행 전에 controlling expression을 test하기 때문에 while loop가 한 번도 돌지 않을 수도 있다.

◊bold{Infinite Loops}

while(1)으로 infinite loop를 만들면 loop를 끝낼 방도를 마련해야 한다. 예를 들면 그 안에서 loop를 빠져나갈 statement 또는 program을 종료할 function을 부르는 방법 등이 있다. 


◊section{the ◊|st|{do} statement}

◊form{
do statement while ( expression ) ;
}

statement가 하나일 때도 statement 시작과 끝에 brace를 붙이는 게 do statement 구조 파악에 도움이 된다.


◊section{the ◊|st|{for} statement}

◊form{
for ( ◊role[initializer]{expr1} ; ◊role[termination condition]{expr2} ; ◊role[iteration operation]{expr3} ) statement
}

for statement는 while statement와 바꿔 쓸 수 있다:

◊form{
◊role[initializer]{expr1};
while ( ◊role[termination condition]{expr2} )
{
  statement
  ◊role[iteration operation]{expr3};
}
}
◊bold{◊|st|{for} statement idioms}

== 를 쓰면 (i == n) 값 하나에 대해서만 체크한다. 카운터는 보통 일정 값에 도달할 때까지의 중간값을 모두 사용하기 때문에 == 는 적절한 사용이 아니다.

◊bold{Ommiting expressions in a ◊|st|{for} statement}

for statement의 exp 세 개는 어떤 조합으로든 생략 가능하지만 그 사이 ;는 생략할 수 없다.

어떤 exp던지 생략했다면 ◊|st|{for}가 정상적으로 끝날 수 있도록 살펴보고 조치를 취해줘야 한다.

◊bold{◊|st|{for} statements in C99}

C99에서 for statement의 exp에 declaration을 넣을 수 있다. 이 declaration의 scope는 해당 for statement 안에서만 유효하다. ◊|st|{for} 안에서 선언한 변수를 밖에서도 써야한다면 이 방법을 쓰면 안된다.

◊bold{The ◊|op|{comma} operator}

◊|st|{for} 안에서 여러 exp.를 초기화시키거나 여러 var.을 매 반복마다 증가시키고 싶을 경우 ◊|op|{comma}를 쓴다.

◊form{
expr1 , expr2
}

expr1을 연산하고 거기서 나온 값을 버린다. 그 다음 expr2를 연산하고 거기서 나온 값을 전체 expr의 값으로 한다. expr1은 side effect가 없으면 넣은 의미가 없다.


◊section{exiting from a loop}

loop 중간에서 빠져나와야 하거나 빠져나올 수 있는 지점이 두 개 이상 필요할 경우 쓰는 statement.

◊bold{the ◊|st|{break} statement}

◊codeblock{
while (...) {
  switch (...) {
    ...
		break;
		...
  }
}
}
break statement는 자신을 감싸는 statement 밖으로 나간다. 그래서 이렇게 중첩되어 있을 때 break가 실행되면 switch statement만 빠져나가고 while statement 안에 있게 된다.

◊bold{the ◊|st|{continue} statement}

◊bold{the ◊|st|{goto} statement}

break, continue statement는 정해진 지점으로만 이동할 수 있다. 반면 goto는 label을 기준으로 statement 안 어느 곳으로든 이동할 수 있다.