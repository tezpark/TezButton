# TezButton
Custom UIButtons

* TezButton is include Title/Backgound Color, border, corner radius options and Bottom/Left label, Include data button.

![Example](/tezpark/TezButton/edit/master/Example.png)

#Usage
```objective-c
// All options
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
    [allOptBtn setTitle:@"All options button" forState:UIControlStateNormal];
    
    TezButton* allOptBtn2 = [[TezButton alloc] initWithFrame:frame
                                              roundingCorner:YES
                                                 allBoldText:NO
                                                      border:NO
                                                  titleColor:colorWhite
                                             backgroundColor:colorText
                                               magnification:1.5
                                                    fontSize:12
                                                cornerRadius:8
                                                cornerOption:UIRectCornerTopLeft|UIRectCornerTopRight];
    [allOptBtn2 setTitle:@"All options button2" forState:UIControlStateNormal];
    
    // Title, color options
    TezButton* titleOptBtn = [[TezButton alloc] initWithFrame:frame
                                                   titleColor:colorText
                                                     fontSize:12
                                                  allBoldText:YES];
    [titleOptBtn setTitle:@"Title options button" forState:UIControlStateNormal];
    
    TezButton* titleAndColorOptBtn = [[TezButton alloc] initWithFrame:frame
                                                           titleColor:colorText
                                                      backgroundColor:colorGray
                                                             fontSize:12
                                                          allBoldText:YES];
    [titleAndColorOptBtn setTitle:@"Title & color options button" forState:UIControlStateNormal];
    
    // Corner, border options
    TezButton* cornerOptBtn = [[TezButton alloc] initWithFrame:frame
                                                roundingCorner:YES
                                                  cornerRadius:8
                                                  cornerOption:UIRectCornerAllCorners];
    [cornerOptBtn setTitle:@"Corner options button" forState:UIControlStateNormal];
    
    TezButton* cornerAndBorderOptBtn = [[TezButton alloc] initWithFrame:frame
                                                         roundingCorner:YES
                                                           cornerRadius:8
                                                           cornerOption:UIRectCornerBottomLeft|UIRectCornerTopRight
                                                                 border:YES];
    [cornerAndBorderOptBtn setTitle:@"Corner & border options button" forState:UIControlStateNormal];
    
    // Corner, border options
    BlueButton* blueBtn = [[BlueButton alloc] initWithFrame:frame
                                             roundingCorner:YES
                                               cornerRadius:8
                                               cornerOption:UIRectCornerAllCorners];
    [blueBtn setTitle:@"Blue button (subclass)" forState:UIControlStateNormal];
    
    RedButton* redBtn = [[RedButton alloc] initWithFrame:frame
                                             roundingCorner:YES
                                               cornerRadius:8
                                               cornerOption:UIRectCornerAllCorners];
    [redBtn setTitle:@"Red button (subclass)" forState:UIControlStateNormal];
    
    // Bottom label button
    BottomLabelButton* bottomLabelBtn = [[BottomLabelButton alloc] initWithFrame:frame contentGap:10];
    [bottomLabelBtn setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [bottomLabelBtn setBackgroundColor:colorDarkGray];
    [bottomLabelBtn setTitle:@"Bottom label" forState:UIControlStateNormal];
    [self.view addSubview:bottomLabelBtn];
    
    // Left label button
    LeftLabelButton* leftLabelButton = [[LeftLabelButton alloc] initWithFrame:frame contentGap:10];
    [leftLabelButton setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [leftLabelButton setBackgroundColor:colorDarkGray];
    [leftLabelButton setTitle:@"Left label" forState:UIControlStateNormal];
    [self.view addSubview:leftLabelButton];
    
    // Include Data option
    IncludeDataButton* includeDataBtn = [[IncludeDataButton alloc] initWithFrame:frame];
    [includeDataBtn setInfo:[NSDictionary new]];
    [includeDataBtn setTitle:@"Include data btn" forState:UIControlStateNormal];
    [self.view addSubview:includeDataBtn];
    
    // Underline option
    UnderlineButton* underlineBtn = [[UnderlineButton alloc] initWithFrame:frame];
    [underlineBtn setBackgroundColor:colorDarkGray];
    [underlineBtn setTitle:@"Underline Btn" forState:UIControlStateNormal];
    [self.view addSubview:underlineBtn];
```


#License
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
