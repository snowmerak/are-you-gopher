import 'package:flutter/cupertino.dart';

class Problem {
  late String name;
  late String desc;
  late List<String> choices;
  late int answer;

  Problem(this.name, this.desc, this.choices, this.answer);
}

var int32MultiplyNegative1 = Problem(
    'int32 multiply',
    '''package main

import "fmt"

func main() {
	a := int32(-2147483648)
	fmt.Println(-a)
}
의 출력 결과는?'''
        .replaceAll("\t", "    "),
    ['-1', '-2147483648', '0', '2147483647', '1'],
    1);

var byteTypeSize = Problem(
    'bits of byte',
    '''byte 타입의 비트 수는?'''.replaceAll("\t", "    "),
    ['0', '8', '16', '32', '64'],
    1);
var runeTypeSize = Problem(
    'bits of rune',
    '''rune 타입의 비트 수는?'''.replaceAll("\t", "    "),
    ['0', '8', '16', '32', '64'],
    3);
var stringTypeSize = Problem(
    'bits of string header',
    '''64비트 환경에서 string 헤더의 비트 수는?'''.replaceAll("\t", "    "),
    ['16', '32', '64', '128', '192', '256'],
    3);
var sliceTypeSize = Problem(
    'bits of slice header',
    '''64비트 환경에서 slice 헤더의 비트 수는?'''.replaceAll("\t", "    "),
    ['16', '32', '64', '128', '192', '256'],
    4);
var mapTypeSize = Problem(
    'bits of map header',
    '''64비트 환경에서 map 헤더의 비트 수는?'''.replaceAll("\t", "    "),
    ['192', '256', '280', '296', '384', '488'],
    4);

var zeroValue2 = Problem(
    'zero values',
    '''package main

import "fmt"

func main() {
	var a int
	var b bool
	var c string
	var d struct{}
	var e map[string]int
	var f func()

	fmt.Printf("a:%v\nb:%v\nc:%v\nd:%v\ne:%v\nf:%v\n", a, b, c, d, e, f)
}
위 코드의 출력 값 중 틀린 것은?'''
        .replaceAll('\t', '    '),
    ['a:0', 'b:false', 'c:""', 'd:{}', 'e:map[]', 'f:<nil>'],
    2);

var zeroValue4 = Problem(
    'zero values',
    '''package main

import "fmt"

func main() {
	var a int
	var b bool
	var c string
	var d struct{}
	var e map[string]int
	var f func()

	fmt.Printf("a:%v\nb:%v\nc:%v\nd:%v\ne:%v\nf:%v\n", a, b, c, d, e, f)
}
위 코드의 출력 값 중 틀린 것은?'''
        .replaceAll('\t', '    '),
    ['a:0', 'b:false', 'c:', 'd:{}', 'f:map[]', 'f:func()'],
    5);

var mapReference = Problem(
    'map reference',
    '''package main

import "fmt"

func main() {
	m := map[string]int{}
	add(m, "a", 1)
	add(m, "b", 2)
	add(m, "c", 3)
	add(m, "d", 4)
	add(m, "e", 5)
	fmt.Println(m)
}

func add(m map[string]int, k string, v int) {
	m[k] = v
}
출력으로 올바른 것은?'''
        .replaceAll('\t', '    '),
    [
      'map[]',
      'map[a:1]',
      'map[a:1 b:2]',
      'map[a:1 b:2 c:3]',
      'map[a:1 b:2 c:3 d:4]',
      'map[a:1 b:2 c:3 d:4 e:5]'
    ],
    5);

var sliceReference = Problem(
    'slice reference',
    '''package main

import "fmt"

func main() {
	s := []int{}
	add(s, 1)
	add(s, 2)
	add(s, 3)
	add(s, 4)
	fmt.Println(s)
}

func add(s []int, v int) {
	s = append(s, v)
}
출력으로 올바른 것은?''',
    ['[]', '[1]', '[1 2]', '[1 2 3]', '[1 2 3 4]'],
    0);

var maker = Problem('designed by?', '''고 언어를 디자인하지 않은 사람은?''', ['Robert Griesemer', 'Russ Cox', 'Rob Pike', 'Ken Thompson'], 1);

var sliceLenCap = Problem('len, cap of slice', '''package main

import "fmt"

func main() {
	a := make([]int, 1, 5)
	a = append(a, 1, 2, 3, 4, 5, 6)
	a = a[:len(a)-3]
	fmt.Println(len(a), cap(a))
}
출력으로 옳은 것은?''', ['2 10', '3 10', '4 10', '5 10', '2 11', '3 11', '4 11', '5 11'], 2);

List<Problem> getProblems() {
  return [
    int32MultiplyNegative1,
    byteTypeSize,
    runeTypeSize,
    stringTypeSize,
    sliceTypeSize,
    mapTypeSize,
    zeroValue2,
    zeroValue4,
    mapReference,
    sliceReference,
    maker,
    sliceLenCap,
  ];
}
