//기본적 출력
print("Hello, world!")
// let:초기값 고정(상수), var:변동가능 (변수)
let x1 = 10 // 타입추종
var x2 = 10 //int
let x = "출력은\n" //string
x2 = 20
print(x,x1,x2) //print는 terminator 기본 " "이 들어가잇고 생략가능이다
print("\(x)x1값:\(x1)\nx2값:\(x2)") //문자열 보간 
//튜플
let myTuple = (count: 10, 12.1, "hi")
var myString = myTuple.2
print(myString)
print(myTuple.count)
//타입 확인
print(type(of:myTuple))
//옵셔널
var optionalX : Int?
var optionalY : Int = 0
optionalX = 10
print(optionalX) // Optinal(10)
print(optionalX!) // 강제언래핑후 10출력
print(optionalY)
//언래핑전 닐값 거르기
if optionalX != nil 
{
  print(optionalX!)
}
else
{
  print("nil")
}
var optionalX1 : Int?
if optionalX1 != nil 
{
  print(optionalX!)
}
else
{
  print("nil")
}
//다른 강제언래핑2
if let xx = optionalX
{
  print(xx)
}
else
{
  print("nil")
}
if let xx = optionalX1
{
  print(xx)
}
else
{
  print("nil")
}
//위 예제 여려개 기준이면
if let xx = optionalX, let xx2 = optionalX
{
  print(xx, xx2)
}
else
{
  print("nil")
}
//반복문
for i in 1..<10
{
  if (i>8)
  {
    break //탈출
  }
  else if (i == 6)
  {
    continue //건너뛰기
  }
  print(i)
}
//switch case(break기본 생략)
var temperature = 60
switch (temperature)
{
  case 0...49 where temperature % 2 == 0:
  print("Cold and even")
  case 50...79 where temperature % 2 == 0:
  print("Warm and even")
  //where을 쓰면 부가적 조건 추가됨
  default :
  print("default")  //생략가능인데 repl.it은 안되는듯?
}
//함수 (외부생략시)
func add(x:Int, y:Int) -> Int
{
  return(x+y)
}
print(add(x:10, y:20))
//함수 (외부있을때)
func add(first x:Int, second y:Int) -> Int
{
  return(x+y)
}
print(add(first:10, second:20))
//함수(생략의 표기는 _, 첫번째 생략후 뒤에부터 쓰는경우 많다, objective-c언어에서의 방식이 이러함)
func add(_ x:Int, second y:Int = 10) -> Int
{
  return(x+y)
  // y에 10을 default 값으로 설정하는 방식
}
print(add(10))