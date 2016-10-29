package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.f;

public final class xe implements f {
    public static final xe a;
    private final boolean b;
    private final boolean c;
    private final String d;
    private final boolean e;
    private final String f;
    private final boolean g;

    static {
        a = new xg().a();
    }

    private xe(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4) {
        this.b = z;
        this.c = z2;
        this.d = str;
        this.e = z3;
        this.g = z4;
        this.f = str2;
    }

    public boolean a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    @Nullable
    public String e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }
}
