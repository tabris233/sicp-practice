# SICP 学习

## Mac 搭建 Scheme 环境

> 引用：https://zhuanlan.zhihu.com/p/88990589

## 1.安装 Chez Scheme

下载地址 https://cisco.github.io/ChezScheme/ 推荐用 homebrew 安装

```bash
brew install chezscheme
```

## 2.安装 Code Runner



![img](https://cdn.jsdelivr.net/gh/tabris233/cdn-assets/PicGo/2021/09/03/20210903010147.jpg)



打开 vscode 中配置，设置用 chez 执行 scheme。

```json
{
 "code-runner.executorMap": {
    "scheme": "chez --script"
  }
}
```

## 3.安装语言高亮插件 vscode-chez



![img](https://cdn.jsdelivr.net/gh/tabris233/cdn-assets/PicGo/2021/09/03/20210903010144.jpg)



## 4. HelloWorld

1.  新建 `hello.ss`

```json
; Hello World
(display "Hello World")
(exit)
```

1.  点击右上角按钮运行程序



![img](https://cdn.jsdelivr.net/gh/tabris233/cdn-assets/PicGo/2021/09/03/20210903010138.jpg)



```shell
[Running] chez "hello.ss"
Chez Scheme Version 9.5.2
Copyright 1984-2019 Cisco Systems, Inc.

Hello World
[Done] exited with code=0 in 0.115 seconds
```


## M1 搭建 Scheme 环境

> 参考：https://zhuanlan.zhihu.com/p/37056659

> 因为chezscheme还不能在M1上跑， 所以暂时要找其他方式。
> 这里是用了 racket ，在里面可以跑


## 参考资料

1. [SICP 解题集](https://sicp.readthedocs.io/en/latest/index.html)
2. [英文版 电子书](https://sarabander.github.io/sicp/html/Chapter-1.xhtml#Chapter-1)
3. [【CS公开课】计算机程序的构造和解释（SICP）【中英字幕】【FoOTOo&HITPT&Learning-SICP】](https://www.bilibili.com/video/BV1Xx41117tr?p=2)



### 视频目录

```text
lec1a 时间轴
1#00:30 计算机科学是错误的名字
1#03:12 Process:How to knowledge
1#05:36 Process:Magical Spirit, What hardware supports. Procedure: pattern of rules to direct process. Spells, 编程语言咒语.
1#07:25 Formalized imperative knowledge
1#10:12 没有误差
1#10:55 黑盒抽象
1#16:50 高阶变量:比如过程.
1#18:14 黑盒抽象续
1#20:15 Conventional Interfaces
1#24:45 元语言抽象
1#28:07 新语言:元素,合成,抽象
1#29:58 Lisp基本语法
1#38:45 Lisp:define
1#44:48 Lambda:创建过程
1#49:33 复合与基本有相同的地位
1#51:13 Cond & If
1#59:05 例:数值求平方根
1#1:08:54 总结

lec1b 时间轴
2#00:01 Why Substitution Model
2#03:52 Kinds of expressions
2#05:47 代换模型
2#07:22 Sum of Squares的例子
2#11:11 Normal Order vs Applicative Order
2#12:07 Conditional的求值规则,IF的情形
2#13:32 Example, 皮亚诺算数的程序
2#16:19 -1+,1+操作符
2#17:15 摄像的比喻
2#19:03 两个皮亚诺算数的程序
2#21:18 Evolution of Program:尾递归的情况
2#23:13 递归的情况
2#25:29 feeling of shapes
2#30:42 官僚主义的例子
2#33:13 Iter vs Recursion, what is behind the table
2#34:26 圆的例子
2#37:05 Fib数列问题
2#39:20 计算Fib数列
2#40:23 fib4, and criticize
2#45:05 fib程序和计算过程的对应关系
2#47:10 汉诺塔
2#52:40 4个盘子的情况
2#56:54 QA

lec2a 时间轴
3#00:01 等差数列的一个例子
3#03:41 平方和的例子
3#04:50 发现两个求和程序高度类似
3#06:28 求Pi的例子,给知识命名
3#08:51 发现求和的一般模式
3#10:35 一般的求和程序
3#13:46 使用一般的求和程序表示求和
3#18:31 好处:拆分问题,模块性
3#19:50 QA
3#23:15 平方根程序的问题
3#24:48 作为求不动点算法的Heron算法
3#27:10 以不动点的方式表示Heron算法
3#32:30 发现Damping的结构
3#34:33 实现Damping结构:高阶过程的例子
3#38:16 QA
3#43:30 牛顿法,另一个高阶过程的例子
3#46:05 用牛顿法求\sqrt(x)
3#47:24 牛顿法的实现
3#53:50 牛顿法的图示
3#56:09 函数式语言
3#58:00 QA

lec2b 时间轴
4#00:01 Abstraction barrier in procedures
4#02:38 Data Abstrction
4#03:34 有理数需要复合数据
4#06:05 George's Rational Number, Contract
4#07:56 实现+,×,使用有理数抽象
4#10:56 使用wishful thinking的方法论
4#15:50 Q-A
4#18:25 cons,car,cdr
4#23:11 无法约分的有理数
4#26:39 约分与数据抽象
4#32:00 为什么要使用数据抽象
4#37:39 Q-A
4#41:19 数据抽象 as building blocks
4#42:22 平面上的点或向量
4#43:37 线段
4#44:42 线段上的操作
4#46:25 分层数据抽象
4#47:51 序对的闭包性质
4#50:31 数据抽象使用分层系统的复杂度可控
4#54:51 Q-A
4#56:54 有理数的数据抽象
4#1:02:23 cons, car, cdr的lambda实现
4#1:06:02 验证lambda实现的序对
4#1:09:22 过程与数据并非泾渭分明
4#1:10:53 Q-A

lec3a 时间轴
5#00:20 Review
5#06:24 List
5#15:30 Operations on list
5#24:59 Q-A Time
5#28:30 Henderson's Language, a comprehensive example
5#31:49 Introduce Henderson's language
5#38:05 Implementation of the language
5#49:00 语言实现的优势
5#56:03 图像实现的过程, 嵌入Lisp, 可以利用Lisp对过程的操作能力
5#1:02:36 高阶的push
5#1:06:38 层状描述的工程思想

lec3b 时间轴
6#00:01 Review, 使用代码操作代码
6#02:38 求导法则
6#06:48 使用wishful thinking容纳求导法则
6#12:57 构造代数式的表达
6#26:05 缺乏简化
6#27:40 Q-A Time
6#29:25 对于没有化简的症状分析
6#36:35 改进代数式抽象屏障的表达

lec4a 时间轴
7#00:01 复习和基本概念
7#05:18 规则的定义方式
7#13:00 代数化简的实现思路
7#21:38 Q-A
7#24:05 Matcher的设计和现象
7#32:32 匹配pattern
7#36:13 替换出化简实例
7#40:16 Q-A
7#46:50 控制结构的思路
7#51:02 简化表达式的实现
7#56:19 apply规则
7#1:01:33 Q-A

lec4b 时间轴
8#00:01 同一垂直分层内的不同表达
8#05:04 复数的抽象,信息和运算
8#11:20 两种复数的表示
8#16:52 添加类型信息的表示
8#21:43 根据类型选择对应的操作符:cond语句
8#26:10 根据类型分发的缺点, 使用对应表
8#32:27 类型对应表的注册和使用
8#40:36 Q-A
8#45:05 加减乘除的代数系统
8#47:36 将复数嵌入到加减乘除代数系统中
8#51:54 嵌入复数和一般的数
8#57:32 嵌入多项式
8#1:09:00 嵌入有理式
8#1:12:39 Q-A

ec5a 时间轴
9#00:01 Assignment和set!
9#06:05 set!的例子和替换模型的失败
9#10:58 阶乘:Imperative vs Functional
9#17:56 Q-A
9#22:23 绑定变量和自由变量
9#29:12 Enviroment和Frame
9#37:18 Lambda表达式和相应求值规则
9#45:15 Q-A
9#47:10 计数器的例子
9#56:40 计算对象
9#1:03:41 Cesaro's Pi
9#1:09:20 不使用赋值的后果

lec5b 时间轴
10#00:01 面向对象编程, 电子电路模拟
10#07:04 在Lisp中表达复合元件
10#08:42 primitive元件的定义, set!
10#12:07 Wire的抽象
10#18:05 Wire的构造, Wire为元件提供环境
10#24:48 构建电路和运行电路的用法
10#31:25 agenda和queue的构造和使用
10#44:33 set-car!和set-cdr!
10#46:30 有identity的pairs
10#53:03 使用set!和lambda表示set-car!和set-cdr!
10#1:01:05 Q-A

lec6a 时间轴
11#00:01 抛弃时间与状态,使用整体的观点
11#08:15 树状与Fib求平方和的例子
11#10:56 以整体的观点分析求和的两个例子
11#14:34 流的构造与流上的典型操作
11#20:30 使用流的方式解决求和问题
11#23:32 Q-A
11#24:55 flatmap
11#32:02 collect
11#33:15 八皇后问题
11#39:29 八皇后问题续
11#41:43 Q-A
11#43:20 Lazy Evaluation
11#49:37 Stream in Lazy Style
11#55:46 Lazy with memorization
11#1:02:00 Q-A

lec6b 时间轴
12#00:01 分离编码时和运行时的顺序, 无限整数流
12#05:49 整数流的图示和筛法求质数
12#13:50 整体性的流的观点:Recursive
12#20:02 流上的积分
12#23:16 Fibnacci数列
12#29:12 使用delay数值解微分方程
12#34:00 正则序无法表示迭代
12#41:23 正则序与赋值无法兼容
12#45:14 函数式表示银行账户问题
12#50:54 函数式银行账户, merge问题
12#53:11 Fair merge和delay+object
12#54:56 Q-A

lec7a 时间轴
13#00:01 A universal digital machine
13#03:54 元循环求值器: Eval
13#17:07 元循环求值器: Apply
13#23:32 evcond和evlist
13#31:04 bind和look-up
13#36:50 Evaluation Example
13#53:22 Q-A
13#56:00 Recursive equation of EXPT
13#1:03:50 不断应用变换以找到不动点
13#1:11:34 Y-Combinator和作为不动点的lisp
13#1:20:20 Q-A

lec7b 时间轴
14#00:01 元循环求值器的作用, 添加不定数目的参数
14#13:01 修改pair-up
14#15:59 Q-A
14#18:20 dynamic binding特性
14#28:57 对eval进行修改, 使用caller的env
14#30:35 对apply进行修改, 使用caller的env, 缺点
14#35:08 在作用域下实现dynamic binding的效果
14#37:54 Q-A Time
14#40:35 Name feature, name上用正则序
14#46:26 对eval进行修改
14#52:57 对apply进行修改
14#56:05 cond中要force谓词
14#57:16 Q-A

lec8a 时间轴
15#00:01 即使在一种很特殊的语言中,eval/apply也是存在的
15#04:30 以声明的方式编程
15#07:49 一个事实回答多个问题
15#10:35 merge:过程式对比声明式
15#13:31 Logic Programming:基于关系的编程
15#18:53 Q-A
15#21:02 人事信息的世界
15#22:37 query, the primitive
15#24:55 query(cont.), use dot to capture cdr of a list
15#28:30 组合query
15#31:22 rule:抽象方法
15#34:01 merge: Logical Programming
15#40:18 Q-A

lec8b 时间轴
16#00:01 pattern matcher支撑了query language
16#02:15 match过程, 由query使用match
16#09:50 match的三路结构与and组合
16#12:40 三路结构与or组合
16#14:55 作为filter的not, 和组合方式总结
16#17:25 Q-A
16#23:15 抽象方式rule和rule的实现路线
16#26:37 unifier
16#31:04 unifier会对不动点求解报错
16#33:07 执行rule中的apply-eval
16#36:23 rule中变量名冲突时的重命名
16#38:20 Q-A
16#48:30 and的顺序有影响
16#52:42 与真实逻辑的区别
16#57:18 Not:不知道,并非为假
16#61:51 封闭世界假说的问题
16#64:20 QA

lec9a 时间轴
17#00:01 从lisp code到register machine, 欧几里得算法
17#05:06 欧几里得算法对应的控制器和Datapath
17#22:40 使用代码定义controller, nested的rem
17#28:46 阶乘的递归性
17#31:46 使用stack产生无穷的幻觉, 为recursion服务
17#39:16 阶乘的控制器
17#51:53 Fib更复杂的双重递归
17#53:51 Fib的代码和其中的栈使用纪律

lec9b 寄存器机器实现Lisp求值器
18#00:01 Review Concreteness of Lisp Evaluator
18#04:08 问题定义, 将Lisp系统中的Evaluator实现为寄存器机器
18#09:51 Lisp机器的最简寄存器设计
18#11:47 Eval-Apply的datapath
18#16:31 显式控制求值器的基本组织
18#18:42 Evaluation of 1
18#22:40 The recursive nature of evaluation
18#27:28 (+ x y)在寄存器上的演示
18#35:47 Q-A
18#38:40 显式控制求值器解析函数定义
18#46:06 递归的求阶乘
18#52:47 迭代的工作过程
18#61:49 尾递归优化, 总结, 看芯片
18#67:58 Q-A

lec10a 时间轴
19#00:01 解释器的策略, Review
19#02:27 编译的思路, 和解释vs编译对比
19#06:00 零阶编译器, (F X)的例子
19#09:15 对于IF的处理, 对于的指令(零阶)
19#16:15 简化后的使用序列
19#18:53 a better compiler
19#25:41 Q-A
19#27:25 Compiler对Code进行分析
19#33:39 组合代码片段是的寄存器规则
19#43:40 Q-A

lec10b 时间轴
20#00:01 Cons的Godel实现, 在线性内存中表示树的问题.
20#05:52 原始的和相对高效的内存分配
20#15:46 Q-A
20#18:11 垃圾回收及其思路
20#25:09 增加mark位, 扫描寄存器相关的GC
20#33:25 M-Y-F GC算法
20#38:17 Q-A
20#41:15 两个停机问题的证明
20#50:53 Q-A
```