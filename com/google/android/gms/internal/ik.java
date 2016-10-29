package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@oi
public class ik {
    private final Object a;
    private final Context b;
    private final String c;
    private final VersionInfoParcel d;
    private iw<hx> e;
    private iw<hx> f;
    private jc g;
    private int h;

    public ik(Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.a = new Object();
        this.h = 1;
        this.c = str;
        this.b = context.getApplicationContext();
        this.d = versionInfoParcel;
        this.e = new ix();
        this.f = new ix();
    }

    public ik(Context context, VersionInfoParcel versionInfoParcel, String str, iw<hx> iwVar, iw<hx> iwVar2) {
        this(context, versionInfoParcel, str);
        this.e = iwVar;
        this.f = iwVar2;
    }

    private jc c() {
        jc jcVar = new jc(this.f);
        qw.a(new il(this, jcVar));
        return jcVar;
    }

    protected hx a(Context context, VersionInfoParcel versionInfoParcel) {
        return new id(context, versionInfoParcel, null);
    }

    protected jc a() {
        jc c = c();
        c.a(new it(this, c), new iu(this, c));
        return c;
    }

    public iy b() {
        iy a;
        synchronized (this.a) {
            if (this.g == null || this.g.f() == -1) {
                this.h = 2;
                this.g = a();
                a = this.g.a();
            } else if (this.h == 0) {
                a = this.g.a();
            } else if (this.h == 1) {
                this.h = 2;
                a();
                a = this.g.a();
            } else if (this.h == 2) {
                a = this.g.a();
            } else {
                a = this.g.a();
            }
        }
        return a;
    }
}
