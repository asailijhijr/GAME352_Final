# GAME352_Final
The final project for my GAME 352 class.

Blocus-breaker

This is a 2D brick-breaker style game.  There is a paddle at the bottom of the screen with which the player identifies.  One or more balls bounce around the screen, gravity either does not exist or pulls orthogonally to the plane of the play area.  The top and side edges of the screen form walls that the balls bounce off of.  When a ball contacts a brick, it breaks or decrements its level.  All game objects have a level, which is either set at the start of the game scene and decrements with interactions or increments on interactions throughout the game.  The game is lost if all of the balls exit from the bottom of the screen.

The paddle never changes size, but it accumulates a glow based on the recent hits of balls on its three sections.  The player may tap the screen anywhere, but the paddle will only ever be on a line near the bottom of the screen, the taps align vertically with where the paddle teleports to.  If the user holds their finger on the screen (a persistent tap), the game time speeds up and everything moves faster, making the game harder, balancing against the 'following the ball' strategy.

Every object has a power level, which increments or decrements according to the desires and the actions of the player.  A ball's level goes up when that ball delivers the final blow and clears a column of bricks.  A brick's level goes down if the ball that hits it isn't powerful enough to break it (power level, not hit force).  The paddle's level goes up according to how many games the player has ever won.  The projectiles that the paddle emits are levelled based on the level of the paddle, they will decrease bricks' levels just like balls.


