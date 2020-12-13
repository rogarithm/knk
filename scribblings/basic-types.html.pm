#lang pollen

◊title{basic types}

◊section{integer types}

int ◊|t|는 ◊|val|이 양수만 가능한지, 양수 그리고 음수 둘 다 가능한지에 따라 ◊t{unsigned}와 ◊t{signed}로 나뉜다. int 안에 담을 수 있는 수의 크기는 int가 감당할 수 있는 것보다 클수도, 작을수도 있다. 큰 경우에 ◊t{long}을 쓸 수 있고, 작은 경우엔 ◊t{short}를 쓸 수 있다. 수 앞에 올 수 있는 부호에 따른 ◊t{unsigned, signed}와 담을 수 있는 수의 크기에 따른 ◊t{short, int, long}을 섞어서 ◊|t|을 만들 수 있다. 

몇가지 경우에 ◊|t|을 줄여쓸 수 있다. ◊t{long signed int}는 ◊t{long int}로 줄일 수 있는데, ◊t{int}는 ◊t{unsigned}가 아닌 이상은 항상 ◊t{signed}이기 때문에 굳이 ◊t{signed}를 쓸 필요가 없다. 또 ◊t{long int}나 ◊t{short int}는 각각 ◊t{long}과 ◊t{short}로 줄일 수 있다. 이렇게 줄이는 건 관습적이다.

◊bold{Integer Constants}

◊uncertain{constants--numbers that appear in the text of a program, not numbers that are read, written, or computed.} C에서는 integer constant를 십진수, 팔진수, 십육진수로 쓸 수 있다. 팔진수로 integer constant를 쓸 때는 숫자 앞에 0을 붙여야 하고, 십육진수의 경우 0x를 숫자 앞에 붙여야 한다.

◊later{type of integer constants}

◊bold{Integer Overflow}

int ◊|val| 여럿을 연산할 때, 그 결과는 operands의 ◊|t|이다. 연산 결과값이 이 ◊|t|의 범위 밖이면, integer overflow가 일어난다. int가 signed라면 결과를 예측할 수 없다. 반면 int가 unsigned라면 integer overflow가 일어나겠지만, 결과는 예측할 수 있다.

◊bold{Reading and Writing Integers}

연산 결과가 integer overflow를 일으킨다면 그 operand ◊|t|을 바꿔야 한다. 이때 이들 operands가 printf나 scanf 등에서 쓰인다면, 바꾼 ◊|t|에 맞게 이들 함수 안 내용을 수정해줘야 한다. 필요한 ◊|conv-spec|을 알아보고 바꿔준다

◊section{floating types}

소수점 뒤 숫자가 있는 수, 아주 작거나 아주 큰 수가 필요할 때 floating type을 쓴다. float, double, long double 세 가지의 floating type이 있는데, 순서대로 갈수록 더 정확한 값을 담을 수 있다.

◊bold{Floatinig Constants}

floating constant를 쓸 때, 소수점과 exponent 둘 중 적어도 하나는 꼭 넣어야 한다. exponent는 주어진 floating constant를 얻기 위해 10의 거듭제곱을 해야 할 횟수를 말한다. 앞에는 e를 쓰고, 부호가 필요하다면 e와 횟수 사이에 쓴다.

◊bold{Reading and Writing Floating-Point Numbers}

앞서 알아보았던 내용에 이어, double이나 long double type ◊|val|을 printf나 scanf 함수에서 쓰려면 그에 맞는 ◊|conv-spec|을 써주어야 한다. type, 함수, C compiler에 따라 조금씩 다를 수 있기 때문에 찾아보고 바꿔준다.

◊section{character types}

◊bold{Operations on Characters}

◊em{C에선 문자를 작은 정수로 본다.} 각각의 문자는 숫자 하나씩을 갖는다. 문자가 연산식 안에 나오면, C는 그 문자에 해당하는 정수값을 연산에 쓴다.

문자 비교는 숫자를 비교할 때와 같다. 두 문자에 해당하는 정수값을 갖고 어떤 값이 더 크고 작은지를 본다.

◊bold{Signed and Unsigned Characters}


