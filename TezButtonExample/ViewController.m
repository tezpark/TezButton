//
//  ViewController.m
//  TezButtonExample
//
//  Created by Park Taesun on 2017. 2. 26..
//  Copyright © 2017년 TezLab. All rights reserved.
//

#import "ViewController.h"
#import "TezButtons.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    [self makeButtons];
}

- (void)makeButtons {
    CGFloat originX = 20.0f;
    CGFloat originY = 50.0f;
    
    // All options
    TezButton* allOptBtn = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
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
    [self.view addSubview:allOptBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    TezButton* allOptBtn2 = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
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
    [self.view addSubview:allOptBtn2];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    // Title, color options
    TezButton* titleOptBtn = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                   titleColor:colorText
                                                     fontSize:12
                                                  allBoldText:YES];
    [titleOptBtn setTitle:@"Title options button" forState:UIControlStateNormal];
    [self.view addSubview:titleOptBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    TezButton* titleAndColorOptBtn = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                           titleColor:colorText
                                                      backgroundColor:colorGray
                                                             fontSize:12
                                                          allBoldText:YES];
    [titleAndColorOptBtn setTitle:@"Title & color options button" forState:UIControlStateNormal];
    [self.view addSubview:titleAndColorOptBtn];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    // Corner, border options
    TezButton* cornerOptBtn = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                roundingCorner:YES
                                                  cornerRadius:8
                                                  cornerOption:UIRectCornerAllCorners];
    [cornerOptBtn setTitle:@"Corner options button" forState:UIControlStateNormal];
    [self.view addSubview:cornerOptBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    TezButton* cornerAndBorderOptBtn = [[TezButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                         roundingCorner:YES
                                                           cornerRadius:8
                                                           cornerOption:UIRectCornerBottomLeft|UIRectCornerTopRight
                                                                 border:YES];
    [cornerAndBorderOptBtn setTitle:@"Corner & border options button" forState:UIControlStateNormal];
    [self.view addSubview:cornerAndBorderOptBtn];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    // Corner, border options
    BlueButton* blueBtn = [[BlueButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                             roundingCorner:YES
                                               cornerRadius:8
                                               cornerOption:UIRectCornerAllCorners];
    [blueBtn setTitle:@"Blue button (subclass)" forState:UIControlStateNormal];
    [self.view addSubview:blueBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    RedButton* redBtn = [[RedButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                             roundingCorner:YES
                                               cornerRadius:8
                                               cornerOption:UIRectCornerAllCorners];
    [redBtn setTitle:@"Red button (subclass)" forState:UIControlStateNormal];
    [self.view addSubview:redBtn];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    // Bottom label button
    BottomLabelButton* bottomLabelBtn = [[BottomLabelButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 70) contentGap:10];
    [bottomLabelBtn setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [bottomLabelBtn setBackgroundColor:colorDarkGray];
    [bottomLabelBtn setTitle:@"Bottom label" forState:UIControlStateNormal];
    [self.view addSubview:bottomLabelBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    // Left label button
    LeftLabelButton* leftLabelButton = [[LeftLabelButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 70) contentGap:10];
    [leftLabelButton setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [leftLabelButton setBackgroundColor:colorDarkGray];
    [leftLabelButton setTitle:@"Left label" forState:UIControlStateNormal];
    [self.view addSubview:leftLabelButton];

    originX = 20.0f;
    originY += (70.0f + 20.0f);
    
    // Include Data option
    IncludeDataButton* includeDataBtn = [[IncludeDataButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 70)];
    [includeDataBtn setInfo:[NSDictionary new]];
    [includeDataBtn setTitle:@"Include data btn" forState:UIControlStateNormal];
    [self.view addSubview:includeDataBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    // Corner, border options
    UnderlineButton* underlineBtn = [[UnderlineButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 70)];
    [underlineBtn setBackgroundColor:colorDarkGray];
    [underlineBtn setTitle:@"Underline Btn" forState:UIControlStateNormal];
    [self.view addSubview:underlineBtn];
    
    originX = 20.0f;
    originY += (70.0f + 20.0f);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
