package defpackage;

import cta;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cud */
class cud extends cta<OUT> {
    final /* synthetic */ cuc a;
    private final Iterator<? extends IN> b;
    private OUT c;

    cud(cuc cuc) {
        this.a = cuc;
        this.b = this.a.a.iterator();
    }

    public boolean hasNext() {
        while (this.c == null && this.b.hasNext()) {
            this.c = this.a.b.a(this.b.next());
        }
        return this.c != null;
    }

    protected OUT a() {
        OUT out = this.c;
        this.c = null;
        return out;
    }
}
