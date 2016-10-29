package com.twitter.library.service;

import com.twitter.config.d;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.android.service.u;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.library.network.forecaster.h;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.telephony.TelephonyUtil;

/* compiled from: Twttr */
public abstract class f extends ac<aa> {
    protected int a;
    private long b;
    private int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final boolean h;
    private final t i;

    protected abstract int a();

    public f(int i, int i2, int i3) {
        this(i, i2, i3, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public f(int i, int i2, int i3, int i4) {
        this.a = -1;
        this.b = -1;
        this.c = 0;
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i4 <= 0) {
            throw new IllegalArgumentException();
        }
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.i = PlatformContext.f().a();
        this.h = d.a("android_disable_offline_retries");
    }

    public final boolean a(ab<aa> abVar) {
        if (!a((aa) abVar.b())) {
            return false;
        }
        boolean z;
        if (this.a < 0) {
            this.a = this.d;
            this.b = this.i.b();
        } else {
            this.a = Math.min(this.e, a());
        }
        if (this.c >= this.g || b() <= 0) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return z;
        }
        this.c++;
        return z;
    }

    public boolean a(u uVar, ab<aa> abVar) {
        if (!(uVar instanceof r) || abVar == null) {
            return false;
        }
        h hVar = ((r) uVar).a;
        if (hVar.a != NetworkQuality.a || hVar.b == NetworkQuality.a) {
            return false;
        }
        return a((aa) abVar.b());
    }

    protected boolean a(aa aaVar) {
        if (aaVar == null || aaVar.b()) {
            return false;
        }
        HttpOperation f = aaVar.f();
        if (f == null) {
            return false;
        }
        k l = f.l();
        if (l == null || !l.d) {
            return false;
        }
        return true;
    }

    public final long b(ab<aa> abVar) {
        Object obj = (!this.h || TelephonyUtil.i().d()) ? null : 1;
        if (obj != null) {
            return (long) ((int) b());
        }
        return (long) this.a;
    }

    protected long b() {
        if (this.b > 0) {
            return ((long) this.f) - (this.i.b() - this.b);
        }
        return (long) this.f;
    }
}
