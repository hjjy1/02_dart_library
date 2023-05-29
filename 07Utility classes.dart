// 比较对象
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

// 实现映射键
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // 使用静态哈希方法重写hashCode
  @override
  int get hashCode => Object.hash(firstName, lastName);

  //当重写了hashCode要实现“==”
  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

void main(){
  // 核心库包含各种实用程序类，可用于排序， 映射值和迭代
  print("===============比较对象========================");
  var short = const Line(1);
  var long = const Line(100);
  print(short.compareTo(long) < 0);
  print("================实现映射键======================");
  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  print("$p1.hashCode,p2.hashCode");
  print("$p1, $p2");
  print("$p1, $p3");print("===============================================");
  
}