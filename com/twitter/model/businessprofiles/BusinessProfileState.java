package com.twitter.model.businessprofiles;

/* compiled from: Twttr */
public enum BusinessProfileState {
    NONE("none"),
    ENABLED("enabled"),
    DISABLED("disabled");
    
    private final String mName;

    private BusinessProfileState(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
