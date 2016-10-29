package defpackage;

import cta;

/* compiled from: Twttr */
/* renamed from: ctx */
class ctx extends cta<T> {
    final /* synthetic */ ctw a;
    private int b;

    ctx(ctw ctw) {
        this.a = ctw;
    }

    public boolean hasNext() {
        return this.b < this.a.a.length;
    }

    protected T a() {
        Object[] objArr = this.a.a;
        int i = this.b;
        this.b = i + 1;
        return objArr[i];
    }
}
