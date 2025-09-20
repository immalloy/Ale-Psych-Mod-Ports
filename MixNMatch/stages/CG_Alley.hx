import flixel.FlxSprite;

var bg:FlxSprite;
var bgDup:FlxSprite;
var bg2:FlxSprite;
var stageFront:FlxSprite;

function onCreate()
{
    bg = new FlxSprite(-1240, -710);
    bg.loadGraphic(Paths.image('stages/Alley_CG/MNM_BG2_1'));
    bg.antialiasing = ClientPrefs.data.antialiasing;
    bg.scrollFactor.set(0.9, 0.9);
    addBehindGF(bg);

    bgDup = new FlxSprite(-1240, -710);
    bgDup.loadGraphic(Paths.image('stages/Alley_CG/MNM_BG2_1'));
    bgDup.antialiasing = ClientPrefs.data.antialiasing;
    bgDup.scrollFactor.set(0.9, 0.9);
    addBehindGF(bgDup);

    bg2 = new FlxSprite(-1220, -700);
    bg2.loadGraphic(Paths.image('stages/Alley_CG/MNM_BG2_2'));
    bg2.antialiasing = ClientPrefs.data.antialiasing;
    bg2.scrollFactor.set(0.9, 0.9);
    addBehindGF(bg2);

    stageFront = new FlxSprite(-1240, -700);
    stageFront.loadGraphic(Paths.image('stages/Alley_CG/MNM_BG2_3'));
    stageFront.antialiasing = ClientPrefs.data.antialiasing;
    stageFront.scrollFactor.set(0.9, 0.9);
    addBehindGF(stageFront);
}
