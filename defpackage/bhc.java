package defpackage;

import android.text.TextUtils;
import bhd;
import bhe;
import com.twitter.model.core.bg;
import com.twitter.model.dms.a;
import com.twitter.model.dms.c;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: bhc */
public abstract class bhc<T extends bhe> extends bgv<T> {
    public long d;

    public abstract int g();

    public abstract boolean h();

    public abstract boolean z();

    protected bhc(bhd<?, ?, T> bhd_____T) {
        super(bhd_____T);
        this.d = -1;
    }

    public boolean i() {
        return false;
    }

    public final long j() {
        return ((bhe) c()).a;
    }

    public final String k() {
        return ((bhe) c()).b;
    }

    public boolean l() {
        return !TextUtils.isEmpty(k());
    }

    public final bg m() {
        return ((bhe) c()).c;
    }

    public final c n() {
        return ((bhe) c()).d;
    }

    public final String o() {
        return ((bhe) c()).e;
    }

    public final boolean p() {
        return ((bhe) c()).f;
    }

    public final boolean q() {
        return ((bhe) c()).g;
    }

    public final int r() {
        return ((bhe) c()).h;
    }

    public String s() {
        return e.b(k());
    }

    public bhc<T> a(boolean z) {
        return this;
    }

    protected boolean a(int i) {
        return n() != null && n().a() == i;
    }

    public boolean t() {
        return a(1);
    }

    public boolean u() {
        return a(4);
    }

    public boolean v() {
        return a(2);
    }

    public boolean w() {
        return a(3);
    }

    public boolean x() {
        return t() || y();
    }

    public boolean y() {
        return v() || w();
    }

    public boolean a(bgv bgv) {
        if (!bgv.f()) {
            return false;
        }
        bhc bhc = (bhc) ObjectUtils.a((Object) bgv);
        boolean z = bgv.d() == d() && a((a) bgv) <= 60000 && q() == bhc.q() && !h() && !p() && !bhc.p();
        return z;
    }

    public long a(a aVar) {
        return Math.abs(aVar.i - this.i);
    }
}
