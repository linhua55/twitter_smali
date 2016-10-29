package com.twitter.library.network;

import java.net.URI;

/* compiled from: Twttr */
public class DataUsageEvent {
    public final Type a;
    public URI b;
    public final boolean c;
    public final boolean d;
    public final String e;
    public final long f;
    public final long g;

    /* compiled from: Twttr */
    public enum Type {
        UNKNOWN,
        API,
        IMAGE,
        VIDEO
    }

    public DataUsageEvent(Type type, boolean z, long j, long j2) {
        this(type, null, null, false, z, j, j2);
    }

    public DataUsageEvent(Type type, URI uri, String str, boolean z, boolean z2, long j, long j2) {
        if (type == null) {
            type = Type.UNKNOWN;
        }
        this.a = type;
        this.b = uri;
        this.e = str;
        this.c = z;
        this.d = z2;
        this.f = j;
        this.g = j2;
    }
}
