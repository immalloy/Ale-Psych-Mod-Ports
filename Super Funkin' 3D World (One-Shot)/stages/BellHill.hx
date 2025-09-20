var goombas:FlxSprite;

function onCreate()
{
    var sky = new FlxSprite(-507.5, -278.5);
    sky.loadGraphic(Paths.image('stages/bellhill/Skybox'));
    sky.antialiasing = ClientPrefs.data.antialiasing;
    sky.scrollFactor.set(0.4, 0.4);
    addBehindGF(sky);

    var wall = new FlxSprite(-507.5, -278.5);
    wall.loadGraphic(Paths.image('stages/bellhill/Wall'));
    wall.antialiasing = ClientPrefs.data.antialiasing;
    wall.scrollFactor.set(0.85, 0.85);
    addBehindGF(wall);

    var bgLevel = new FlxSprite(803, 59);
    bgLevel.loadGraphic(Paths.image('stages/bellhill/Level'));
    bgLevel.antialiasing = ClientPrefs.data.antialiasing;
    bgLevel.scrollFactor.set(0.65, 0.65);
    addBehindGF(bgLevel);

    var ground = new FlxSprite(-512, -279);
    ground.loadGraphic(Paths.image('stages/bellhill/Ground'));
    ground.antialiasing = ClientPrefs.data.antialiasing;
    ground.scrollFactor.set(0.99, 0.99);
    addBehindGF(ground);

    goombas = new FlxSprite(-600, 850);
    goombas.frames = Paths.getAtlas('stages/bellhill/Goombas');
    goombas.animation.addByPrefix('idle', 'Goombas0', 24, false);
    goombas.animation.play('idle', true);
    goombas.scrollFactor.set(1.7, 1.5);
    goombas.antialiasing = ClientPrefs.data.antialiasing;
    add(goombas);
}

function onCountdownTick(count:Countdown, num:Int)
{
    onBeatHit(0);
}

function onBeatHit(b:Int)
{
    if (b % 2 == 0)
        goombas.animation.play('idle', true);
}