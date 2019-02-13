hooksecurefunc("CompactUnitFrame_UpdateAll", function(frame)
    if frame:IsForbidden() or not frame:IsVisible() or not frame.buffFrames or not DefaultCompactUnitFrameSetupOptions.displayPowerBar then return end

    local barHeight = UnitGroupRolesAssigned(frame.displayedUnit) == "HEALER" and 8 or 0

    frame.healthBar:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -1, 1 + barHeight)
    frame.buffFrames[1]:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, CUF_AURA_BOTTOM_OFFSET + barHeight)
    frame.debuffFrames[1]:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 3, CUF_AURA_BOTTOM_OFFSET + barHeight)
end)
