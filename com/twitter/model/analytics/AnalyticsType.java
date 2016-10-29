package com.twitter.model.analytics;

/* compiled from: Twttr */
public enum AnalyticsType {
    ENABLED("enabled"),
    DISABLED("disabled");
    
    private final String mName;

    private AnalyticsType(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
