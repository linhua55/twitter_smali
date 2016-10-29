package com.twitter.model.businessprofiles;

/* compiled from: Twttr */
public enum KeyEngagementType {
    NONE("none"),
    CALL("call"),
    APP("app"),
    DIRECTIONS("directions"),
    MESSAGE("message"),
    WEBSITE("website"),
    SHOP("shop"),
    MENU("menu"),
    BOOK_NOW("book_now");
    
    private final String mName;

    private KeyEngagementType(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
