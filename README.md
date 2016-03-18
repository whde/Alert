# Alert
 <p align="center" >
 ![](https://raw.githubusercontent.com/whde/Alert/master/Alert/Untitled.gif)
![效果图](https://raw.githubusercontent.com/whde/Version/master/Version/Simulator%20Screen%20Shot%202016年3月15日%20上午11.09.25.png)
 </p>
消息提醒视图,在Xcode7 ，iOS9.0的SDK中，已经明确提示不再推荐使用UIAlertView，而只能使用UIAlertController; 而系统的样式不能够满足大多UI的需求,因此自定义一个类似UIAlertView;
## 使用:
- 1.下载代码,用xcode打开工程, 或
```objective-c
pod 'Alert', '~> 1.0.2'
```
- 2.点击command+B, 会打包出Alert.FrameWork;
- 3.将Alert.FrameWork copy到项目文件夹;
- 4.
<p align="center" >
  <img src="https://raw.githubusercontent.com/whde/Alert/master/Alert/CA246576-E925-4195-B0D6-072E7FC1F3D6.jpeg">
</p>
- 5.导入头文件 
 ```objective-c
  #import <Alert/Alert.h>
```

- 6.使用:

 ```objective-c
  Alert *alert = [[Alert alloc] initWithTitle:CLocalizedString(@"输入口令") message:nil
                                     delegate:nil
                            cancelButtonTitle:CLocalizedString(@"取消")
                            otherButtonTitles:CLocalizedString(@"进入"), nil];
  alert.alertStyle = AlertStylePlainTextInput;
 __block Alert*alertV = alert;
 [alert setClickBlock:^(Alert *alertView, NSInteger buttonIndex) {
    if (buttonIndex == 1) {
             NSLog(@"%@", alertV.textField.text);
     }
 }];
 [alert setCancelBlock:^(Alert *alertView) {
     // 取消
 }];
 [alert show];
```
