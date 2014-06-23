#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*) [CCBReader load:@"Character"]; //loads Character from CCB files
    [physicsNode addChild:character]; //adds character as child of physicsNode, so physics applies to it
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta; //approx. 1/60 of a second
    
    // check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        //add a new obstacle
        [self addObstacle];
        
        //then reset the timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan: (UITouch *)touch withEvent:(UIEvent *)event
{
    //this will get called every time the player touches the screen
    [character flap];
}

@end
