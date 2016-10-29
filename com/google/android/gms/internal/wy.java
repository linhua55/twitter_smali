package com.google.android.gms.internal;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import com.google.android.gms.signin.internal.k;
import com.google.android.gms.signin.internal.l;

public final class wy {
    public static final i<l> a;
    public static final i<l> b;
    public static final g<l, xe> c;
    static final g<l, xb> d;
    public static final Scope e;
    public static final Scope f;
    public static final a<xe> g;
    public static final a<xb> h;
    public static final xc i;

    static {
        a = new i();
        b = new i();
        c = new wz();
        d = new xa();
        e = new Scope("profile");
        f = new Scope("email");
        g = new a("SignIn.API", c, a);
        h = new a("SignIn.INTERNAL_API", d, b);
        i = new k();
    }
}
