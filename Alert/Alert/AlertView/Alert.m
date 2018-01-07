//
//  Alert.m
//  test
//
//  Created by Whde on 14/12/22.
//  Copyright (c) 2014年 whde. All rights reserved.
//

#import "Alert.h"


@interface Alert() <UITextFieldDelegate>

@end

@implementation Alert{
    BOOL hasCancelBtn;
    NSMutableArray *argsArray;
    NSString *titleText;
    NSString *messageText;
}

- (UIImage *)getiImage {
    static UIImage *image_s = nil;
    if (image_s) {
        return image_s;
    } else {
        NSUInteger image_s_ByteLen = 513;
        Byte *image_s_Bytes=(Byte []){0x89,0x50,0x4E,0x47,0xD,0xA,0x1A,0xA,0x0,0x0,0x0,0xD,0x49,0x48,0x44,0x52,0x0,0x0,0x0,0x28,0x0,0x0,0x0,0x28,0x8,0x3,0x0,0x0,0x0,0xBB,0x20,0x48,0x5F,0x0,0x0,0x0,0x36,0x50,0x4C,0x54,0x45,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xFF,0x7F,0x46,0xF,0xC7,0xA5,0x2B,0x0,0x0,0x0,0x11,0x74,0x52,0x4E,0x53,0x30,0x70,0xB0,0xC0,0xF0,0x80,0x0,0x10,0xE0,0x90,0x20,0xA0,0x40,0x50,0x60,0xD0,0x64,0xEB,0x4D,0xCA,0x6F,0x0,0x0,0x1,0x69,0x49,0x44,0x41,0x54,0x78,0x5E,0x8D,0xD4,0xEB,0xAE,0xC3,0x20,0x8,0x0,0x60,0xAC,0xF7,0xFB,0xE1,0xFD,0x5F,0xF6,0x14,0xA9,0x99,0xCA,0xD2,0x8C,0x3F,0x4B,0xF5,0xB,0x5,0x59,0x5,0xB7,0x5,0xA8,0x4B,0x1B,0x44,0xD4,0x97,0x3D,0x76,0x56,0xE8,0x6D,0xC0,0x25,0x4C,0x4C,0x2,0x32,0x33,0x78,0x46,0xF6,0x12,0x96,0xC0,0x40,0x47,0x5B,0x8B,0xB5,0x9A,0xA5,0xA9,0x27,0x54,0xAC,0xDA,0x27,0x45,0xBD,0x38,0xE9,0xE,0x33,0xB1,0x5E,0xDC,0x16,0x49,0xB3,0x5C,0x60,0x24,0x67,0x9D,0x8,0x65,0x58,0x4E,0xD8,0xA8,0x9A,0xE6,0xBE,0x4,0x90,0x8C,0x13,0x26,0x7A,0xAA,0x4B,0xFB,0x36,0xED,0xB2,0x3C,0x90,0x4A,0x59,0xF2,0x75,0x44,0xE3,0x3F,0xF2,0x86,0xC1,0xF,0x58,0x6F,0x77,0x2D,0x2D,0x20,0xE7,0x98,0x61,0xB9,0x7C,0x58,0x33,0x70,0x50,0x21,0xEB,0x4C,0xC2,0xD8,0x7,0x7,0x67,0xC3,0x55,0xEB,0xAD,0xB1,0x32,0x2A,0x3,0x17,0x8F,0x84,0x32,0x2,0xA2,0x76,0x40,0x3F,0x79,0x5,0xE9,0x4F,0x29,0xC5,0x62,0x99,0x9A,0x87,0xC4,0x47,0xB3,0x17,0x8F,0x1B,0x4,0xEA,0xE,0xA,0xF1,0x37,0xC8,0xED,0x59,0xB0,0x88,0x66,0x9F,0x70,0x17,0x50,0x23,0x46,0x82,0xFA,0x58,0x16,0xF0,0xBA,0xCD,0x4F,0xD0,0xFE,0xA,0xF3,0x3,0x83,0x84,0x62,0x25,0x43,0x15,0xCB,0x12,0x6,0xEA,0x7A,0x1C,0xD2,0x3B,0xF4,0x34,0x43,0xA0,0x43,0x8A,0xEF,0xB0,0xDD,0x30,0x1,0xF5,0x1E,0x5E,0x21,0xB,0x18,0xBE,0xBE,0xC1,0x34,0xBE,0x6,0x18,0x3,0xEA,0xE7,0x64,0x60,0x3F,0x1C,0x4C,0xE,0x78,0xB8,0xEA,0x98,0xB5,0xDE,0xFF,0x8E,0xD9,0x11,0xF4,0x1,0xD1,0xC0,0x77,0xC8,0xBB,0x98,0x8,0xF2,0x47,0x13,0xFC,0x77,0xE8,0xFB,0xF3,0x1,0xC0,0xAC,0xA2,0x93,0x14,0x41,0x8E,0x3B,0x80,0xF9,0xB8,0xBC,0xFD,0x68,0xCC,0xF8,0x7,0x4E,0x89,0xD6,0x8B,0x1B,0x85,0x13,0x30,0x5C,0x64,0x50,0x2B,0x6D,0x81,0xD6,0x3A,0x1C,0xF7,0x63,0xC4,0x11,0x97,0x2A,0x84,0x4B,0xCB,0x86,0x9F,0xBD,0xB8,0x71,0x4B,0x47,0x11,0xA1,0x7E,0xBD,0xC3,0xDB,0x42,0x45,0x25,0x7B,0xAB,0x60,0xF5,0x54,0x3D,0x1E,0x5B,0xF2,0x48,0xCA,0x1D,0x72,0xF9,0x1F,0x7C,0x7B,0x34,0xE7,0xA3,0x9B,0xB8,0x3F,0x0,0x0,0x0,0x0,0x49,0x45,0x4E,0x44,0xAE,0x42,0x60,0x82};
        image_s = [[UIImage alloc] initWithData:[NSData dataWithBytes:image_s_Bytes length:image_s_ByteLen]];
        return image_s;
    }
}

