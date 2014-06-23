//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    //the two below are class scope
    Character* character; //stores instance of Flappy Bird
    CCPhysicsNode* physicsNode; //reference node that simulates physics
    float timeSinceObstacle;
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
