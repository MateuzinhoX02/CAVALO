package;

import flixel.FlxState;
import flixel.system.FlxSound;

class PlayState extends FlxState
{
	override public function create()
	{
		var text = new flixel.text.FlxText(0, 0, 0, "Toque na tela", 64);
		text.screenCenter();
		add(text);

		var justTouched:Bool = false;

		for (touch in FlxG.touches.list)
		{
			if (touch.justPressed)
			{
				justTouched = true;
			}
		}

		if (justTouched)
		{
			FlxG.sound.play('OSU');
		}

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
