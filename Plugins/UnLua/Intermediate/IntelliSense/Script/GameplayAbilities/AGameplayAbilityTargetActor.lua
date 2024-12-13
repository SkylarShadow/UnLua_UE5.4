---TargetActors are spawned to assist with ability targeting. They are spawned by ability tasks and create/determine the outgoing targeting data passed from one task to another
---WARNING: These actors are spawned once per ability activation and in their default form are not very efficient
---For most games you will need to subclass and heavily modify this actor, or you will want to implement similar functions in a game-specific actor or blueprint to avoid actor spawn costs
---This class is not well tested by internal games, but it is a useful class to look at to learn how target replication occurs
---@class AGameplayAbilityTargetActor : AActor
---@field public ShouldProduceTargetDataOnServer boolean @The TargetData this class produces can be entirely generated on the server. We don't require the client to send us full or partial TargetData (possibly just a 'confirm')
---@field public StartLocation FGameplayAbilityTargetingLocationInfo @Describes where the targeting action starts, usually the player character or a socket on the player character. //UPROPERTY(BlueprintReadOnly, meta=(ExposeOnSpawn=true), Category=Targeting)
---@field public PrimaryPC APlayerController
---@field public OwningAbility UGameplayAbility
---@field public bDestroyOnConfirmation boolean
---@field public SourceActor AActor
---@field public ReticleParams FWorldReticleParameters @Parameters for world reticle. Usage of these parameters is dependent on the reticle.
---@field public ReticleClass TSubclassOf<AGameplayAbilityWorldReticle> @Reticle that will appear on top of acquired targets. Reticles will be spawned/despawned as targets are acquired/lost.
---@field public Filter FGameplayTargetDataFilterHandle @Using a special class for replication purposes.
---@field public bDebug boolean @Draw the debug information (if applicable) for this targeting actor.
---@field public GenericDelegateBoundASC UAbilitySystemComponent
local AGameplayAbilityTargetActor = {}

---Outside code is saying 'stop and just give me what you have.' Returns true if the ability accepts this and can be forgotten.
function AGameplayAbilityTargetActor:ConfirmTargeting() end

---Outside code is saying 'stop everything and just forget about it'
function AGameplayAbilityTargetActor:CancelTargeting() end

