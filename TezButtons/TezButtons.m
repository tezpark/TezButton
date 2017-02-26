//
//  TezButtons.m
//  foodflyios
//
//  Created by TezPark on 2015. 11. 24..
//  Copyright © 2015년 TezPark. All rights reserved.
//

#import "TezButtons.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define colorWhite [UIColor whiteColor]

#define colorBlue UIColorFromRGB(0x25C1F1)
#define colorBlueP UIColorFromRGB(0x0099C8)

#define colorRed UIColorFromRGB(0xFF717E)
#define colorRedP UIColorFromRGB(0xFF717E)

#define colorText UIColorFromRGB(0x464646)

#define colorGray UIColorFromRGB(0xD5D5D5)
#define colorGrayP UIColorFromRGB(0xA8A8A8)

#define colorDarkGray UIColorFromRGB(0x222222)
#define colorDarkGrayP UIColorFromRGB(0x666666)


#pragma mark - TezButton
@interface TezButton()
@end

@implementation TezButton

- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder{
    self = [super initWithFrame:frame];
    if (self) {
        self.isAllBoldtext = isAllBoldtext;
        self.enableRoundingCorner = enable;
        self.enableBorder = enableBorder;
        self.magnification = 1;
        self.fontSize = 12;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder magnification:(double)magnification {
    self = [self initWithFrame:frame roundingCorner:enable allBoldText:isAllBoldtext border:enableBorder];
    if (self) {
        self.magnification = magnification;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder fontSize:(CGFloat)fontSize {
    self = [self initWithFrame:frame roundingCorner:enable allBoldText:isAllBoldtext border:enableBorder];
    if (self) {
        self.fontSize = fontSize;
    }
    return self;
}

- (void)layoutSubviews {
    if (self.magnification == 0) {self.magnification = 1;}
    if (self.fontSize == 0) {self.fontSize = 12;}
    
    if (self.state == UIControlStateNormal) {
        [self setTitleColor:self.btnTitleColor forState:UIControlStateNormal];
        [self setBackgroundColor:self.btnBackgroundColor];
    }
    else if (self.state == UIControlStateHighlighted){
        [self setTitleColor:self.btnTitleColor_highlighted forState:UIControlStateHighlighted];
        [self setBackgroundColor:self.btnBackgroundColor_highlighted];
    }
    else if (self.state == UIControlStateDisabled){
        [self setTitleColor:self.btnTitleColor_disabled forState:UIControlStateDisabled];
        [self setBackgroundColor:self.btnBackgroundColor_disabled];
    }
    else if (self.state == UIControlStateSelected){
        [self setTitleColor:self.btnTitleColor_highlighted forState:UIControlStateSelected];
        [self setBackgroundColor:self.btnBackgroundColor_highlighted];
    }
    
    [self.titleLabel setFont:(self.isAllBoldtext)?[UIFont boldSystemFontOfSize:self.fontSize*self.magnification]:[UIFont systemFontOfSize:self.fontSize*self.magnification]];
    
    [self setMaskToRoundingRect:self byRoundingCorners:self.enableRoundingCorner?UIRectCornerAllCorners:0 cornerRadious:CGSizeMake(8, 8) borderWidth:(self.enableBorder?(self.selected?0:1):0) borderColor:colorGray];
    //self.enableRoundingCorner?UIRectCornerAllCorners:0
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
@end


#pragma mark - WhiteButton
@implementation WhiteButton

- (void)layoutSubviews {
    self.btnTitleColor = colorText;
    self.btnTitleColor_highlighted = colorWhite;
    self.btnTitleColor_disabled = colorWhite;
    self.btnBackgroundColor = colorWhite;
    self.btnBackgroundColor_highlighted = colorRed;
    self.btnBackgroundColor_disabled = colorGray;
    
    [super layoutSubviews];
}

@end


#pragma mark - GrayButton
@implementation GrayButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnTitleColor_highlighted = colorWhite;
    self.btnTitleColor_disabled = colorWhite;
    self.btnBackgroundColor = colorGray;
    self.btnBackgroundColor_highlighted = colorGrayP;
//    self.btnBackgroundColor_disabled = colorDarkGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - DarkGrayButton
@implementation DarkGrayButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnTitleColor_highlighted = colorWhite;
    self.btnTitleColor_disabled = colorWhite;
    self.btnBackgroundColor = colorDarkGray;
    self.btnBackgroundColor_highlighted = colorDarkGrayP;
    self.btnBackgroundColor_disabled = colorGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - BlueButton
@implementation BlueButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnTitleColor_highlighted = colorWhite;
    self.btnTitleColor_disabled = colorWhite;
    self.btnBackgroundColor = colorBlue;
    self.btnBackgroundColor_highlighted = colorBlueP;
    self.btnBackgroundColor_disabled = colorGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - RedButton
@implementation RedButton

- (void)layoutSubviews {
    self.btnTitleColor = colorWhite;
    self.btnTitleColor_highlighted = colorWhite;
    self.btnTitleColor_disabled = colorWhite;
    self.btnBackgroundColor = colorRed;
    self.btnBackgroundColor_highlighted = colorRedP;
    self.btnBackgroundColor_disabled = colorGray;
    
    [super layoutSubviews];
}
@end


#pragma mark - BottomLabelButton
@interface BottomLabelButton() {
    BOOL m_isVerticalAlignment;
    BOOL m_isSwitchingSide;
    CGFloat m_gapBetweenContent;
}
@end

@implementation BottomLabelButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

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
        
        //현재 설정된 inset값 가져온다.
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

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setAlignment:m_isVerticalAlignment isSwitching:m_isSwitchingSide withGap:m_gapBetweenContent];
}

@end


#pragma mark - RightImage Button
@implementation RightImageButton

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame) -  self.imageEdgeInsets.right + self.imageEdgeInsets.left;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
    return frame;
}

@end

#pragma mark - Underline Button
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


#pragma mark - IncludeData Button
@implementation IncludeDataButton : UIButton
@end
