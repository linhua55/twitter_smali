package org.spongycastle.jce.provider;

import org.spongycastle.asn1.x509.ReasonFlags;

/* compiled from: Twttr */
class ReasonsMask {
    static final ReasonsMask a;
    private int b;

    ReasonsMask(ReasonFlags reasonFlags) {
        this.b = reasonFlags.k();
    }

    private ReasonsMask(int i) {
        this.b = i;
    }

    ReasonsMask() {
        this(0);
    }

    static {
        a = new ReasonsMask(33023);
    }

    void a(ReasonsMask reasonsMask) {
        this.b |= reasonsMask.b();
    }

    boolean a() {
        return this.b == a.b;
    }

    ReasonsMask b(ReasonsMask reasonsMask) {
        ReasonsMask reasonsMask2 = new ReasonsMask();
        reasonsMask2.a(new ReasonsMask(this.b & reasonsMask.b()));
        return reasonsMask2;
    }

    boolean c(ReasonsMask reasonsMask) {
        return (this.b | (reasonsMask.b() ^ this.b)) != 0;
    }

    int b() {
        return this.b;
    }
}
