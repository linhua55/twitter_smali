package com.twitter.library.api.upload;

/* compiled from: Twttr */
public enum MediaUsage {
    TWEET("tweet"),
    AVATAR("avatar"),
    HEADER("header"),
    DM("dm");
    
    public final String scribeName;

    private MediaUsage(String str) {
        this.scribeName = str;
    }
}
