package com.twitter.library.scribe;

/* compiled from: Twttr */
public enum ScribeDatabaseHelper$LogType {
    JSON("json"),
    THRIFT("thrift");
    
    private final String mName;

    private ScribeDatabaseHelper$LogType(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }
}
