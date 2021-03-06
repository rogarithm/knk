#lang pollen


◊title{formatted input/output}

About scanf, printf function for formatted reading and writing, respectively.

◊section{The printf function}

Prints string and/or values. Values can be constants, variables, or more complicated ◊|expr|s, and there's no restriction on the number.

◊form{
  printf ( string, ◊|expr|1, ◊|expr|2, ... );
}

문자열 안에서 value로 넣는 값은 ◊|conv-spec|s로 표시하고, 그 외 일반 문자는 그대로 집어넣는다. ◊|conv-spec|은 %로 시작한다. % 뒤에 나오는 문자가 어떤 타입의 값이 그 자리에 올지를 나타낸다. 출력할 때 이 문자들은 각각이 가리키는 값으로 바뀌어 출력된다.

◊codeblock{
  int i;
	float x;

	i = 10;
	x = 7.2;

	printf("the value of i is %d. whereas the value of x is %f.", i, x);
}

int type 값은 %d, float type 값은 %f를 각각 ◊|conv-spec|으로 쓴다. ◊check-this{또 ◊uc{문자열 뒤에 나오는 ◊|expr|}은 다른 문자를 붙이지 않고 그 이름 그대로를 쓴다}.

◊bold{Conversion Specifications}

◊|conv-spec|s는 우리가 출력값을 일정한 기준을 갖고 바꿔서 출력할 수 있도록 해준다. 예를 들어 %.1f는 float 값을 보여줄 때 소수점 뒤 부분은 첫번째 자리만 보이도록 한다. 

◊|conv-spec| can be either %m.pX or %-m.pX.

m, p are ◊uc{integer constant}, X is a ◊uc{letter}.

◊check-this{m과 p 모두 필수가 아니다. p를 쓰지 않으면, p 바로 앞의 .도 쓰지 않는다.}

m (또는 minimum field width)은 출력할 최소한의 문자 갯수를 정한다. 출력할 숫자가 m보다 작다면 숫자를 오른쪽 정렬한다. 출력할 숫자가 m보다 크다면 숫자를 출력할 때 일부가 잘리지 않도록 출력을 위한 메모리를 자동으로 숫자 크기만큼 맞춰준다. m 앞에 -를 붙이면 숫자를 왼쪽으로 붙여 정렬한다.

◊code{.} 뒤에 나오는 p(precision)은 X(◊|conv-spec|)에 따라 뜻이 달라진다:

◊list{
◊item{d는 정수를 10진법으로 나타낸다. 이때 p는 출력할 최소한의 문자 갯수다. p가 출력할 숫자 자릿수보다 크면 앞을 0으로 채우고, p가 없으면 1로 생각한다.}

◊item{e는 floating-point 수를 지수 형식으로 나타낸다. 이때 p는 소수점 뒤에 나올 숫자 갯수다. 기본값은 6이고, 0일 경우 소수점은 출력 안된다.}

◊item{f는 floating-point 수를 "fixed-decimal" 형식으로 나타낸다. 그외는 e와 같다.}

◊item{g는 floating-point 수를 지수나 고정 소수점 형식으로 나타낸다. 그리고 (컴파일러 기준) 적당한 곳에서 어떤 형식으로 출력할지를 정한다. p는 출력할 ◊uc{유효 숫자}의 최대 갯수다. f와는 달리 0으로 메꾸는 건 하지 않고, 소수점 뒤 숫자가 없을 경우 소수점을 표시하지 않는다.}
}


◊bold{Escape Sequences}

format string 안에서 \ 로 시작하는 문자는 보통이라면 컴파일러가 에러로 인식할 것들을 할 수 있게 해준다. nonprinting (control) 문자를 쓸 수 있는 것도 한 가지 예다. \n 은 format string 안에서 문자 그대로의 뜻이 아니다. \ 뒤에 문자를 쓰는 순간 다음 줄로 커서를 옮기는 기능을 한다. "는 format string의 시작과 끝에 쓰이기 때문에, 그대로 문자열 중간에 넣으면 컴파일러는 "가 쓰인 자리를 그 문자열의 끝으로 잘못 받아들인다. \" 로 쓰면 문자열 안에서도 "를 쓸 수 있다. 마찬가지로 \\도 \를 문자열 안에서 쓸 수 있게 해준다.

◊section{the scanf function}

정해진 형식에 맞춰 입력을 읽어들인다. printf 함수와 마찬가지로 보통 문자와 ◊|conv-spec|s 둘 다 받을 수 있다. ◊|conv-spec|으로 정한 위치에 값을 넣는 건 printf와 같은 방식이다.

◊codeblock{
  int i;
	float x;

	scanf("%d%f", &i, &x);
}

scanf 함수에서 format string은 ◊|conv-spec|만 쓰는 경우가 대부분이다. ◊|conv-spec|끼리 서로 붙여서 쓰더라도 사용자가 입력할 때 값 사이에 주는 공간 크기와 관계 없이 각 값을 입력받기 때문이다. 오히려 일반 문자를 쓰면 사용자가 입력할 때 그 형식을 그대로 지켜서 매번 입력해야 하기 때문에 ◊|conv-spec|만 쓰는 게 낫다.

◊|conv-spec| 갯수와 입력 variable 갯수를 맞춰줘야 한다. 또한 scanf 함수를 쓸 때 ◊|expr|은 앞에 &를 써줘야 한다. 안그러면 알 수 없는 값이 들어가버린다.

scanf가 데이터를 읽는 방식은 그렇게 좋은 방식이 아니다. C 프로그래머 다수는 char type으로 데이터를 읽어서 나중에 numeric 형식으로 바꾼다. 이 책은 앞부분에서 scanf를 써서 데이터를 읽는데, 단순하기 때문이다. 나중엔 다른 방법을 쓴다.

◊bold{How scanf works}

scanf는 일종의 pattern matching 함수로 볼 수 있다. 입력된 데이터를 ◊|conv-spec|에 맞춰 덩어리짓는 함수 말이다. 입력된 문자를 하나하나 읽으면서 그 순서에 나오기로 정해진 type에 나올 수 없는 문자가 나오면 멈추고 그때까지의 문자를 덩어리지어 variable에 넣는다. 그리고 모든 variable이 다 값을 가질 때까지 반복한다. 숫자 첫 자리 전까지 나오는 white space char는 무시한다. 다시 말해 데이터를 입력할 때 각 데이터 덩어리를 (숫자를) 어떻게 구분하든지 상관없다는 것이다.

◊bold{Ordinary characters in format strings}

◊bold{Confusing printf with scanf}

printf의 입력에는 &가 없다. &를 붙일 경우 이상한 숫자가 나올테니 쉽게 알 수 있다.
scanf는 white-space char를 무시하기 때문에 ◊|conv-spec|만 넣으면 충분하다. 그 이외의 문자를 넣으면 그 문자와 일치하는 입력이 없을 경우 프로그램이 예상치 못하게 종료하기 때문에 주의해야 한다.
