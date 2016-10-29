package com.twitter.android.widget;

import com.twitter.android.qd;
import tq;

/* compiled from: Twttr */
class x extends qd<tq> {
    private int a;

    private x() {
        this.a = 0;
    }

    public /* synthetic */ Object b(CharSequence charSequence, int i) {
        return d(charSequence, i);
    }

    public void a(int i) {
        this.a = i;
    }

    public tq d(CharSequence charSequence, int i) {
        return this.a != 0 ? new tq(c(charSequence, i), this.a) : null;
    }
}
