#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*) [CCBReader load:@"Character"]; //loads Character from CCB files
    [physicsNode addChild:character]; //adds character as child of physicsNode, so physics applies to it
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan: (UITouch *)touch withEvent:(UIEvent *)event
{
    //this will get called every time the player touches the screen
    [character flap]; 
}

@end
