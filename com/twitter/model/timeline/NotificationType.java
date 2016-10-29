package com.twitter.model.timeline;

/* compiled from: Twttr */
public enum NotificationType {
    UNKNOWN("unknown"),
    NEW_TWEETS("new_tweets"),
    JUMP_TO_TOP("jump_to_top");
    
    private final String mName;

    private NotificationType(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
