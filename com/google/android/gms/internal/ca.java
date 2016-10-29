package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.ar;

@oi
public abstract class ca<T> {
    private final int a;
    private final String b;
    private final T c;

    private ca(int i, String str, T t) {
        this.a = i;
        this.b = str;
        this.c = t;
        ar.m().a(this);
    }

    public static ca<String> a(int i, String str) {
        ca<String> a = a(i, str, (String) null);
        ar.m().b(a);
        return a;
    }

    public static ca<Integer> a(int i, String str, int i2) {
        return new cc(i, str, Integer.valueOf(i2));
    }

    public static ca<Long> a(int i, String str, long j) {
        return new cd(i, str, Long.valueOf(j));
    }

    public static ca<Boolean> a(int i, String str, Boolean bool) {
        return new cb(i, str, bool);
    }

    public static ca<String> a(int i, String str, String str2) {
        return new ce(i, str, str2);
    }

    public static ca<String> b(int i, String str) {
        ca<String> a = a(i, str, (String) null);
        ar.m().c(a);
        return a;
    }

    protected abstract T a(SharedPreferences sharedPreferences);

    public String a() {
        return this.b;
    }

    public T b() {
        return this.c;
    }

    public T c() {
        return ar.n().a(this);
    }
}
