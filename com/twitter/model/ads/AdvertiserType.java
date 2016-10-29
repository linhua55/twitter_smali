package com.twitter.model.ads;

/* compiled from: Twttr */
public enum AdvertiserType {
    NONE("none"),
    PROMOTABLE_USER("promotable_user"),
    ACCOUNT_USER("account_user");
    
    private final String mName;

    private AdvertiserType(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
