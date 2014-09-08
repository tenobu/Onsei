//
//  NTViewController.m
//  Onsei
//
//  Created by ビザンコムマック０９ on 2014/09/08.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTViewController.h"

#import <AVFoundation/AVFoundation.h>

@interface NTViewController ()
{

	AVSpeechSynthesizer *speechSynthesizer;

}

@end

@implementation NTViewController

- (void)viewDidLoad
{
    
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	speechSynthesizer = [[AVSpeechSynthesizer alloc] init];

	// データを文字列に変換
	/*NSString *str = [[NSString alloc]initWithData: data
										 encoding: NSUTF8StringEncoding];*/
	
	NSString *str = @"こんにちわ     ";
	
	NSLog(@"%@", str);
	
	AVSpeechUtterance      *utterance = [AVSpeechUtterance speechUtteranceWithString: str];
	AVSpeechSynthesisVoice *JVoice    = [AVSpeechSynthesisVoice voiceWithLanguage: @"ja-JP"];
	
	// 音声の日本語化
	utterance.voice =  JVoice;
	
	NSLog( @"%@", str );
	// NSLog( @"bool_AudioResult == %d", bool_AudioResult );
	
	// 音声の発生
	[speechSynthesizer speakUtterance: utterance];
	
}

- (void)didReceiveMemoryWarning
{
    
	[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
