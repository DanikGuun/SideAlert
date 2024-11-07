Library with upside alerts<p>
Example:<p>
![image](https://github.com/user-attachments/assets/3c372b97-ef3a-4392-8c6c-4afaa80d3560)
<p></p>
Description:<p></p>
Library has 2 parts: SideAlert and extension for UIViewController<p></p>
<em>SideAlert</em>
<ul type="circle">
  <li>public init(title: String, color: UIColor, textColor: UIColor, font: UIFont) - alert's initializer</li>
  <li><tt>title: String</tt> - alert's title</li>
  <li><tt>color: UIColor</tt> - alert's background color</li>
  <li><tt>textColor: UIColor</tt> - title's color (default: UIColor.systemBackground)</li>
  <li><tt>font: UIFont</tt> - title's font (default: UIFont.systemFont(ofSize: 17, weight: .medium)))</li>
</ul>
<p></p>
UIViewController's extension have 1 method for displaying alert
<p></p>
<ul type="cicrcle">
  <li><tt>presentSideAlert(_: SideAlert, inset: CGFloat, during: TimeInterval, animated: Bool)</tt> - method, which show the alert</li>
  <ul>
    <li><tt>_: SideAlert</tt> - argument which contains alert should be presented</li>
    <li><tt>inset: CGFloat</tt> - inset alert from ViewContoller's sides (default: 20)</li>
    <li><tt>during: TimeInterval</tt> - time which alert will exist on the screen, without show and hide animations (default: 2)</li>
    <li><tt>animated: Bool</tt> - whether alert's showing and hiding has animation (default: True)</li>
  </ul>
</ul>
<p></p>
Also SideAlert has 3 predefined colors (extension for UIColor):
<ul>
  <li> <img align="center" width="315" alt="image" src="https://github.com/user-attachments/assets/c4b629e2-04c5-48de-924d-94a5aa8d3c2e">
    <tt>UIColor.success</tt>
 </li>
  <li><img align="center" width="315" alt="image" src="https://github.com/user-attachments/assets/b6f485cd-54bc-40b1-a5e0-caa0dc5128a3">
    <tt>UIColor.warning</tt>
  </li>
  <li> <img align="center" width="315" alt="image" src="https://github.com/user-attachments/assets/66b78ec7-b162-46bb-a57c-b058a0df790d">
    <tt>UIColoe.error</tt>
  </li>
</ul>
<p></p>
All of colors adapted to darkmode
<br>
<br>
<p>Exmaple of using:</p>
<img width="497" alt="image" src="https://github.com/user-attachments/assets/68fa53dc-675d-4d35-a05c-dd65e87fd6e1">
<br>
<br>
<tt>Star</tt> my repository, if it helpfull for you)<br>
<i>Email for feedback:</i> bondardanya10@gmail.com
