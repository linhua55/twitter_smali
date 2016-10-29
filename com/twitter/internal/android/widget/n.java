package com.twitter.internal.android.widget;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Twttr */
class n {
    private final Map<Integer, m> a;
    private int b;

    private n() {
        this.a = new HashMap();
        this.b = -1;
    }

    m a(int i) {
        return (m) this.a.get(Integer.valueOf(i));
    }

    void a(int i, m mVar) {
        this.a.put(Integer.valueOf(i), mVar);
    }

    boolean b(int i) {
        return this.a.containsKey(Integer.valueOf(i));
    }

    void a() {
        this.a.clear();
        d(-1);
    }

    void c(int i) {
        Iterator it = this.a.keySet().iterator();
        while (it.hasNext()) {
            if (((Integer) it.next()).intValue() >= i) {
                it.remove();
            }
        }
    }

    void d(int i) {
        if (this.b != i) {
            this.b = i;
            this.a.clear();
        }
    }
}
