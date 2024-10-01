
CombatTracker = {}

function CombatTracker:Initialize()

    if not CombatTrackerSettings then
        CombatTrackerSettings = {
            hasSeenWelcome = true,
            settings = {
                isFeatureEnabled = true,
                preferredLayout = "compact"
            },
            playerStats = {}
        }
    end


    CombatTracker.frame = CreateFrame("Frame")
    CombatTracker.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    

    CombatTracker.frame:SetScript("OnEvent", function(self, event, ...)
        if event == "PLAYER_ENTERING_WORLD" then
            print("Player entered the world.")
        end
    end)


    CombatTracker.Combat:InitializeCombatEvents()
    CombatTracker.UI:InitializeUI()
end


CombatTracker:Initialize()