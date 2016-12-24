//
//  QJBMusicManager.m
//  QJBMusicPlayer
//
//  Created by macbookpro on 16/12/24.
//  Copyright © 2016年 macbookpro. All rights reserved.
//

#import "QJBMusicManager.h"
#import <AVFoundation/AVFoundation.h>

@interface QJBMusicManager ()

@property(nonatomic,strong)AVAudioPlayer *audioPlayer;


@end

static QJBMusicManager *_instance;

@implementation QJBMusicManager


+(instancetype)defaultManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[QJBMusicManager alloc] init];
    });
    return _instance;
}


-(BOOL)playMusic:(NSURL *)url {
    if (url == nil) {
        return NO;
    }
    NSError *error;
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    [_audioPlayer prepareToPlay];
    
    return [_audioPlayer play];
}


-(void)pause {
    if ([_audioPlayer isPlaying]) {
        [_audioPlayer pause];
    }
}

-(void)stop {
    if (_audioPlayer != nil) {
        return ;
    }
    [_audioPlayer stop];
}

@end
