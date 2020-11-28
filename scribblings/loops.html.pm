#lang pollen

◊title{loops}


◊section
◊em{Loops are the same with iteration statements. That is, loop is a kind of a statement.}. loop (or iteration) is a statement that iterates executing a loop body (which is also statement). Whether iterate more is determined by evaluating controlling expression. C's three loops have different timing when to test controlling expression.

◊statement{for loop} has a ◊operator{comma operator}. 


◊section{the ◊statement{while} statement}

while ( ◊role[controlling expression]{expression} ) ◊role[loop body]{statement}

controlling exp.를 연산한 val.가 true인지 확인 후 맞으면 loop body 실행

loop body에 statement 여러 개를 쓰려면 statements의 처음과 끝을 중괄호로 감싸준다.

while statement는 loop body 실행 전에 controlling expression을 test하기 때문에 while loop가 한 번도 돌지 않을 수도 있다.

◊bold{Infinite Loops}

while(1)으로 infinite loop를 만들면 그 안에서 loop를 빠져나갈 statement 또는 program을 종료할 function을 부르는 등 loop를 끝낼 방도를 마련해야 한다.


◊section{the ◊statement{do} statement}

do statement while ( expression ) ;

statement가 하나일 때도 brace를 붙이는 게 do statement 구조 파악에 도움된다.


◊section{the ◊statement{for} statement}

for ( ◊role[initializer]{expr1} ; ◊role[termination condition]{expr2} ; ◊role[iteration operation]{expr3} ) statement

◊bold{◊statement{for} statement idioms}

== 를 쓰면 (i == n) 값 하나에 대해서만 체크한다. 카운터는 보통 일정 값에 도달할 때까지의 값을 모두 사용하기 때문에 == 는 적절한 사용이 아니다.

◊bold{Ommiting expressions in a ◊statement{for} statement}

for statement의 exp 세 개는 어떤 조합으로든 생략 가능하지만 그 사이 ;는 생략할 수 없다.

exp를 생략할 경우 ◊statement{for}가 정상적으로 끝날 수 있도록 조치를 해줘야 한다.

◊bold{◊statement{for} statements in C99}

C99에서 for statement의 exp에 declaration을 넣을 수 있다. 이 declaration의 scope는 해당 for statement 안에서만 유효하다. ◊statement{for} 안에서 선언한 변수를 밖에서도 써야한다면 이 방법을 쓰면 안된다.

◊bold{The ◊operator{comma} operator}

◊statement{for} 안에서 여러 exp.를 초기화시키거나 여러 var.을 매 반복마다 증가시키고 싶을 경우 ◊operator{comma}를 쓴다.

expr1 , expr2

expr1을 연산하고 거기서 나온 값을 버린다. 그 다음 expr2를 연산하고 거기서 나온 값을 전체 expr의 값으로 한다. expr1은 side effect가 없으면 넣은 의미가 없다.


◊section{exiting from a loop}

loop 중간에서 빠져나와야 하거나 빠져나올 수 있는 지점이 두 개 이상 필요할 경우

◊bold{the ◊statement{break} statement}

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

◊bold{the ◊statement{continue} statement}

◊bold{the ◊statement{goto} statement}

break, continue statement는 정해진 지점으로만 이동할 수 있다. 반면 goto는 label을 기준으로 statement 안 어느 곳으로든 이동할 수 있다.
