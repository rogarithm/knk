C Fundamentals

**이번 장에서 다루는 내용**

- preprocessing directives, functions, variables, statements는 간단한 프로그램을 짤 때도 필요하다.
- Compile and link
- Variables and constants. Variables store data that may change during the execution of a program while constants are data that won't change during program execution. Both can have a name.

### **2.1 Writing a simple program**

내가 짠 프로그램을 기계가 돌릴 수 있게 하려면 다음 세 가지가 필요하다: preprocessing, compiling, linking.

- preprocessing. 프로그램을 전처리기로 넘긴다. 전처리기는 #으로 시작하는 명령(directives)을 다루는데, 이런 명령을 써서 프로그램 모양을 바꾼다.
- compiling. 바뀐 프로그램을 컴파일러로 넘긴다. 여기서 프로그램을 object code라는, 기계에 지시하는 내용으로 번역한다. 여기까지 끝내도 아직 돌리지는 못한다.
- linking. 프로그램을 돌리기 위해 추가로 필요한 코드와 object code를 합친다. 추가 코드에는 라이브러리 함수도 포함된다.

### **2.2 The general form of a simple program**

C 프로그램은 이런 모양이다:

```c
*directives // 기울어진 서체로 된 곳은 내가 내용을 정하는 부분*

int main(void) // 산세리프체는 이미 내용이 정해진 부분
{
	*statements*
}
```

directives

- 컴파일 전에 프로그램을 바꾸는 명령
- #include <stdio.h> 도 directive의 일종이다. 컴파일 전에 stdio.h라는 파일을 추가될 거란 뜻이다. C는 대부분의 함수를 stdio.h 같은 라이브러리에 모아두고 필요할 때 불러다가 쓴다.
- 대부분 directive는 한 줄이고, 뒤에 ;이 붙지 않는다.

functions

- statement 여럿을 모아서 이름붙인 것
- 값을 계산하는 함수와 그렇지 않은 함수가 있다. 계산하는 경우, 함수가 어떤 값을 반환(return)하는지를 return statement 를 써서 알려준다.
- C 프로그램을 돌릴 때 컴퓨터는 반드시 main 함수를 부르기 때문에 프로그램을 짤 때 이 함수를 꼭 넣어야 한다. main 함수의 return statement는 프로그램이 끝날 때의 상태를 내 컴퓨터의 운영체제에 말해준다. return statement는 프로그램이 끝났단 걸 알리는 신호기도 하고, 프로그램이 무슨 값을 반환할지 표시하는 곳이기도 하다.

statements

- 프로그램을 돌릴 때 실행할 명령
- 함수 호출(function call)도 statement다.
- statement 하나하나는 ;로 끝맺는다.

Printing strings

- printf function에서 \n는 문자열 중간에도 쓸 수 있고 여러 번 쓸 수도 있다. \n을 쓰지 않으면 줄이 띄어지지 않기 때문에 여러 개의 printf statement로 나눌 수도 있다.

### **2.3 Comments**

만든 프로그램에 대한 설명은 필수다. 이름, 쓴 날짜, 만든 사람, 목적, 기타 등등.

- /* 로 시작하고 */로 끝나는 경우, 여러 줄에 걸쳐 주석을 쓸 수 있다.
- //을 앞에 붙이는 주석의 경우, 그 줄의 맨 끝에서 주석이 끝난다.

### **2.4 Variables and assignment**

프로그램이 복잡해지면, 프로그램을 돌리는 중에 데이터를 잠깐동안 저장해야할 때가 생긴다. 이럴 때 저장할 곳을 variables라고 부른다. variable을 어떻게 사용할지를 설명한다.

**Types**

- 모든 variable에 대한 type을 정해야 한다.
- type은 그 variable이 어떤 종류의 값을 저장할지를 정한다.
- variable이 어떻게 저장될지, 연산을 어떻게 할 지가 type에 따라 결정되기 때문에 type을 잘 결정해야 한다.

**Declarations**

- Variables를 쓰기 전에 선언(declare)해야 한다.
- 선언하고자 하는 variable의 type을 적고 그 뒤에 variable의 이름을 적으면 된다. 각 선언 뒤에는 ;을 붙인다
- declaration은 statement 앞에 나와야 하고, 이 점을 반영한 C 프로그램의 모양은 다음과 같다.

```c
int main(void)
{
	*declarations*
	// leave a blank line btw declarations and statements is a recommendation
	*statements*
}
```

**Assignment**

