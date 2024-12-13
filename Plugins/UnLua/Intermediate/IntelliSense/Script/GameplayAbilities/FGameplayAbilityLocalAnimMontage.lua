---Data about montages that were played locally (all montages in case of server. predictive montages in case of client). Never replicated directly.
---@class FGameplayAbilityLocalAnimMontage
---@field public AnimMontage UAnimMontage @What montage is being played
---@field public PlayInstanceId integer @ID tied to a particular play of a montage, used to trigger replication when the same montage is played multiple times. This ID wraps around when it reaches its max value.
---@field public PredictionKey FPredictionKey @Prediction key that started the montage play
---@field public AnimatingAbility TWeakObjectPtr<UGameplayAbility> @The ability, if any, that instigated this montage
local FGameplayAbilityLocalAnimMontage = {}
