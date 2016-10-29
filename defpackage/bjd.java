package defpackage;

import bha;
import bhb;
import com.twitter.model.dms.ae;

/* compiled from: Twttr */
/* renamed from: bjd */
public class bjd extends bhb {
    private boolean b;
    private boolean c;
    private ae d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bjd b(boolean z) {
        this.b = z;
        return this;
    }

    public bjd c(boolean z) {
        this.c = z;
        return this;
    }

    public bjd a(ae aeVar) {
        this.d = aeVar;
        return this;
    }

    public boolean bo_() {
        return super.bo_() && !(this.a == 4 && this.d == null);
    }

    protected bha d() {
        return new bjc(this);
    }
}
