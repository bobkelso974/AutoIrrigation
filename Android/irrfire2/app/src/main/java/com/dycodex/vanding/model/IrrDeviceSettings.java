package com.dycodex.vanding.model;

import com.google.firebase.database.IgnoreExtraProperties;

@IgnoreExtraProperties
public class IrrDeviceSettings {

    public boolean Updated;   // Setting
    public int vlvOpen;   // Setting
    public int totSlp;   // Setting
    public int vlvSoak;   // Setting
    public int loopSec;   // Setting
    public boolean slpEnabl;   // Setting

    public IrrDeviceSettings() {
        // Default constructor required for calls to DataSnapshot.getValue(Comment.class)
    }
}
