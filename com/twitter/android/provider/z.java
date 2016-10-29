package com.twitter.android.provider;

import com.twitter.util.object.e;

/* compiled from: Twttr */
public class z implements m {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;

    private z(ab abVar) {
        this.a = abVar.f;
        this.b = e.a(abVar.a);
        this.c = (String) e.a(abVar.b);
        this.d = e.a(abVar.c);
        this.e = abVar.d;
        this.f = abVar.e;
    }

    public boolean a() {
        return (this.e & 2) != 0;
    }
}