/**
 *  处理通知
 */
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
/**
 *  创建alertView
 *
 *  @param title             提示标题
 *  @param message           提示详情
 *  @param delegate          协议对象
 *  @param cancelButtonTitle 取消按钮名称
 *  @param otherButtonTitles 其他按钮
 *
 *  @return Alert
 */
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id<AlertDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;{
    self = [super init];
    if (self) {
        titleText = title;
        messageText = message;
        _lineSpacing = DEFAULT_LINE_SPACING;
        _paragraphSpacing = DEFAULT_LINE_SPACING;
        _contentAlignment = NSTextAlignmentCenter;
        _font = [UIFont systemFontOfSize:14];
        _alertStyle = AlertStyleDefault;
        if (delegate){
            _delegate = delegate;
        }
        argsArray = [[NSMutableArray alloc] init];
        hasCancelBtn = NO;
        if (cancelButtonTitle) {
            hasCancelBtn = YES;
            [argsArray insertObject:cancelButtonTitle atIndex:0];
        }
        va_list params; //定义一个指向个数可变的参数列表指针;
        va_start(params,otherButtonTitles);//va_start 得到第一个可变参数地址,
        id arg;
        if (otherButtonTitles) {
            //将第一个参数添加到array
            id prev = otherButtonTitles;
            [argsArray addObject:prev];
            //va_arg 指向下一个参数地址
            //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
            while( (arg = va_arg(params,id)) ){
                if ( arg ){
                    [argsArray addObject:arg];
                }
            }
            //置空
            va_end(params);
        }
    }
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(needsDisplay) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    return self;
}

/**
 *  点击按钮
 */
