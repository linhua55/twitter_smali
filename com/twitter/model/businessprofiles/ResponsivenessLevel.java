package com.twitter.model.businessprofiles;

/* compiled from: Twttr */
public enum ResponsivenessLevel {
    LEVEL_UNKNOWN("level_unknown"),
    TOP_RESPONDER("top_responder");
    
    private final String mName;

    private ResponsivenessLevel(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
