package defpackage;

import bje;
import com.twitter.android.dm.z;

/* compiled from: Twttr */
/* renamed from: xy */
public class xy extends xf<bje, xz, xy> {
    private boolean c;
    private z d;

    protected /* synthetic */ Object c() {
        return b();
    }

    public xy a(z zVar) {
        this.d = zVar;
        return this;
    }

    public xy a(boolean z) {
        this.c = z;
        return this;
    }

    public boolean bo_() {
        return super.bo_() && this.d != null;
    }

    protected xw b() {
        return new xw();
    }
}
