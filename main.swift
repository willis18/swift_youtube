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
