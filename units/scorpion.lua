unitDef = {
  unitname               = [[scorpion]],
  name                   = [[Scorpion]],
  description            = [[Cloaked Infiltration Strider]],
  acceleration           = 0.26,
  brakeRate              = 0.26,
  buildCostEnergy        = 3000,
  buildCostMetal         = 3000,
  builder                = false,
  buildPic               = [[scorpion.png]],
  buildTime              = 3000,
  canAttack              = true,
  canGuard               = true,
  canManualFire			 = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  cloakCost              = 2,
  cloakCostMoving        = 10,
  corpse                 = [[DEAD]],

  customParams           = {
    description_pl = [[Ciezki pajak bojowy]],
    helptext       = [[The Scorpion paralyzes enemies with its lightning sting and then chews them up with its particle beam claws. Its tough carapace shrugs off most enemy fire, and can also turn the Scorpion transparent.]],
    helptext_pl    = [[Scorpion to bojowy pajak, ktory paralizuje i szybko niszczy przeciwnikow; jego pancerz jest bardzo wytrzymaly i zapewnia mu maskowanie.]],
    cloakstealth   = [[1]],
  },

  explodeAs              = [[CRAWL_BLASTSML]],
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[t3spidergeneric]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  initCloaked			 = true,
  leaveTracks            = true,
  mass                   = 700,
  maxDamage              = 12000,
  maxSlope               = 72,
  maxVelocity            = 1.3,
  maxWaterDepth          = 22,
  minCloakDistance       = 150,
  movementClass          = [[TKBOT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[scorpion.s3o]],
  script				 = [[scorpion.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[CRAWL_BLASTSML]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:zeusmuzzle]],
      [[custom:zeusgroundflash]],
      [[custom:YELLOW_LIGHTNING_MUZZLE]],
      [[custom:YELLOW_LIGHTNING_GROUNDFLASH]],	  
    },

  },

  side                   = [[ARM]],
  sightDistance          = 440,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType				 = [[crossFoot]],
  trackWidth             = 76,
  turnRate               = 400,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[FAKELASER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 30,
    },  
    
    {
      def                = [[LIGHTNING]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[MULTILIGHTNING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },	
	
    {
      def                = [[PARTICLEBEAM]],
	  mainDir            = [[-0.2 0 1]],
      maxAngleDif        = 240,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
	
    {
      def                = [[PARTICLEBEAM]],
	  mainDir            = [[0.2 0 1]],
      maxAngleDif        = 240,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
	
  },


  weaponDefs             = {
    
    FAKELASER     = {
      name                    = [[Fake Laser]],
      areaOfEffect            = 12,
      beamTime                = 0.1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0,
        subs    = 0,
      },

      duration                = 0.11,
      edgeEffectiveness       = 0.99,
      explosionGenerator      = [[custom:flash1green]],
      fireStarter             = 70,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 5.53,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 450,
      reloadtime              = 0.11,
      rgbColor                = [[0 1 0]],
      soundStart              = [[weapon/laser/laser_burn5]],
      soundTrigger            = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 5.53,
      tolerance               = 10000,
      turret                  = false,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 900,
    },
    
    LIGHTNING = {
      name                    = [[Lightning Gun]],
      areaOfEffect            = 8,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        extra_damage = [[360]],
      },

      cylinderTargeting      = 0,

      damage                  = {
        default        = 1080,
        empresistant75 = 270,
        empresistant99 = 10.8,
      },

      duration                = 10,
      explosionGenerator      = [[custom:LIGHTNINGPLOSION]],
      fireStarter             = 50,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 12,
      interceptedByShieldType = 1,
      paralyzer               = true,
      paralyzeTime            = 3,
      range                   = 470,
      reloadtime              = 2,
      rgbColor                = [[0.5 0.5 1]],
      soundStart              = [[weapon/more_lightning_fast]],
      soundTrigger            = true,
      sprayAngle              = 900,
      texture1                = [[lightning]],
      thickness               = 10,
      turret                  = true,
      weaponType              = [[LightningCannon]],
      weaponVelocity          = 400,
    },
	
    MULTILIGHTNING = {
      name                    = [[Multi-Stunner]],
      areaOfEffect            = 160,
      avoidFeature            = false,
	  burst					  = 20,
	  burstRate				  = 0.1,
	  commandFire			  = true,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting      = 0,

      damage                  = {
        default        = 1001,
        empresistant75 = 250,
        empresistant99 = 10,
      },

      duration                = 8,
      dynDamageExp            = 0,
      edgeEffectiveness       = 0.8,
      explosionGenerator      = [[custom:YELLOW_LIGHTNINGPLOSION]],
      fireStarter             = 0,
      impulseBoost            = 0,
      impulseFactor           = 0,
      intensity               = 12,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      paralyzer               = true,
      paralyzeTime            = 3,
      range                   = 470,
      reloadtime              = 30,
      rgbColor                = [[1 1 0.25]],
      soundStart              = [[weapon/lightning_fire]],
      soundTrigger            = false,
	  sprayAngle			  = 2048,
      texture1                = [[lightning]],
      thickness               = 10,
      turret                  = true,
      weaponType              = [[LightningCannon]],
      weaponVelocity          = 450,
    },	

    PARTICLEBEAM = {
      name                    = [[Auto Particle Beam]],
      beamDecay               = 0.85,
      beamTime                = 0.01,
      beamttl                 = 45,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 60,
        subs    = 3,
      },

      explosionGenerator      = [[custom:flash1red]],
      fireStarter             = 100,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      laserFlareSize          = 7.5,
      minIntensity            = 1,
      range                   = 420,
      reloadtime              = 0.33,
      rgbColor                = [[1 0 0]],
      soundStart              = [[weapon/laser/mini_laser]],
      soundStartVolume        = 6,
      thickness               = 5,
      tolerance               = 8192,
      turret                  = true,
      weaponType              = [[BeamLaser]],
    },
  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Scorpion]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 12000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 1200,
      object           = [[scorpion_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 1200,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
	  
    },
    HEAP  = {
      description      = [[Debris - Scorpion]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 12000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ scorpion = unitDef })
