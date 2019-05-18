[![Platform](https://img.shields.io/cocoapods/p/TezButton.svg?style=flat)](http://cocoapods.org/pods/TezButton)
[![GitHub language](https://img.shields.io/badge/language-objective--c-6BAEE4.svg)]()
[![Version](https://img.shields.io/cocoapods/v/TezButton.svg?style=flat)](http://cocoapods.org/pods/TezButton)
[![License](https://img.shields.io/cocoapods/l/TezButton.svg?style=flat)](http://cocoapods.org/pods/TezButton)
[![Travis build](https://travis-ci.org/tezpark/TezButton.svg?branch=master)](https://travis-ci.org/tezpark/TezButton)

# TezButton
Custom UIButton

## Summary
* TezButton is easily support customized button for using. 
* Include button type is:
  * Title, Font
  * Rounding corner
  * Bolder
  * Underline
  * Right image/ Left label
  * Top image / left label
* Support the Inspector Builder
## Screenshot
![example](https://cloud.githubusercontent.com/assets/389004/25770963/5abfdf1c-327e-11e7-8432-187f28a3bb81.png)


## Installation
#### CocoaPods
TezButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TezButton"
```

## Usage
```objective-c
// All options (Tezbutton superclass)
    TezButton* allOptBtn = [[TezButton alloc] initWithFrame:frame
                                             roundingCorner:YES
                                                allBoldText:YES
                                                     border:YES
                                                 titleColor:colorText
                                            backgroundColor:colorWhite
                                              magnification:1
                                                   fontSize:12
                                               cornerRadius:8
                                               cornerOption:UIRectCornerAllCorners];
    [allOptBtn setTitle:@"TezButton Superclass (All option)" forState:UIControlStateNormal];
    
    // fontsize, bold option
    GreenButton* titleOptBtn = [[GreenButton alloc] initWithFrame:frame
                                                         fontSize:14
                                                      allBoldText:YES];
    [titleOptBtn setTitle:@"FontSize, Bold" forState:UIControlStateNormal];
    
    // Title, bold option
    RedButton* titleOptBtn2 = [[RedButton alloc] initWithFrame:frame
                                                         title:@"Title, Bold"
                                                   allBoldText:YES];
    
    // Title, font option
    SkyBlueButton* titleOptBtn3 = [[SkyBlueButton alloc] initWithFrame:frame
                                                                 title:@"Title, Font"
                                                                  font:[UIFont boldSystemFontOfSize:12]];
    
    // titleColor, fontsize, bold option
    OrangeButton* titleOptBtn4 = [[OrangeButton alloc] initWithFrame:frame
                                                          titleColor:colorText
                                                            fontSize:14
                                                         allBoldText:YES];
    [titleOptBtn4 setTitle:@"TitleColor, FontSize, Bold" forState:UIControlStateNormal];
    
    // Corner, Radius option
    BlueButton* cornerOptBtn = [[BlueButton alloc] initWithFrame:frame
                                                  roundingCorner:YES
                                                    cornerRadius:15];
    [cornerOptBtn setTitle:@"Corner, Radius" forState:UIControlStateNormal];
    
    // Corner, RectCorner, Radius options
    YellowButton* cornerOptBtn2 = [[YellowButton alloc] initWithFrame:frame
                                                       roundingCorner:YES
                                                         cornerRadius:15
                                                         cornerOption:UIRectCornerTopLeft|UIRectCornerBottomRight];
    [cornerOptBtn2 setTitle:@"Corner, RectCorner, Radius" forState:UIControlStateNormal];
    
    // Corner, Radius, Bolder
    PurpleButton* cornerOptBtn3 = [[PurpleButton alloc] initWithFrame:frame
                                                       roundingCorner:YES
                                                         cornerRadius:15
                                                               border:YES];
    [cornerOptBtn3 setTitle:@"Corner, Radius, Bolder" forState:UIControlStateNormal];
    
    
    // Bottom label button
    BottomLabelButton* bottomLabelBtn = [[BottomLabelButton alloc] initWithFrame:frame contentGap:5];
    
    // Left label button
    LeftLabelButton* leftLabelButton = [[LeftLabelButton alloc] initWithFrame:frame contentGap:5];
    
    // Include Data option
    IncludeDataButton* includeDataBtn = [[IncludeDataButton alloc] initWithFrame:frame];
    [includeDataBtn setData:[NSDictionary new]];
    
    // Underline option
    UnderlineButton* underlineBtn = [[UnderlineButton alloc] initWithFrame:frame];
```


## License
The MIT License (MIT)

Copyright (c) 2017 Taesun Park

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
