package defpackage;

import cta;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctz */
class ctz extends cta<OUT> {
    final /* synthetic */ cty a;
    private final Iterator<IN> b;

    ctz(cty cty) {
        this.a = cty;
        this.b = this.a.a.iterator();
    }

    public boolean hasNext() {
        return this.b.hasNext();
    }

    protected OUT a() {
        return this.a.b.a(this.b.next());
    }
}
