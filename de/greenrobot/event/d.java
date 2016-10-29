package de.greenrobot.event;

/* compiled from: Twttr */
class d extends ThreadLocal<f> {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    protected /* synthetic */ Object initialValue() {
        return a();
    }

    protected f a() {
        return new f();
    }
}
