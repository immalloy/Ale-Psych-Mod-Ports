import flixel.FlxSprite;

var bg:FlxSprite;
var bg2:FlxSprite;
var stageFront:FlxSprite;

function onCreate()
{
    bg = new FlxSprite(-1240, -710);
    bg.loadGraphic(Paths.image('stages/Alley_CG_2/MNM_BG1_1'));
    bg.antialiasing = ClientPrefs.data.antialiasing;
    bg.scrollFactor.set(0.9, 0.9);
    addBehindGF(bg);

    bg2 = new FlxSprite(-1220, -700);
    bg2.loadGraphic(Paths.image('stages/Alley_CG_2/MNM_BG1_2'));
    bg2.antialiasing = ClientPrefs.data.antialiasing;
    bg2.scrollFactor.set(0.9, 0.9);
    addBehindGF(bg2);

    stageFront = new FlxSprite(-1240, -700);
    stageFront.loadGraphic(Paths.image('stages/Alley_CG_2/MNM_BG1_3'));
    stageFront.antialiasing = ClientPrefs.data.antialiasing;
    stageFront.scrollFactor.set(0.9, 0.9);
    addBehindGF(stageFront);
}
