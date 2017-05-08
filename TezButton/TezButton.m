//
//  TezButton.m
//
//  Created by TezPark on 2015. 11. 24..
//  Copyright © 2015년 TezPark. All rights reserved.
//

#import "TezButton.h"

static const double DefaultMagnification = 1;
static const CGFloat DefaultFontSize = 13;
static const CGFloat DefaultCornerRadius = 8;
static const UIRectCorner DefaultCornerOption = UIRectCornerAllCorners;

#pragma mark - TezButton
@interface TezButton()
@property (nonatomic, assign) BOOL isAllBoldtext;
@property (nonatomic, assign) BOOL enableRoundingCorner;
@property (nonatomic, assign) BOOL enableBorder;
@property (nonatomic, strong) UIColor* btnTitleColor;
@property (nonatomic, strong) UIColor* btnBackgroundColor;
@property (nonatomic, assign) double magnification;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) NSString *titleStr;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) UIRectCorner cornerOption;
@end

@implementation TezButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        if (_btnTitleColor == nil) {_btnTitleColor = colorText;}
        if (_btnBackgroundColor == nil) {_btnBackgroundColor = colorWhite;}
        if (_magnification == 0) {_magnification = DefaultMagnification;}
        if (_fontSize == 0) {_fontSize = DefaultFontSize;}
        if (_cornerRadius == 0) {_cornerRadius = DefaultCornerRadius;}
        if (_cornerOption == 0) {_cornerOption = DefaultCornerOption;}
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
        allBoldText:(BOOL)isAllBoldtext
             border:(BOOL)enableBorder
         titleColor:(UIColor*)titleColor
    backgroundColor:(UIColor*)backgroundColor
      magnification:(double)magnification
           fontSize:(CGFloat)fontSize
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
{
    self = [self initWithFrame:frame];
    if (self) {
        _enableRoundingCorner = enable;
        _isAllBoldtext = isAllBoldtext;
        _enableBorder = enableBorder;
        if (titleColor != nil) {_btnTitleColor = titleColor;}
        if (backgroundColor != nil) {_btnBackgroundColor = backgroundColor;}
        if (magnification != 0) {_magnification = magnification;}
        if (fontSize != 0) {_fontSize = fontSize;}
        if (cornerRadius != 0) {_cornerRadius = cornerRadius;}
        if (cornerOption != 0) {_cornerOption = cornerOption;}
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
             border:(BOOL)enableBorder
         titleColor:(UIColor*)titleColor
    backgroundColor:(UIColor*)backgroundColor
      magnification:(double)magnification
               font:(UIFont*)font
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
{
    self = [self initWithFrame:frame];
    if (self) {
        _enableRoundingCorner = enable;
        _enableBorder = enableBorder;
        if (titleColor != nil) {_btnTitleColor = titleColor;}
        if (backgroundColor != nil) {_btnBackgroundColor = backgroundColor;}
        if (magnification != 0) {_magnification = magnification;}
        if (font != nil) {_font = font;}
        if (cornerRadius != 0) {_cornerRadius = cornerRadius;}
        if (cornerOption != 0) {_cornerOption = cornerOption;}
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
        allBoldText:(BOOL)isAllBoldtext
             border:(BOOL)enableBorder
      magnification:(double)magnification
           fontSize:(CGFloat)fontSize
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
{
    self = [self initWithFrame:frame];
    if (self) {
        _enableRoundingCorner = enable;
        _isAllBoldtext = isAllBoldtext;
        _enableBorder = enableBorder;
        if (magnification != 0) {_magnification = magnification;}
        if (fontSize != 0) {_fontSize = fontSize;}
        if (cornerRadius != 0) {_cornerRadius = cornerRadius;}
        if (cornerOption != 0) {_cornerOption = cornerOption;}
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
         titleColor:(UIColor *)titleColor
    backgroundColor:(UIColor *)backgroundColor
           fontSize:(CGFloat)fontSize
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption {
    self = [self initWithFrame:frame
                roundingCorner:enable
                   allBoldText:NO
                        border:NO
                    titleColor:titleColor
               backgroundColor:backgroundColor
                 magnification:0
                      fontSize:fontSize
                  cornerRadius:cornerRadius
                  cornerOption:cornerOption];
    if (self) {
    }
    return self;
}

// font&text

- (id)initWithFrame:(CGRect)frame
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext
{
    self = [self initWithFrame:frame roundingCorner:NO allBoldText:isAllBoldtext border:NO titleColor:nil backgroundColor:nil magnification:DefaultMagnification fontSize:fontSize cornerRadius:DefaultCornerRadius cornerOption:DefaultCornerOption];
    if (self) {}
    return self;
}

- (id)initWithFrame:(CGRect)frame
              title:(NSString*)title
        allBoldText:(BOOL)isAllBoldtext
{
    self = [self initWithFrame:frame roundingCorner:NO allBoldText:isAllBoldtext border:NO titleColor:nil backgroundColor:nil magnification:DefaultMagnification fontSize:DefaultFontSize cornerRadius:DefaultCornerRadius cornerOption:DefaultCornerOption];
    if (self) {
        _titleStr = title;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
              title:(NSString*)title
           font:(UIFont*)font
{
    self = [self initWithFrame:frame roundingCorner:NO border:NO titleColor:nil backgroundColor:nil magnification:DefaultMagnification font:font cornerRadius:DefaultCornerRadius cornerOption:DefaultCornerOption];
    if (self) {
        _titleStr = title;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
              title:(NSString*)title
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext
{
    self = [self initWithFrame:frame roundingCorner:NO allBoldText:isAllBoldtext border:NO titleColor:nil backgroundColor:nil magnification:DefaultMagnification fontSize:fontSize cornerRadius:DefaultCornerRadius cornerOption:DefaultCornerOption];
    if (self) {
        _titleStr = title;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
         titleColor:(UIColor*)titleColor
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext
{
    self = [self initWithFrame:frame roundingCorner:NO allBoldText:isAllBoldtext border:NO titleColor:titleColor backgroundColor:nil magnification:DefaultMagnification fontSize:fontSize cornerRadius:DefaultCornerRadius cornerOption:DefaultCornerOption];
    if (self) {}
    return self;
}

- (id)initWithFrame:(CGRect)frame
         titleColor:(UIColor*)titleColor
    backgroundColor:(UIColor*)backgroundColor
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext
{
    self = [self initWithFrame:frame titleColor:titleColor fontSize:fontSize allBoldText:isAllBoldtext];
    if (self) {
        if (backgroundColor != nil) {_btnBackgroundColor = backgroundColor;}
    }
    return self;
}

// rounding parent method
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
{
    self = [self initWithFrame:frame roundingCorner:enable allBoldText:NO border:NO titleColor:nil backgroundColor:nil magnification:0 fontSize:0 cornerRadius:cornerRadius cornerOption:cornerOption];
    if (self) {}
    return self;
}

// rounding child method
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
{
    self = [self initWithFrame:frame roundingCorner:enable cornerRadius:cornerRadius cornerOption:UIRectCornerAllCorners];
    if (self) {}
    return self;
}

// rounding child method
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
             border:(BOOL)enableBorder
{
    self = [self initWithFrame:frame roundingCorner:enable cornerRadius:cornerRadius cornerOption:cornerOption];
    if (self) {
        _enableBorder = enableBorder;
    }
    return self;
}

// rounding child method
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
             border:(BOOL)enableBorder
{
    self = [self initWithFrame:frame roundingCorner:enable cornerRadius:cornerRadius cornerOption:UIRectCornerAllCorners];
    if (self) {
        _enableBorder = enableBorder;
    }
    return self;
}

- (void)layoutSubviews {
    [self.titleLabel setNumberOfLines:0];
    
    if (self.state == UIControlStateNormal) {
        [self setTitleColor:_btnTitleColor forState:UIControlStateNormal];
        [self setBackgroundColor:_btnBackgroundColor];
    }
    else if (self.state == UIControlStateHighlighted){
        [self setTitleColor:[self darkerColor:_btnTitleColor] forState:UIControlStateHighlighted];
        [self setBackgroundColor:[self darkerColor:_btnBackgroundColor]];
    }
    else if (self.state == UIControlStateDisabled){
        [self setTitleColor:[self lighterColor:_btnTitleColor] forState:UIControlStateDisabled];
        [self setBackgroundColor:[self lighterColor:_btnBackgroundColor]];
    }
    else if (self.state == UIControlStateSelected){
        [self setTitleColor:[self darkerColor:_btnTitleColor] forState:UIControlStateSelected];
        [self setBackgroundColor:[self darkerColor:_btnBackgroundColor]];
    }
    
    if (_font)
        [self.titleLabel setFont:_font];
    else
        [self.titleLabel setFont:(_isAllBoldtext)?[UIFont boldSystemFontOfSize:_fontSize*_magnification]:[UIFont systemFontOfSize:_fontSize*_magnification]];
    
    if ([_titleStr length] > 0) {
        [self setTitle:_titleStr forState:UIControlStateNormal];
        _titleStr = @"";
    }
    
    
    if (_enableRoundingCorner || _enableBorder) {
        [self setMaskToRoundingRect:self
                  byRoundingCorners:_enableRoundingCorner?_cornerOption:0
                      cornerRadious:CGSizeMake(_cornerRadius, _cornerRadius)
                        borderWidth:(_enableBorder?(self.selected?0:2):0)
                        borderColor:colorText];
    }

    [super layoutSubviews];
}

#pragma mark - Common (Private)
- (void)setMaskToRoundingRect:(UIView*)view byRoundingCorners:(UIRectCorner)corners cornerRadious:(CGSize)size borderWidth:(CGFloat)borderWidth borderColor:(UIColor*)borderColor {
    UIBezierPath* rectPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:corners cornerRadii:size];
    
    CAShapeLayer *shape = [[CAShapeLayer alloc] init];
    [shape setPath:rectPath.CGPath];
    
    view.layer.mask = shape;
    
    if(borderWidth > 0){
        CAShapeLayer* borderPath = [CAShapeLayer layer];
        borderPath.path = rectPath.CGPath;
        [borderPath setFillColor:[[UIColor clearColor]CGColor]];
        [borderPath setStrokeColor:[borderColor CGColor]];
        [borderPath setLineWidth:borderWidth];
        [view.layer addSublayer:borderPath];
    }
}

- (UIColor *)lighterColor:(UIColor *)c
{
    CGFloat r, g, b, a;
    if ([c getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + 0.2, 1.0)
                               green:MIN(g + 0.2, 1.0)
                                blue:MIN(b + 0.2, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor:(UIColor *)c
{
    CGFloat r, g, b, a;
    if ([c getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MAX(r - 0.2, 0.0)
                               green:MAX(g - 0.2, 0.0)
                                blue:MAX(b - 0.2, 0.0)
                               alpha:a];
    return nil;
}
@end


#pragma mark - WhiteButton
@implementation WhiteButton

- (void)layoutSubviews {
    self.btnTitleColor = colorText;
    self.btnBackgroundColor = colorWhite;
    
    [super layoutSubviews];
}

@end


#pragma mark - GrayButton
@implementation GrayButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - DarkGrayButton
@implementation DarkGrayButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorDarkGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - RedButton
@implementation RedButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorRed;
    
    [super layoutSubviews];
}
@end


#pragma mark - OrangeButton
@implementation OrangeButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorOrange;
    
    [super layoutSubviews];
}
@end


#pragma mark - YellowButton
@implementation YellowButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorYellow;
    
    [super layoutSubviews];
}
@end


#pragma mark - GreenButton
@implementation GreenButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorGreen;
    
    [super layoutSubviews];
}
@end


#pragma mark - SkyBlueButton
@implementation SkyBlueButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorSkyBlue;
    
    [super layoutSubviews];
}
@end


#pragma mark - BlueButton
@implementation BlueButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorBlue;
    
    [super layoutSubviews];
}
@end


#pragma mark - PurpleButton
@implementation PurpleButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorPurple;
    
    [super layoutSubviews];
}
@end


#pragma mark - PinkButton
@implementation PinkButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnBackgroundColor = colorPink;
    
    [super layoutSubviews];
}
@end



#pragma mark - BottomLabelButton
@interface TextAlignButton() {
    BOOL m_isVerticalAlignment;
    BOOL m_isSwitchingSide;
    CGFloat m_gapBetweenContent;
}
@end

@implementation TextAlignButton

- (void)setAlignment:(BOOL)isVertical isSwitching:(BOOL)isSwitching withGap:(CGFloat)gap {
    m_isVerticalAlignment = isVertical;
    m_gapBetweenContent = gap;
    m_isSwitchingSide = isSwitching;
    if (isVertical == NO) {
        if(m_isSwitchingSide){
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            CGRect imageFrame = self.imageView.frame;
            CGRect titleFrame = self.titleLabel.bounds;
            
            UIEdgeInsets titleInset = [self titleEdgeInsets];
            UIEdgeInsets imageInset = [self imageEdgeInsets];
            
            imageInset.left = roundf(CGRectGetWidth(titleFrame)+gap/2);
            imageInset.right = -roundf(CGRectGetWidth(titleFrame)+gap/2);
            
            titleInset.left = -roundf(CGRectGetWidth(imageFrame)+gap/2);
            titleInset.right = roundf(CGRectGetWidth(imageFrame)+gap/2);
            
            [self setImageEdgeInsets:imageInset];
            [self setTitleEdgeInsets:titleInset];
        }
        else{
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            UIEdgeInsets inset = UIEdgeInsetsMake(0, gap, 0, 0);
            [self setTitleEdgeInsets:inset];
        }
    }
    else {
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
        
        CGRect selfBound = self.bounds;
        CGRect imageFrame = self.imageView.frame;
        CGRect titleFrame = self.titleLabel.bounds;
        
        // Get current button EdgeInset value
        UIEdgeInsets contentInset = [self contentEdgeInsets];
        UIEdgeInsets titleInset = [self titleEdgeInsets];
        UIEdgeInsets imageInset = [self imageEdgeInsets];
        
        //전체 위치: 세로 - 가운데. 가로 - 0 에 맞추자
        contentInset.top = roundf((selfBound.size.height - (CGRectGetHeight(imageFrame) + CGRectGetHeight(titleFrame) + gap)) / 2);
        contentInset.top = roundf(contentInset.top);
        
        //아이콘 위치 - 가로 위치만 계산해준다.
        imageInset.left = roundf((selfBound.size.width - CGRectGetWidth(imageFrame)) / 2);
        imageInset.left = roundf(imageInset.left);
        
        //텍스트는 아이콘 크기만큼 내려준다.
        titleInset.left = (selfBound.size.width - CGRectGetWidth(titleFrame)) / 2 - CGRectGetWidth(imageFrame);
        titleInset.left = roundf(titleInset.left);
        
        titleInset.top =  CGRectGetHeight(imageFrame) + gap;
        titleInset.top = roundf(titleInset.top);
        
        [self setContentEdgeInsets:contentInset];
        [self setImageEdgeInsets:imageInset];
        [self setTitleEdgeInsets:titleInset];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setAlignment:m_isVerticalAlignment isSwitching:m_isSwitchingSide withGap:m_gapBetweenContent];
}

@end

#pragma mark - Bottom Text Button
@implementation BottomLabelButton
- (id)initWithFrame:(CGRect)frame contentGap:(CGFloat)contentGap {
    self = [super initWithFrame:frame];
    if (self) {
        [self setAlignment:YES isSwitching:NO withGap:contentGap];
    }
    return self;
}
@end

#pragma mark - Left Label Button
@implementation LeftLabelButton
- (id)initWithFrame:(CGRect)frame contentGap:(CGFloat)contentGap {
    self = [super initWithFrame:frame];
    if (self) {
        [self setAlignment:NO isSwitching:YES withGap:contentGap];
    }
    return self;
}

//
//- (CGRect)imageRectForContentRect:(CGRect)contentRect {
//    CGRect frame = [super imageRectForContentRect:contentRect];
//    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame) -  self.imageEdgeInsets.right + self.imageEdgeInsets.left;
//    return frame;
//}
//
//- (CGRect)titleRectForContentRect:(CGRect)contentRect {
//    CGRect frame = [super titleRectForContentRect:contentRect];
//    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
//    return frame;
//}

@end


#pragma mark - Text Underline Button
@interface UnderlineButton()
@end

@implementation UnderlineButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void) drawRect:(CGRect)rect {
    CGRect textRect = self.titleLabel.frame;
    
    // need to put the line at top of descenders (negative value)
    CGFloat descender = self.titleLabel.font.descender;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    // set to same colour as text
    CGContextSetStrokeColorWithColor(contextRef, self.titleLabel.textColor.CGColor);
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender+4);
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender+4);
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}

@end


#pragma mark - Include data Button
@implementation IncludeDataButton : UIButton
@end
