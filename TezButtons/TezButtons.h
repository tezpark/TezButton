//
//  TezButtons.h
//  foodflyios
//
//  Created by TezPark on 2015. 11. 24..
//  Copyright © 2015년 TezPark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 Customizing button's super class
 */
@interface TezButton : UIButton
@property (nonatomic, assign) BOOL isAllBoldtext;
@property (nonatomic, assign) BOOL enableRoundingCorner;
@property (nonatomic, assign) BOOL enableBorder;
@property (nonatomic, assign) double magnification;

@property (nonatomic, strong) UIColor* btnTitleColor;
@property (nonatomic, strong) UIColor* btnTitleColor_highlighted;
@property (nonatomic, strong) UIColor* btnTitleColor_disabled;
@property (nonatomic, strong) UIColor* btnBackgroundColor;
@property (nonatomic, strong) UIColor* btnBackgroundColor_highlighted;
@property (nonatomic, strong) UIColor* btnBackgroundColor_disabled;

@property (nonatomic, assign) CGFloat fontSize;


/**
 Initialize button with options

 @param frame         Button frame
 @param enable        Rounding corner option
 @param isAllBoldtext Bold text option
 @param enableBorder  Boarder option
 @param fontSize      Text font size

 @return self
 */
- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder fontSize:(CGFloat)fontSize;


/**
 Initialize button with options

 @param frame         Button frame
 @param enable        Rounding corner option
 @param isAllBoldtext Bold text option
 @param enableBorder  Boarder option
 @param magnification Magnification level

 @return self
 */
- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder magnification:(double)magnification;


/**
 Initialize button with options
 
 @param frame         Button frame
 @param enable        Rounding corner option
 @param isAllBoldtext Bold text option
 @param enableBorder  Boarder option

 @return self
 */
- (id)initWithFrame:(CGRect)frame roundingCorner:(BOOL)enable allBoldText:(BOOL)isAllBoldtext border:(BOOL)enableBorder;
@end



/** White button */
@interface WhiteButton : TezButton
@end

/** Gray button */
@interface GrayButton : TezButton
@end

/** Dark gray button */
@interface DarkGrayButton : TezButton
@end

/** Blue button */
@interface BlueButton : TezButton
@end

/** Red button */
@interface RedButton : TezButton
@end


/** Place the button's label on the bottom. */
@interface BottomLabelButton : UIButton

/**
 Initialize button with options

 @param isVertical  Vertical status of label
 @param isSwitching <#isSwitching description#>
 @param gap        <#fGap description#>
 */
- (void)setAlignment:(BOOL)isVertical isSwitching:(BOOL)isSwitching withGap:(CGFloat)gap;
@end


/** Right image button */
@interface RightImageButton : UIButton
@end

/** Underline text button */
@interface UnderlineButton : UIButton
@end

/** Incluging data button */
@interface IncludeDataButton : UIButton
@property (nonatomic, strong) NSDictionary* info;
@end
