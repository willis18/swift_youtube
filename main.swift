//기본적 출력
print("Hello, world!")

// let:초기값 고정(상수), var:변동가능 (변수)
let x1 = 10 // 타입추종
var x2 = 10 //int
let x = "출력은\n" //string
x2 = 20
print(x,x1,x2) //print는 terminator 기본"\n", separator 기본 " "이 들어가잇고 생략가능이다
print("\(x)x1값:\(x1)\nx2값:\(x2)") //문자열 보간 

//튜플
let myTuple = (count: 10, 12.1, "hi")
var myString = myTuple.2
print(myString)
print(myTuple.count)

//배열
var myArray = [10, 11, 12]
print(myArray)

//열거형
enum Rank: Int
{
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king

  func simpleDescription() -> String
  {
    switch self
    {
      case .ace: return "에이스"
      case .jack: return "잭"
      case .queen: return "퀸"
      case .king: return "킹"
      default: return String(self.rawValue)
    }
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace, ace.simpleDescription(), aceRawValue)
print(Rank.eight.rawValue) //.rawValue는 예약된 변수로 enum의 case가 선언된 x번째순서를 가진다
let king = Rank.king
print(Rank.king.simpleDescription())
print(king.simpleDescription())
//타입 확인
print(type(of:myTuple))

//옵셔널
var optionalX : Int?
var optionalY : Int = 0
optionalX = 10
//print(optionalX) // Optinal(10)
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

// ??연산자 통한 옵셔널 언래핑
var optionalZ : Int?
print(optionalZ ?? "??결과 = nil") // nil이 아니면 변수를 그대로 쓰고, nil이라면 ?? 뒤를 출력함

//if문
var myScore = 56
if myScore >= 80
{
  print("\(myScore)점 : 우수합격")
}
else if myScore >= 50
{
  print("\(myScore)점 : 합격")
}
else
{
  print("\(myScore)점 : 불합격")
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
  print("반복문 : \(i)")
}

//while문
var n = 2
while n<10
{
  n = n * 2
}
print("while문 : \(n)")

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

//함수 (외부별칭 생략시)
func add(x:Int, y:Int) -> Int
{
  return(x+y)
}
print(add(x:10, y:20))
//함수 (외부별칭 있을때)
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

//클래스
class Man
{
  var age : Int = 0
  var weight : Double = 0.0
  var manAge : Int
  {
    get
    {
      return age
    }
    set(newValue)
    {
      age = newValue
    }
  }
  init(age: Int, weight: Double)
  {
    self.age = age // or self.age 
    self.weight = weight // or self.weight
  }
  init(age : Int) // overloading
  {
    self.age = age
  }
  func display()
  {
    print("나이=\(age), 몸무게=\(weight)")
  }
  class func cM()
  {
    print("cM은 클래스 메소드")
  }
  static func scM()
  {
    print("scM은 클래스 메서드(스태틱)")
  }
}
var kim : Man = Man(age : 10, weight : 10.5)
var kim1 : Man = Man(age : 5)
print(kim.age)
kim.display()
Man.cM()
Man.scM()
print(kim.manAge) //getter호출
kim.manAge = 3 //setter 호출

//클래스 상속
class Student : Man 
{
  var name : String = "김소프"
  override func display()
  {
    print("이름=\(name), 나이=\(age), 몸무게=\(weight)")
  }
  init(age : Int, weight : Double, name : String)
  {
    super.init(age : age, weight : weight)
    self.name = name
  }
}
var kimMan : Man = Man(age:10, weight:20.5)
kimMan.display()
var lee : Student = Student(age:20, weight:65.2, name : "홍길동")
lee.display() //override

//프로토콜
protocol ExampleProtocol
{
  var simpleDescription: String {get}
  var author : String {get set}
  mutating func adjust()
}

class SimpleClass: ExampleProtocol
{
  var simpleDescription: String = "A very simple class."
  var author : String = "Kaneko"
  var anotherProperty: Int = 1192

  //adjust 함수 구현
  func adjust()
  {
    simpleDescription += "Now 100% adjusted"
  }
}

var sProtocol: ExampleProtocol = SimpleClass() // 다형성
sProtocol.adjust()
print(sProtocol.simpleDescription, sProtocol.author)
sProtocol.author="박둘리"
print(sProtocol.author)

//extension : 자료형에 추가적 기능을 제공
extension Int: ExampleProtocol
{
  var simpleDescription: String
  {
    return "숫자는 \(self)입니다."
  }
  var author: String
  {
    get
    {
      return "숫자맨"
    }
    set{}
  }
  mutating func adjust()
  {
    self *= 10
  }
}
print(7.simpleDescription)
var num = 7
num.adjust()
print(num)