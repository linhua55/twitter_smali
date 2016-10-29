package com.twitter.database.lru;

/* compiled from: Twttr */
public class LruPolicy {
    public final Type a;
    public final int b;

    /* compiled from: Twttr */
    public enum Type {
        ENTRY_COUNT,
        ENTRY_SIZE
    }

    public LruPolicy(Type type, int i) {
        this.a = type;
        this.b = i;
    }
}
