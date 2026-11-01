SLASH_TOFUCDM1 = '/tcdm'
function SlashCmdList.TOFUCDM(msg, editBox)
    local isAvailable, failureReason = C_CooldownViewer.IsCooldownViewerAvailable()

    local _G = _G
    local CooldownViewerSettings = _G.CooldownViewerSettings

    if isAvailable then

        if CooldownViewerSettings:IsShown() then
            CooldownViewerSettings:Hide()
        else
            CooldownViewerSettings:Show()
        end

    else
        print("Cooldown Manager not enabled. Enable it in the settings first.")
    end

end
