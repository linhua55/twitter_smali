package com.google.android.gms.internal;

import android.text.TextUtils;

@oi
public final class bx {
    private String a;

    public bx() {
        this((String) cj.b.b());
    }

    public bx(String str) {
        this.a = TextUtils.isEmpty(str) ? (String) cj.b.b() : str;
    }

    public String a() {
        return this.a;
    }
}
