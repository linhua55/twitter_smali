package com.twitter.model.core;

import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class ca {
    public static final n<ca> a;
    public final int b;
    public final String c;
    public final long d;
    public final String e;
    public final int f;
    public final String g;
    public final List<OneFactorEligibleFactor> h;

    static {
        a = new cc();
    }

    public ca(int i, String str, long j, String str2, int i2, String str3, List<OneFactorEligibleFactor> list) {
        this.b = i;
        this.c = str;
        this.d = j;
        this.e = str2;
        this.f = i2;
        this.g = str3;
        this.h = list;
    }
}
