package com.twitter.ui.widget.slidingtab;

/* compiled from: Twttr */
class h implements e {
    private int[] a;
    private int[] b;

    private h() {
    }

    public final int a(int i) {
        return this.a[i % this.a.length];
    }

    public final int b(int i) {
        return this.b[i % this.b.length];
    }

    void a(int... iArr) {
        this.a = iArr;
    }

    void b(int... iArr) {
        this.b = iArr;
    }
}
