var overlay:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height);
overlay.color = FlxColor.RED;
add(overlay);
overlay.cameras = [game.camOther];
overlay.alpha = 0;

function onBeatHit(curBeat:Int)
{
	if (curBeat == 543)
	{
		FlxTween.tween(overlay, {alpha: 1}, 0.8, {
			onComplete: (_) -> {
				FlxTween.color(overlay, 0.8, overlay.color, FlxColor.BLACK);
			}
		});
	}
}