package defpackage;

import cgu;
import cta;

/* compiled from: Twttr */
/* renamed from: cgw */
class cgw extends cta<T> {
    final /* synthetic */ cgu a;
    private int b;

    cgw(cgu cgu) {
        this.a = cgu;
    }

    public boolean hasNext() {
        return this.b < this.a.aU_();
    }

    protected T a() {
        cgu cgu = this.a;
        int i = this.b;
        this.b = i + 1;
        return cgu.a(i);
    }
}
