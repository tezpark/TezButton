//
//  ViewController.m
//  TezButtonExample
//
//  Created by Park Taesun on 2017. 2. 26..
//  Copyright © 2017년 TezLab. All rights reserved.
//

#import "ViewController.h"
#import "TezButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColorFromRGB(0xDAE4E8)];
    [self makeButtons];
}

- (void)makeButtons {
    CGFloat originX = 20.0f;
    CGFloat originY = 50.0f;
    
    // All options (Tezbutton superclass)
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
    [allOptBtn setTitle:@"TezButton Superclass (All option)" forState:UIControlStateNormal];
    [self.view addSubview:allOptBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    
    // fontsize, bold option
    GreenButton* titleOptBtn = [[GreenButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                              fontSize:14
                                                  allBoldText:YES];
    [titleOptBtn setTitle:@"FontSize, Bold" forState:UIControlStateNormal];
    [self.view addSubview:titleOptBtn];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    
    // Title, bold option
    RedButton* titleOptBtn2 = [[RedButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                               title:@"Title, Bold"
                                                         allBoldText:YES];
    [self.view addSubview:titleOptBtn2];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    
    // Title, font option
    SkyBlueButton* titleOptBtn3 = [[SkyBlueButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                                  title:@"Title, Font"
                                                                   font:[UIFont boldSystemFontOfSize:12]];
    [self.view addSubview:titleOptBtn3];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);
    
    
    // titleColor, fontsize, bold option
    OrangeButton* titleOptBtn4 = [[OrangeButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                titleColor:colorText
                                                          fontSize:14
                                                       allBoldText:YES];
    [titleOptBtn4 setTitle:@"TitleColor, FontSize, Bold" forState:UIControlStateNormal];
    [self.view addSubview:titleOptBtn4];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    
    // Corner, Radius option
    BlueButton* cornerOptBtn = [[BlueButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                                         roundingCorner:YES
                                                          cornerRadius:15];
    [cornerOptBtn setTitle:@"Corner, Radius" forState:UIControlStateNormal];
    [self.view addSubview:cornerOptBtn];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f);

    
    // Corner, RectCorner, Radius options
    YellowButton* cornerOptBtn2 = [[YellowButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                             roundingCorner:YES
                                               cornerRadius:15
                                               cornerOption:UIRectCornerTopLeft|UIRectCornerBottomRight];
    [cornerOptBtn2 setTitle:@"Corner, RectCorner, Radius" forState:UIControlStateNormal];
    [self.view addSubview:cornerOptBtn2];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    // Corner, Radius, Bolder
    PurpleButton* cornerOptBtn3 = [[PurpleButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 50)
                                             roundingCorner:YES
                                               cornerRadius:15
                                               border:YES];
    [cornerOptBtn3 setTitle:@"Corner, Radius, Bolder" forState:UIControlStateNormal];
    [self.view addSubview:cornerOptBtn3];
    
    originX = 20.0f;
    originY += (50.0f + 20.0f) + 100;
    
    
    
    
    
    // Bottom label button
    BottomLabelButton* bottomLabelBtn = [[BottomLabelButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 60) contentGap:5];
    [bottomLabelBtn setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [bottomLabelBtn setBackgroundColor:colorWhite];
    [bottomLabelBtn setTitleColor:colorText forState:UIControlStateNormal];
    [bottomLabelBtn setTitle:@"Bottom label" forState:UIControlStateNormal];
    [self.view addSubview:bottomLabelBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    // Left label button
    LeftLabelButton* leftLabelButton = [[LeftLabelButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 60) contentGap:5];
    [leftLabelButton setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [leftLabelButton setBackgroundColor:colorWhite];
    [leftLabelButton setTitleColor:colorText forState:UIControlStateNormal];
    [leftLabelButton setTitle:@"Left label" forState:UIControlStateNormal];
    [self.view addSubview:leftLabelButton];

    originX = 20.0f;
    originY += (70.0f + 20.0f);
    
    // Include Data option
    IncludeDataButton* includeDataBtn = [[IncludeDataButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 60)];
    [includeDataBtn setData:[NSDictionary new]];
    [includeDataBtn setBackgroundColor:colorPink];
    [includeDataBtn setTitleColor:colorWhite forState:UIControlStateNormal];
    [includeDataBtn setTitle:@"Include data btn" forState:UIControlStateNormal];
    [self.view addSubview:includeDataBtn];
    
    originX = self.view.frame.size.width/2 + 20*0.5;
    
    // Underline option
    UnderlineButton* underlineBtn = [[UnderlineButton alloc] initWithFrame:CGRectMake(originX, originY, self.view.frame.size.width/2 - 20*1.5, 60)];
    [underlineBtn setBackgroundColor:colorWhite];
    [underlineBtn setTitleColor:colorText forState:UIControlStateNormal];
    [underlineBtn setTitle:@"Underline Btn" forState:UIControlStateNormal];
    [self.view addSubview:underlineBtn];
    
    originX = 20.0f;
    originY += (70.0f + 20.0f);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
