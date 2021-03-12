#lang pollen

◊title{C Fundamentals}

이번 장에서 다루는 내용

◊itemlist[

		◊item{preprocessing directives, functions, variables, statements에 대해 다룬다. 이들은 간단한 프로그램을 짤 때도 필요하다.}

		◊item{Compile and link}

		◊item{Variables and constants. Variables store data that may change during the execution of a program while constants are data that won't change during program execution. Both can have a name.}

]

◊section{Writing a simple program}

프로그램을 기계가 돌릴 수 있게 하려면 다음 세 가지가 필요하다: preprocessing, compiling, linking.

◊item{preprocessing. 프로그램을 전처리기로 넘긴다. 전처리기는 #으로 시작하는 명령(directives)을 다루는데, 이런 명령을 써서 프로그램 모양을 바꾼다.}
◊item{compiling. 바뀐 프로그램을 컴파일러로 넘긴다. 여기서 프로그램을 object code라는, 기계에 지시하는 내용으로 번역한다. 여기까지 끝내도 아직 돌리지는 못한다.}
◊item{linking. 프로그램을 돌리기 위해 추가로 필요한 코드와 object code를 합친다. 추가 코드에는 라이브러리 함수도 포함된다.}

◊section{The general form of a simple program}

C 프로그램의 구성은 다음과 같다. directives와 statements는 프로그램을 짜는 사람이 뭘 쓸지 정할 수 있다. 반면 나머지 부분은 아니다. 나와있는 그대로 써야 한다.

◊codeblock{
directives 

int main(void)
{
	statements
}
}

◊bold{directives}

◊item{컴파일 전에 프로그램을 바꾸는 명령이다.}
◊item{#include <stdio.h> 도 directive다. 이 directive는 컴파일 전에 stdio.h라는 파일을 추가해준다. C는 대부분의 함수를 stdio.h 같이 어떤 주제에 관한 함수를 한 파일에 모아두고 필요할 때 불러다가 쓰는 방식을 가진다}
◊item{directive는 대부분 한 줄로 끝나기 때문에 뒤에 ;이 붙지 않는다. 반면 statement는 하나가 여러 줄인 경우도 잦기 때문에 한 줄이던 여러 줄이던 상관없이 '여기까지가 한 statement에요' 라고 표시해주기 위해서 ;를 붙인다.}

◊bold{functions}

◊item{statement 여럿을 모아 그 모임에 이름을 붙인 것이다.}
◊item{값을 계산하는 함수와 그렇지 않은 함수가 있다. 값을 계산하는 함수인 경우, 함수가 어떤 값을 돌려주는지 return statement를 써서 알려주어야 한다.}
◊item{C 프로그램을 돌릴 때 컴퓨터는 반드시 main 함수를 부르기 때문에 C 프로그램을 짤 때 main 함수를 꼭 넣어야 한다. main 함수의 return statement는 프로그램이 끝날 때의 상태를 내 컴퓨터의 운영체제에 말해준다. return statement는 프로그램이 끝났다는 걸 알리는 신호기도 하고, 프로그램이 무슨 값을 반환할지 표시하는 곳이기도 하다.}

◊bold{statements}

◊item{프로그램을 돌릴 때 실행할 명령이다.}
◊item{함수 호출(function call)도 statement다.}
◊item{statement 하나하나는 ;로 끝맺는다.}

◊bold{Printing strings}

printf function에서 \n는 문자열 중간에도 쓸 수 있고 여러 번 쓸 수도 있다. \n을 쓰지 않으면 줄이 띄어지지 않기 때문에 한 문장을 여러 개의 printf statement로 나눌 수도 있다.

◊section{Comments}

프로그램을 짠 사람은 자신이 만든 프로그램에 대해 설명해주어야 한다. 이름, 쓴 날짜, 만든 사람, 목적, 기타 등등. C에서 주석의 형태는 다음과 같다. 정해진 형식을 따라야만 하는 상황이 아니라면, 이중에 적당한 것을 쓰면 된다.

◊item{/* 로 시작하고 */로 끝나는 경우, 여러 줄에 걸쳐 주석을 쓸 수 있다.}
◊item{//을 앞에 붙이는 주석의 경우, 그 줄의 맨 끝에서 주석이 끝난다.}

◊section{variables and assignment}

Variable is a place to store data to be used while program execution.

◊bold{Types}

Type is a kind of data. Type must be specified for every variable, because type specifies the way how data is stored, and determines possible operation for the data, and its range.

◊bold{Declarations}

Variables must be declared (described) ◊uc{for the benefit of the compiler} before use.

◊item{선언하고자 하는 variable의 type을 적고 그 뒤에 variable의 이름을 적으면 된다. 각 선언 뒤에는 ;을 붙인다. 예를 들면:
◊codeblock{
		int i; // this is variable declaration
		i = 0;
}}
◊item{declaration은 statement 앞에 나와야 하고, 이 점을 반영한 C 프로그램의 모양은 다음과 같다:
◊codeblock{
int main(void)
{
	declarations
	// leaving a blank line between declarations and statements is a recommendation
	statements
}}}

◊bold{Assignment}

◊item{type이 정해진(선언된) variables에 값을 주는 것.}
◊item{float type variable에 소수점 자리를 포함하는 수를 assign할 경우 그 수 뒤에 문자 f를 붙이는 것이 좋다. ◊|check-this|}
◊item{선언한 type과 같은 type 값을 assign하자. int로 선언된 variable에 float 값을 할당한다거나, float로 선언된 variable에 int 값을 할당할 수 있지만, 항상 안전한 것은 아니다.}

◊bold{Printing the value of a variable}

현재 variable의 값을 printf 함수를 사용해 출력할 수 있다.

◊codeblock{
#include <stdio.h>

int main(void)
{
		int height;
		float p_height;

		height = 170;
		p_height = 1700.43;
		printf("Height: %d\n", height); // %d 는 int 값에만 쓸 수 있다
		printf("Precise height: %f\n", p_height); // float 값을 출력하려면 %f를 써야한다
		printf("Precise height with two digits after decimal point: %.2f\n", p_height);
		// 소수점 뒤 숫자 출력 갯수를 조절하려면 %와 f 사이에 .p의 형식으로 갯수를 넣어주면 된다.
		return (0);
}}

◊bold{Initialization}

기본 값이 없고, 값을 할당받지 않은 variable의 상태를 uninitialized 라고 한다. 할당으로 variable에 초기값을 줄 수 있다. 선언과 동시에 초기값을 할당하는 것도 가능하다.

◊bold{Printing expressions}

◊item{printf can display the value of any numeric expression.}
◊item{printf 함수 안 입력에 expression을 바로 줄 수도 있다.}

◊codeblock{
		volume = height * length * width;
		printf("%d\n", volume);

		// could be replaced by

		printf("%d\n", height * length * width);
		// you can give an expression directly as an argument to printf function.
}

◊section{reading input}

scanf 함수를 쓰면 사용자가 입력한 값을 받아 프로그램에서 쓸 수 있다.

◊section{defining names for constants}

프로그램에 상수값이 들어갈 경우, 그 상수값에 이름을 붙이는 것이 좋다. 이렇게 하면 다른 사람이 그 프로그램의 소스 코드를 읽을 경우 상수가 프로그램 안에서 갖는 역할을 파악하기 쉬워진다. macro definition을 사용해 상수에 이름을 붙일 수 있다.

◊codeblock{
#define INCHES_PER_POUND 166 // directives이기 때문에 뒤에 ;을 붙이지 않는다
#define RECIPROCAL_OF_PI (1.0f / 3.14159f)
// 이름 붙이려는 값이 그냥 숫자가 아니라 expression일 경우 괄호를 달아준다

// 이제 여기부터 166 대신 INCHES_PER_POUND를, (1.0f / 3.14159f) 대신 RECIPROCAL_OF_PI를 써서 프로그램을 짤 수 있다. 그리고 macro 이름을 대문자로만 쓰는 건 그냥 전통이다.
}

- 설정한 macro definition은 preprocessing 단계에서 그 매크로 이름이 담고 있는 값으로 바뀌어 컴파일된다.

◊codeblock{
// 화씨 온도를 받아서 섭씨 온도로 바꾸는 프로그램

#include <stdio.h>

#define F_INIT 32.0f
#define SCALE_FACTOR (5.0f / 9.0f) ◊|check-this|
// int로 하면 소수점 이하 숫자들이 날아가버린다. 다시 말해, 0이 되어버린다.
// 소수점 이하 숫자가 필요하므로 float type으로 선언했다.

int main(void)
{
	float fahrenheit, celsius;

	printf("Enter Fahrenheit temparature: ");
	scanf("%f", &fahrenheit);
	celsius = (fahrenheit - F_INIT) * SCALE_FACTOR;
	printf("Equal Celsius degree of your Fahrenheit degree is %.1f\n", celsius);
	return (0);
}
}

◊section{identifiers}

- Variables, functions, macros, other entities 같은 것들의 이름을 정할 때, 정한 이들의 이름을 identifiers라고 부른다.

◊codeblock{
// 문자, 숫자, 언더바로 만들 수 있다.

// 문자나 언더바로만 시작할 수 있다.
times10  get_next_char  _done  // 얘넨 되고,
10times  get-next-char  // 얘넨 안된다는 말이다.

// 대문자와 소문자를 구분한다.
job  joB  jOb  jOB  Job  JoB  JOb  JOB  // 다 다르게 인식한다
}

◊bold{Keywords} 

- Keyword로 사용되는 이름은 identifier로 쓸 수 없다.
- C는 대문자와 소문자를 구분하므로 keyword를 사용할 때 주의해야 한다.

◊section{Layout of a C program}

- C 프로그램을 token의 연속으로 생각할 수 있다.
- token은 의미를 갖는 문자 모임 중 가장 작은 단위를 말한다. identifier, keyword, operator, puncuation(ex. comma, semicolon, parenthesis), string literal 같은 것들이 token이다.
- token 사이 공간은 (token이 서로 달라붙었을 때 그 의미가 바뀌는 경우가 아니라면) 어떻게 하든 중요하지 않다.
- 위에서 짠 프로그램에서 token 간 공간을 다음과 같이 줄여도 그 의미가 변하지 않는다.
- 의미가 변할 수 있는 예로 int main을 붙이는 경우나 float와 fahrenheit를 붙이는 경우가 있다 ◊|check-this|
- 코드를 알아보기 힘들어지기 때문에 이렇게 하지 않는 것이 좋다

◊codeblock{
// 화씨 온도를 받아서 섭씨 온도로 바꾸는 프로그램

#include <stdio.h>
#define F_INIT 32.0f
#define SCALE_FACTOR (5.0f / 9.0f)
// int로 하면 소수점 이하 숫자들이 날아가버린다. 다시 말해, 0이 되어버린다.
// 소수점 이하 숫자가 필요하므로 float type으로 선언했다.
int main(void){float fahrenheit,celsius;printf("Enter Fahrenheit temparature: ");
scanf("%f", &fahrenheit);celsius = (fahrenheit - F_INIT) * SCALE_FACTOR;
printf("Equal Celsius degree of your Fahrenheit degree is %.1f\n", celsius);
return (0);
}
}

- token 사이 공간 길이에 제한이 없기 때문에 다음과 같은 장점이 있다.

◊codeblock{
// 길이가 긴 statement 하나를 여러 줄로 나눠 보기 편하게 할 수 있다.
printf("Dimensional weight (pounds) : %d\n",
	(volume + INCHES_PER_POUND - 1) / INCHES_PER_POUND);

// token 사이사이의 white space는 token을 구분하기 편하게 해준다.
volume = height * length * width;
}
