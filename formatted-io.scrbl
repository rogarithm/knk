formatted input/output

formatted reading과 writing을 위한 scanf, printf 함수를 다룬다.

3.1 The printf function

printf function은 format string의 내용을 보여준다. 이 내용 안에 value가 있으면, 이 value에 대한 정보를 인자로 주어야 한다. value는 constants, variables, expressions 등을 말한다. 하나의 printf 함수에 몇 개의 value를 넣든 상관없다. 

format string 안에서 일반 문자 외 %로 시작하는 것을 conversion specifications 라고 한다. 이건 뒤에 입력하는 value가 format string 안에서 어떤 type value로 출력될지를 결정한다. %d는 그 자리에 오는 value를 int type으로 보여주겠다는 말이고, %f는 해당 value를 float type으로 보여주겠다는 말이다. 일반 문자는 그대로 출력된다.

int i;
float j;

i = 10;
j = 32.1;

printf("%d, %f\n", i, j); // formatted string 안에 넣을 values는 선언 및 초기화되어 있어야 하고, variable name 그대로 입력한다.

 Conversion specifications

conversion specification은 %m.pX 이나  %-m.pX로 쓸 수 있다. m과 .p 모두 필수는 아니다. m은 minimum field width를 말한다. 출력할 문자의 최소 갯수를 정한다. m이 4인데 3자리 숫자를 출력할 경우 맨 앞에 빈 한 칸이 붙는 식이다. 출력할 자릿수가 m보다 클 경우, 다 출력될 수 있도록 조정한다. %-m.pX와 같이 앞에 -를 붙이는 경우, 앞과 같이 빈 칸이 생기는 경우 오른쪽에 빈 칸을 만든다.

p는 X에 뭐가 나오는지에 따라 그 의미가 달라진다.
list
d는 10진수 형태로 정수를 출력한다. 이때의 p는 출력할 숫자 갯수의 최소값이다. p를 쓰지 않으면, 1이 설정된다.
e는 지수 모양으로 floating-point 수를 출력한다. p는 소수점 뒤 숫자를 몇 개 출력할지 나타내고, 쓰지 않으면 소수점 뒤로는 출력 안한다.
f는 "fixed decimal" 형식으로 floating-point number를 출력한다. p는 e와 같은 식으로 쓴다.
g는 숫자 자리수에 따라 지수 방식이나 고정점 방식 중 어떤 식으로 출력할지 결정한다. p는 출력할 유효숫자(소수점 앞 숫자)의 최대값이다. 이 형식은 숫자가 언제나 적당한 길이를 갖도록 출력 방식을 조절한다.

 Escape sequences

tab이나 new-line 등 일반 문자 이외의 문자를 쓰고 싶을 때는 \를 앞에 붙여서 string 안에 넣어준다. 그렇지 않을 경우 compiler에서 오류로 인식하게 된다.

3.2 The scanf function

scanf function은 입력을 읽는다. type declare된 variable에 입력된 값을 넣는다는 말이다. printf에서도 그렇지만, conversion specification에 적은 type과 입력을 받아올 variable의 type이 다르진 않은지 (혹은 적당한지) 꼭 확인해야 한다. 또 scanf function의 format string 뒤 입력은 (항상은 아니지만) &variable-name 형식이어야 한다. 지키지 않을 경우 입력한 값이 variable에 저장되지 않는다.

scanf가 데이터를 읽는 방식은 그렇게 좋은 방식이 아니다. C 프로그래머 다수는 char type으로 데이터를 읽어서 나중에 numeric 형식으로 바꾼다. 이 책은 앞부분에서 scanf를 써서 데이터를 읽는데, 단순하기 때문이다. 나중엔 다른 방법을 쓴다.

 How scanf works

scanf는 일종의 pattern-matching 함수로 볼 수 있다. 입력된 데이터를 conversion specification에 맞춰 덩어리짓는 함수 말이다. 입력된 문자를 하나하나 읽으면서 그 순서에 나오기로 정해진 type에 나올 수 없는 문자가 나오면 멈추고 그때까지의 문자를 덩어리지어 variable에 넣는다. 그리고 모든 variable이 다 값을 가질 때까지 반복한다. 숫자 첫 자리 전까지 나오는 white space char는 무시한다. 다시 말해 데이터를 입력할 때 각 데이터 덩어리를 (숫자를) 어떻게 구분하든지 상관없다는 것이다.

 Ordinary characters in format strings

 Confusing printf with scanf

printf의 입력에는 &가 없다. &를 붙일 경우 이상한 숫자가 나올테니 쉽게 알 수 있다.
scanf는 white-space char를 무시하기 때문에 conversion specification만 넣으면 충분하다. 그 이외의 문자를 넣으면 그 문자와 일치하는 입력이 없을 경우 프로그램이 예상치 못하게 종료하기 때문에 주의해야 한다.
