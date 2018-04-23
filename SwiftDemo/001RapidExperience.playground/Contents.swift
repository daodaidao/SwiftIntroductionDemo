//: Playground - noun: a place where people can play
// playground对硬件的要求很高，如果不是固态硬盘基本没戏
// 如果第一次运行，可能会慢一些，具体看上面的运行进度条。如果还是右边没有显示 在网上查找解决办法一定可以找到的，比如 ：http://blog.163.com/nijino_saki/blog/static/800921442015112843417792/


import UIKit


var str = "Hello, playground"


//1.创建视图
let view = UIView(frame: CGRect(x: 0,y: 0,width: 100,height :100))

view.backgroundColor = UIColor.red

//2.创建一个按钮
let btn = UIButton(type: .contactAdd)

view.addSubview(btn)

btn.center = view.center

view


var sum = 0
for i in 0..<9{
    sum += i
    
    
    
}


/* 学习资源
 学习swift群:733534629
 官方网站: https://swift.org
 苹果官方博客 : https://developer.apple.com/swift/blog
 iBooks里搜索 swift 官方指导书，注意看下是否是跟最新的版本匹配
 100个 Swift必备tips,作者王巍，https://onevcat.com
 
*/


//该例子视频出处：http://www.iqiyi.com/v_19rrb510js.html#curid=643513700_743033726260c537feb4ff892a1988de