- (void)buttonClick:(UIButton *)sender{
    if (_delegate && [_delegate respondsToSelector:@selector(alertView:clickedButtonAtIndex:)]){
        [_delegate alertView:self clickedButtonAtIndex:sender.tag];
    }
    if (_clickBlock) {
        _clickBlock(self, sender.tag);
    }
    [self dismiss];
}

/**
 *  点击取消按钮
 */
- (void)cancalClick:(UIButton *)sender{
    if (_delegate && [_delegate respondsToSelector:@selector(alertViewCancel:)]) {
        [_delegate alertViewCancel:self];
    }
    if (_cancelBlock) {
        if (_cancelBlock) {
            _cancelBlock(self);
        }
    }
    if (_delegate && [_delegate respondsToSelector:@selector(alertView:clickedButtonAtIndex:)]){
        [_delegate alertView:self clickedButtonAtIndex:sender.tag];
    }
    if (_clickBlock) {
        _clickBlock(self, sender.tag);
    }
    [self dismiss];
}

/**
 *  显示alertView
 */
- (void)show {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self needsDisplay];
        /*UIWindow *window = ((UIWindow *)[[UIApplication sharedApplication] windows][0]);*/
        UIWindow *window = ((UIWindow *)[UIApplication sharedApplication].keyWindow);
        [window addSubview:self];
        [window endEditing:YES];
        [self performPresentationAnimation];
    });
}

/**
 *  隐藏AlertView
 */
- (void)dismiss {
    [self removeFromSuperview];
}

/**
 *  点击空白处,不做操作
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.window resignFirstResponder];
}

/**
 *  显示动画
 */
- (void)performPresentationAnimation{
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animation];
    bounceAnimation.duration = 0.3;
    bounceAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    bounceAnimation.values = [NSArray arrayWithObjects:
                              [NSNumber numberWithFloat:0.8],
                              [NSNumber numberWithFloat:1.05],
                              [NSNumber numberWithFloat:0.98],
                              [NSNumber numberWithFloat:1.0],
                              nil];
    
    [_alertView.layer addAnimation:bounceAnimation forKey:@"transform.scale"];
    [UIView animateWithDuration:0.15 animations:^{
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    }];
}

/**
 *  设置message字体
 *
 *  @param font UIFont
 */
- (void)setFont:(UIFont *)font{
    _font = font;
    _messageLabel.font = font;
}

/**
 *  设置message的对齐方式
 *
 *  @param contentAlignment NSTextAlignment
 */
- (void)setContentAlignment:(NSTextAlignment)contentAlignment{
    _contentAlignment = contentAlignment;
}

/**
 *  设置行距
 *
 *  @param lineSpacing CGFloat
 */
- (void)setLineSpacing:(CGFloat)lineSpacing{
    _lineSpacing = lineSpacing;
}

/**
 *  这是段落间距
 *
 *  @param paragraphSpacing CGFloat
 */
- (void)setParagraphSpacing:(CGFloat)paragraphSpacing{
    _paragraphSpacing = paragraphSpacing;
}

/*!
 *  设置Alert的类型
 *  @param alertStyle AlertStyle
 */
- (void)setAlertStyle:(AlertStyle)alertStyle {
    _alertStyle = alertStyle;
    void (^addKeybordNotification)(void)= ^(){
        // 键盘通知
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    };
    switch (_alertStyle) {
        case AlertStyleDefault:
            // Default
            break;
        case AlertStylePlainTextInput:
            _textField = [[UITextField alloc] init];
            addKeybordNotification();
            break;
        case AlertStyleSecureTextInput:
            _textField = [[UITextField alloc] init];
            addKeybordNotification();
            break;
        case AlertStyleLoginAndPasswordInput:
            _textField = [[UITextField alloc] init];
            _passwordTextField = [[UITextField alloc] init];
            addKeybordNotification();
            break;
        default:
            break;
    }
}
CGRect getScreenBounds() {
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) &&
        UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGRectMake(0, 0, screenBounds.size.height, screenBounds.size.width);
    }
    return screenBounds;
}
/**
 *  刷新
 */
