package com.twitter.library.api;

import java.util.Map;

/* compiled from: Twttr */
public class an {
    private String a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private Map<String, String> i;
    private String j;
    private long k;
    private boolean l;

    public an() {
        this.k = 86400;
        this.l = true;
    }

    public an a(String str) {
        this.a = e(str);
        return this;
    }

    public an b(String str) {
        this.c = e(str);
        return this;
    }

    public an a(boolean z) {
        this.d = z;
        return this;
    }

    public an b(boolean z) {
        this.e = z;
        return this;
    }

    public an c(boolean z) {
        this.f = z;
        return this;
    }

    public an d(boolean z) {
        this.g = z;
        return this;
    }

    public an e(boolean z) {
        this.h = z;
        return this;
    }

    public an a(Map<String, String> map) {
        this.i = map;
        return this;
    }

    public an c(String str) {
        this.j = e(str);
        return this;
    }

    public an a(long j) {
        this.k = j;
        return this;
    }

    public an f(boolean z) {
        this.l = z;
        return this;
    }

    public al d(String str) {
        this.b = e(str);
        return new al(this, null);
    }

    private static String e(String str) {
        return str != null ? str.replace("\r", TtmlNode.ANONYMOUS_REGION_ID) : null;
    }
}
