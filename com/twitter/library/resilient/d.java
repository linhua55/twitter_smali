package com.twitter.library.resilient;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class d {
    public final String a;
    public final String b;
    public final int c;
    public final long d;
    private long e;
    private final JSONObject f;
    private long g;

    public d(String str, String str2, int i, long j, long j2, long j3, String str3) throws JSONException {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = j2;
        this.g = j3;
        if (str3 == null || str3.trim().isEmpty()) {
            this.f = new JSONObject();
        } else {
            this.f = new JSONObject(str3);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return ((d) obj).a.equals(this.a);
        }
        return false;
    }

    public JSONObject a() {
        return this.f;
    }

    public String b() {
        return this.f.toString();
    }

    public long c() {
        return this.e;
    }

    public long d() {
        return this.g;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