- (void)needsDisplay{
    if (NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) {
        [UIView animateWithDuration:0.3 animations:^{
            self.transform = [[[UIApplication sharedApplication].keyWindow subviews] objectAtIndex:0].transform;
        }];
    }
    self.frame = [UIScreen mainScreen].bounds;
    
    CGRect screenBounds = getScreenBounds();
    // 设置背影半透明
    self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    if (_alertView) {
        [_alertView removeFromSuperview];
        _alertView = nil;
    }
    // 1.alertView
    _alertView = [[UIView alloc] init];
    _alertView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_alertView];
    float width = 280;
    if (messageText && messageText.length > 100) {
        width = screenBounds.size.width-40;
    }
    _alertView.frame = CGRectMake(0, 0, width, 200);
    _alertView.layer.cornerRadius = 6;
    _alertView.layer.masksToBounds = YES;
    
    // 2.title
    _titleLabel = [[UILabel alloc] init];
    [_alertView addSubview:_titleLabel];
    _titleLabel.numberOfLines = 3;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    _titleLabel.numberOfLines = 3;
    _titleLabel.text = [NSString stringWithFormat:@"      %@", titleText];
    _titleLabel.font = [UIFont systemFontOfSize:17];
    _titleLabel.textColor = [UIColor colorWithRed:(255.0/255) green:(127.0/255) blue:(70.0/255) alpha:1];
    CGRect rect = [_titleLabel textRectForBounds:CGRectMake(0, 20, _alertView.frame.size.width-40, 100) limitedToNumberOfLines:3];
    rect.origin.x = 20;
    _titleLabel.frame = rect;
    _titleLabel.center = CGPointMake(CGRectGetWidth(_alertView.frame)/2, CGRectGetHeight(_titleLabel.frame)/2+15);
    
    // 3.imageView
    NSInteger imageTag = 821827;
    UIImageView *imageView = (UIImageView *)[self viewWithTag:imageTag];
    if (imageView == NULL) {
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMinX(_titleLabel.frame), 15, 20, 20)];
        imageView.image = [self getiImage];
        [_alertView addSubview:imageView];
    }
    CGFloat height = CGRectGetMaxY(_titleLabel.frame);
    
    if (messageText) {
        // 4.messageLabel
        _messageLabel = [[UITextView alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(_titleLabel.frame)+10, _alertView.frame.size.width-20, 35)];
        _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.editable = NO;
        _messageLabel.scrollEnabled = NO;
        _messageLabel.selectable = NO;
        [_messageLabel flashScrollIndicators];   // 闪动滚动条
        [_alertView addSubview:_messageLabel];
        CGRect frame = _messageLabel.frame;
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        style.lineSpacing = _lineSpacing;
        style.paragraphSpacing = _paragraphSpacing;
        style.alignment = _contentAlignment;
        NSDictionary *dic = @{NSFontAttributeName:_font,NSParagraphStyleAttributeName:style};
        CGFloat broadWith = (_messageLabel.contentInset.left
                             + _messageLabel.contentInset.right
                             + _messageLabel.textContainerInset.left
                             + _messageLabel.textContainerInset.right
                             + _messageLabel.textContainer.lineFragmentPadding/*左边距*/
                             + _messageLabel.textContainer.lineFragmentPadding/*右边距*/);
        CGFloat textHeight = screenBounds.size.height>screenBounds.size.width?(screenBounds.size.height-64-49-100-(argsArray.count <= 2?44:argsArray.count*44)-20):(screenBounds.size.height-100-(argsArray.count <= 2?44:argsArray.count*44));
        CGSize size = [messageText boundingRectWithSize:CGSizeMake(_alertView.frame.size.width-20-broadWith, LINE_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dic context:nil].size;
        CGFloat broadHeight  = (_messageLabel.contentInset.top
                                + _messageLabel.contentInset.bottom
                                + _messageLabel.textContainerInset.top
                                + _messageLabel.textContainerInset.bottom);
        CGSize adjustedSize = CGSizeMake(frame.size.width, size.height+broadHeight);
        frame.size.width = _alertView.frame.size.width-20;
        frame.size.height = adjustedSize.height;
        if (frame.size.height >= textHeight){
            frame.size.height = textHeight;
            _messageLabel.scrollEnabled = YES;   // 允许滚动
        }else{
            _messageLabel.scrollEnabled = NO;    // 不允许滚动
        }
        _messageLabel.frame = frame;
        _messageLabel.contentSize = CGSizeMake(_alertView.frame.size.width-20, size.height);
        [_messageLabel setAttributedText:[[NSAttributedString alloc] initWithString:messageText attributes:dic]];
        
        height = CGRectGetMaxY(_messageLabel.frame);
    }
    
    switch (_alertStyle) {
        case AlertStyleDefault:
            // Default
            break;
        case AlertStylePlainTextInput:
            _textField.frame = CGRectMake(20, height+5, _alertView.bounds.size.width-40, 40);
            _textField.layer.borderColor = [UIColor colorWithRed:0.5176 green:0.5176 blue:0.5176 alpha:1.0].CGColor;
            _textField.layer.borderWidth = 0.3;
            _textField.layer.cornerRadius = 2;
            _textField.delegate = self;
            _textField.backgroundColor = [UIColor clearColor];
            [_alertView addSubview:_textField];
            height = CGRectGetMaxY(_textField.frame);
            break;
        case AlertStyleSecureTextInput:
            _textField.frame = CGRectMake(20, height+5, _alertView.bounds.size.width-40, 40);
            _textField.layer.borderColor = [UIColor colorWithRed:0.5176 green:0.5176 blue:0.5176 alpha:1.0].CGColor;
            _textField.layer.borderWidth = 0.3;
            _textField.layer.cornerRadius = 2;
            [_textField setSecureTextEntry:YES];
            _textField.delegate = self;
            _textField.backgroundColor = [UIColor clearColor];
            [_alertView addSubview:_textField];
            height = CGRectGetMaxY(_textField.frame);
            break;
        case AlertStyleLoginAndPasswordInput:
            _textField.frame = CGRectMake(20, height+5, _alertView.bounds.size.width-40, 40);
            _textField.layer.borderColor = [UIColor colorWithRed:0.5176 green:0.5176 blue:0.5176 alpha:1.0].CGColor;
            _textField.layer.borderWidth = 0.3;
            _textField.layer.cornerRadius = 2;
            _textField.delegate = self;
            _textField.backgroundColor = [UIColor clearColor];
            [_alertView addSubview:_textField];
            height = CGRectGetMaxY(_textField.frame);
            
            _passwordTextField.frame = CGRectMake(20, height-0.3, _alertView.bounds.size.width-40, 40);
            _passwordTextField.layer.borderColor = [UIColor colorWithRed:0.5176 green:0.5176 blue:0.5176 alpha:1.0].CGColor;
            _passwordTextField.layer.borderWidth = 0.3;
            _passwordTextField.layer.cornerRadius = 2;
            [_passwordTextField setSecureTextEntry:YES];
            _passwordTextField.delegate = self;
            _passwordTextField.backgroundColor = [UIColor clearColor];
            [_alertView addSubview:_passwordTextField];
            height = CGRectGetMaxY(_passwordTextField.frame);
            break;
        default:
            break;
    }
    
    for (UIView *view in _alertView.subviews) {
        if ([view isKindOfClass:[UIButton class]]) {
            [view removeFromSuperview];
        }
    }
    if (argsArray.count <= 2) {
        //这里循环 将看到所有参数
        for (int j = 0; j < [argsArray count]; j++){
            NSString *s = argsArray[j];
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = [UIColor clearColor];
            button.frame = CGRectMake((CGRectGetWidth(_alertView.frame)+2)/argsArray.count*j-1, height+10, (CGRectGetWidth(_alertView.frame)+2)/argsArray.count, 44);
            button.layer.borderColor = [UIColor colorWithWhite:0 alpha:0.1].CGColor;
            button.layer.borderWidth = 0.5;
            button.tag = j;
            button.titleLabel.font = [UIFont systemFontOfSize:15];
            [button setTitleColor:[UIColor colorWithRed:(57.0/255) green:(170.0/255) blue:(196.0/255) alpha:1] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor colorWithRed:(132.0/255) green:(132.0/255) blue:(132.0/255) alpha:1] forState:UIControlStateHighlighted];
            
            [button setTitle:s forState:UIControlStateNormal];
            [_alertView addSubview:button];
            if (hasCancelBtn == YES){
                [button addTarget:self action:@selector(cancalClick:) forControlEvents:UIControlEventTouchUpInside];
            }else{
                [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
            }
        }
        height += 54;
    } else {
        if (hasCancelBtn == YES){
            [argsArray addObject:argsArray[0]];
            [argsArray removeObjectAtIndex:0];
        }
        for (int j = 0; j < [argsArray count]; j++){
            NSString *s = argsArray[j];
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = [UIColor clearColor];
            button.frame = CGRectMake(0, height, CGRectGetWidth(_alertView.frame), 44);
            button.layer.borderColor = [UIColor colorWithWhite:0 alpha:0.1].CGColor;
            button.layer.borderWidth = 0.5;
            button.tag = j;
            button.titleLabel.font = [UIFont systemFontOfSize:15];
            [button setTitleColor:[UIColor colorWithRed:(57.0/255) green:(170.0/255) blue:(196.0/255) alpha:1] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor colorWithRed:(132.0/255) green:(132.0/255) blue:(132.0/255) alpha:1] forState:UIControlStateHighlighted];
            
            [button setTitle:s forState:UIControlStateNormal];
            [_alertView addSubview:button];
            if (hasCancelBtn == YES){
                [button addTarget:self action:@selector(cancalClick:) forControlEvents:UIControlEventTouchUpInside];
            }else{
                [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
            }
            height = CGRectGetMaxY(button.frame);
        }
    }
    CGRect rect2 =  _alertView.frame;
    rect2.size.height = height;
    _alertView.frame = rect2;
    _alertView.center = CGPointMake(screenBounds.size.width/2, screenBounds.size.height/2);
}

#pragma mark - search
/**
 *  显示键盘
 *
 *  @param note
 */
- (void)keyBoardWillShow:(NSNotification *)note{
    
    CGRect screenBounds = getScreenBounds();
    CGRect rect = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    [UIView animateWithDuration:[note.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue] animations:^{
        CGRect viewRect = _alertView.frame;
        viewRect.origin.y = CGRectGetHeight(screenBounds)-rect.size.height-viewRect.size.height;
        _alertView.frame = viewRect;
    }completion:^(BOOL finished) {
    }];
}

/**
 *  隐藏键盘
 */
- (void)keyBoardWillHide:(NSNotification *)note{
    [UIView animateWithDuration:[note.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue] animations:^{
        _alertView.center = self.center;
    }];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [_textField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}

/**
 *  设置取消的Block copy
 *
 *  @param cancelBlock 取消的Block
 */
- (void)setCancelBlock:(CancelAlertBlock)cancelBlock{
    _cancelBlock = [cancelBlock copy];
}

/**
 *  设置点击的Block copy
 *
 *  @param clickBlock 点击的Block
 */
- (void)setClickBlock:(ClicksAlertBlock)clickBlock{
    _clickBlock = [clickBlock copy];
}

@end
