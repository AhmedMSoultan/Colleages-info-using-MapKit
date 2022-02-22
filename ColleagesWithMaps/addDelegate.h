//
//  addDelegate.h
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"

NS_ASSUME_NONNULL_BEGIN

@protocol addDelegate <NSObject>

-(void)addNewColleague: (Colleague*) newColleague;

@end

NS_ASSUME_NONNULL_END
