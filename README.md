# Alert
消息提醒视图,在Xcode7 ，iOS9.0的SDK中，已经明确提示不再推荐使用UIAlertView，而只能使用UIAlertController;
而系统的样式不能够满足大多UI的需求,因此自定义一个类似UIAlertView;
<p align="center">
<img src="https://raw.githubusercontent.com/whde/Alert/master/Alert/Untitled.gif" height="100%" width="30%"/>
<img src="https://raw.githubusercontent.com/whde/Version/master/Version/Simulator%20Screen%20Shot%202016年3月15日%20上午11.09.25.png" height="100%" width="30%"/>
</p>

# 使用:
```objective-c
pod 'Alert', '~> 1.0.3'
```
- 5.导入头文件 
```objective-c
#import "Alert.h"
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

<p align="center">
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111507.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111540.png" height="100%" width="30%" />
</p>

<p align="center">
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111552.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111558.png" height="100%" width="30%" />
</p>

<p align="center">
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111606.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111611.png" height="100%" width="30%" />
</p>

<p align="center"><img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111619.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111624.png" height="100%" width="30%" />
</p>

<p align="center"><img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111645.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111651.png" height="100%" width="30%" />
</p>

<p align="center"><img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111707.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111712.png" height="100%" width="30%" />
</p>

<p align="center"><img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111719.png" height="100%" width="30%" />
<img src="https://raw.githubusercontent.com/whde/Alert/master/AlertDemo/ScreenShot_20160401_111726.png" height="100%" width="30%" />
</p>
