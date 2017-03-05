//
//  TezButtons.h
//  foodflyios
//
//  Created by TezPark on 2015. 11. 24..
//  Copyright © 2015년 TezPark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define colorWhite [UIColor whiteColor]
#define colorBlue UIColorFromRGB(0x25C1F1)
#define colorRed UIColorFromRGB(0xFF717E)
#define colorText UIColorFromRGB(0x464646)
#define colorGray UIColorFromRGB(0xD5D5D5)
#define colorDarkGray UIColorFromRGB(0x222222)


#pragma mark - TezButton SuperClass
/**
 Customizing button's super class
 */
@interface TezButton : UIButton

/**
 Initialize button with all options

 @param frame           Frame size
 @param enable          Rounding corner option
 @param isAllBoldtext   Bold text option
 @param enableBorder    Border option
 @param titleColor      Title color
 @param backgroundColor Background color
 @param magnification   Magnification level
 @param fontSize        Text font size
 @param cornerRadius    Corner radius
 @param cornerOption    Corner option

 @return self
 */
- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder titleColor:(UIColor*)titleColor backgroundColor:(UIColor*)backgroundColor magnification:(double)magnification fontSize:(CGFloat)fontSize cornerRadius:(CGFloat)cornerRadius cornerOption:(UIRectCorner)cornerOption;

/**
 (For SubClass) Initialize button with all options
 
 @param frame           Frame size
 @param enable          Rounding corner option
 @param isAllBoldtext   Bold text option
 @param enableBorder    Border option
 @param magnification   Magnification level
 @param fontSize        Text font size
 @param cornerRadius    Corner radius
 @param cornerOption    Corner option
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder magnification:(double)magnification fontSize:(CGFloat)fontSize cornerRadius:(CGFloat)cornerRadius cornerOption:(UIRectCorner)cornerOption;

/**
 Initialize button with title options (Don't use subclass)
 
 @param frame           Frame size
 @param isAllBoldtext   Bold text option
 @param titleColor      Title color
 @param fontSize        Text font size
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame
         titleColor:(UIColor*)titleColor
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext;

/**
 Initialize button with title & color options (Don't use subclass)
 
 @param frame           Frame size
 @param isAllBoldtext   Bold text option
 @param titleColor      Title color
 @param backgroundColor Background color
 @param fontSize        Text font size
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame
         titleColor:(UIColor*)titleColor
    backgroundColor:(UIColor*)backgroundColor
           fontSize:(CGFloat)fontSize
        allBoldText:(BOOL)isAllBoldtext;

/**
 Initialize button with rounding corner options
 
 @param frame           Frame size
 @param enable          Rounding corner option
 @param cornerRadius    Corner radius
 @param cornerOption    Corner option
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption;

/**
 Initialize button with rounding corner & border options
 
 @param frame           Frame size
 @param enable          Rounding corner option
 @param cornerRadius    Corner radius
 @param cornerOption    Corner option
 @param enableBorder    Border option
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame
     roundingCorner:(BOOL)enable
       cornerRadius:(CGFloat)cornerRadius
       cornerOption:(UIRectCorner)cornerOption
             border:(BOOL)enableBorder;

@end


#pragma mark - TezButton SubClass
/** White button (TezButton SubClass) */
@interface WhiteButton : TezButton
@end

/** Gray button (TezButton SubClass) */
@interface GrayButton : TezButton
@end

/** Dark gray button (TezButton SubClass) */
@interface DarkGrayButton : TezButton
@end

/** Blue button (TezButton SubClass) */
@interface BlueButton : TezButton
@end

/** Red button (TezButton SubClass) */
@interface RedButton : TezButton
@end

#pragma mark - Text align button (SuperClass)
@interface TextAlignButton : UIButton

/**
 Initialize bottom label button with content gap size

 @param isVertical  Text vertical alignment
 @param isSwitching text, image switching
 @param gap         content gap
 */
- (void)setAlignment:(BOOL)isVertical isSwitching:(BOOL)isSwitching withGap:(CGFloat)gap;
@end

#pragma mark - Bottm label Button
/** Place the button's label on the bottom. */
@interface BottomLabelButton : TextAlignButton

/**
 Initialize bottom label button with content gap size

 @param frame      frame size
 @param contentGap content gap size

 @return self
 */
- (id)initWithFrame:(CGRect)frame contentGap:(CGFloat)contentGap;
@end

#pragma mark - Left label Button
/** Right image button */
@interface LeftLabelButton : TextAlignButton

/**
 Initialize left label button with content gap size
 
 @param frame      frame size
 @param contentGap content gap size
 
 @return self
 */
- (id)initWithFrame:(CGRect)frame contentGap:(CGFloat)contentGap;
@end

#pragma mark - Text underline Button
/** Text Underline button */
@interface UnderlineButton : UIButton
@end

#pragma mark - Include data Button
/** Incluging data button */
@interface IncludeDataButton : UIButton
@property (nonatomic, strong) NSDictionary* info;
@end
