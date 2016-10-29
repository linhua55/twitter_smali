package com.twitter.internal.android.service;

import java.util.Set;

/* compiled from: Twttr */
class k extends w {
    private final u a;
    private final Set<m> b;

    k(u uVar, Set<m> set) {
        super(0);
        this.a = uVar;
        this.b = set;
    }

    public void run() {
        for (m a : this.b) {
            i a2 = m.a(a);
            if (a2 != null) {
                AsyncOperation b = a2.e;
                ab c = a2.i;
                if (b != null && b.a(this.a, c)) {
                    b.k();
                }
            }
        }
    }
}