- variables에 값을 주는 것. 이 전에 해당 variable이 선언되어 있어야 가능하다.
- float type variable에 소수점 자리를 포함하는 수를 assign할 경우 그 수 뒤에 문자 f를 붙이는 것이 좋다
- int로 선언된 variable에 float 값을 할당한다거나, float로 선언된 variable에 int 값을 할당할 수 있지만, 항상 안전한 것은 아니다

**Printing the value of a variable**

- 현재 variable의 값을 printf 함수를 사용해 출력할 수 있다.

```c
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
}
```

**Initialization**

- 기본 값이 없고 프로그램에서 값을 할당받지 않은 variable의 상태를 uninitialized 라고 한다.
- 할당으로 variable에 초기값을 줄 수 있다. 선언과 동시에 초기값을 할당하는 것도 가능하다.

**Printing expressions**

- printf can display the value of any numeric expression.
- 수식을 printf 함수 안 입력으로 바로 줄 수도 있다.

```c
volume = height * length * width;
printf("%d\n", volume);

// could be replaced by

printf("%d\n", height * length * width);
```

### 2.5 Reading input

- scanf 함수를 쓰면 사용자가 입력한 값을 받아 프로그램에서 쓸 수 있다.

### 2.6 Defining names for constants

- 프로그램에 상수값이 들어갈 경우, 그 상수값에 이름을 붙이는 것이 좋다. 다른 사람이 그 프로그램의 소스 코드를 읽을 경우 상수가 프로그램 안에서 갖는 역할을 파악하기 쉬워지기 때문이다.
- macro definition을 사용해 상수에 이름을 붙일 수 있다.

```c
#define INCHES_PER_POUND 166 // directives이기 때문에 뒤에 ;을 붙이지 않는다
#define RECIPROCAL_OF_PI (1.0f / 3.14159f)
// 이름 붙이려는 값이 그냥 숫자가 아니라 expression일 경우 괄호를 달아준다

// 이제 여기부터 166 대신 INCHES_PER_POUND를, (1.0f / 3.14159f)
// 대신 RECIPROCAL_OF_PI를 써서 프로그램을 짤 수 있다. 
// 그리고 macro 이름을 대문자로만 쓰는 건 그냥 전통이다
```

- 설정한 macro definition은 preprocessing할 때 그 매크로 이름이 담고 있는 값으로 바뀌어 컴파일된다.

```c
// 화씨 온도를 받아서 섭씨 온도로 바꾸는 프로그램

#include <stdio.h>

#define F_INIT 32.0f
#define SCALE_FACTOR (5.0f / 9.0f)
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
```

### 2.7 Identifiers

- Variables, functions, macros, other entities 같은 것들의 이름을 정할 때, 정한 이들의 이름을 identifiers라고 부른다.

```c
// 문자, 숫자, 언더바로 만들 수 있다.

// 문자나 언더바로만 시작할 수 있다.
times10  get_next_char  _done  // 얘넨 되고,
10times  get-next-char  // 얘넨 안된다는 말이다.

// 대문자와 소문자를 구분한다.
job  joB  jOb  jOB  Job  JoB  JOb  JOB  // 다 다르게 인식한다
```

**Keywords**

- Keyword로 사용되는 이름은 identifier로 쓸 수 없다.
- C는 대문자와 소문자를 구분하므로 keyword를 사용할 때 주의해야 한다.

### 2.8 Layout of a C program

- C 프로그램을 token의 연속으로 생각할 수 있다.
- token은 의미를 갖는 문자 모임 중 가장 작은 단위를 말한다. identifier, keyword, operator, puncuation(ex. comma, semicolon, parenthesis), string literal 같은 것들이 token이다.
- token 사이 공간은 (token이 서로 달라붙었을 때 그 의미가 바뀌는 경우가 아니라면) 어떻게 하든 중요하지 않다.
    - 위에서 짠 프로그램에서 token 간 공간을 다음과 같이 줄여도 그 의미가 변하지 않는다.
    - 의미가 변할 수 있는 예로 int main을 붙이는 경우나 float와 fahrenheit를 붙이는 경우가 있다
    - 코드를 알아보기 힘들어지기 때문에 이렇게 하지 않는 것이 좋다

```c
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
```

- token 사이 공간 길이에 제한이 없기 때문에 다음과 같은 장점이 있다.

```c
// 길이가 긴 statement 하나를 여러 줄로 나눠 보기 편하게 할 수 있다.
printf("Dimensional weight (pounds) : %d\n",
	(volume + INCHES_PER_POUND - 1) / INCHES_PER_POUND);

// token 사이사이의 white space는 token을 구분하기 편하게 해준다.
volume = height * length * width;
```
