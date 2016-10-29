package com.twitter.model.json.core;

/* compiled from: Twttr */
public class b {
    public static final b a;
    public final int b;

    static {
        a = new b(-1);
    }

    public b(int i) {
        this.b = i;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof b) && this.b == ((b) obj).b);
    }

    public int hashCode() {
        return this.b;
    }
}
