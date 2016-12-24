//
//  QJBMusic.h
//  QJBMusicPlayer
//
//  Created by macbookpro on 16/12/24.
//  Copyright © 2016年 macbookpro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONAPI.h"

@interface QJBMusic : JSONModel

/** 歌手图片 */
@property (copy, nonatomic) NSString *image;

/** 歌曲文件名称 */
@property (copy, nonatomic) NSString *mp3;

/** 歌曲 */
@property (copy, nonatomic) NSString *lrc;

/** 歌名 */
@property (copy, nonatomic) NSString *name;

/** 歌手 */
@property (copy, nonatomic) NSString *singer;






@end
