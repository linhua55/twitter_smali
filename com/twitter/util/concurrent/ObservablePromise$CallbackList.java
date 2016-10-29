package com.twitter.util.concurrent;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class ObservablePromise$CallbackList<V> {
    private List<e<V>> a;
    private Status b;
    private V c;

    /* compiled from: Twttr */
    public enum Status {
        READY,
        DISPATCHED,
        DISCARDED
    }

    private ObservablePromise$CallbackList() {
        this.b = Status.READY;
    }

    public void a(e<V> eVar) {
        Object obj = null;
        synchronized (this) {
            if (this.b == Status.READY) {
                if (this.a == null) {
                    this.a = new ArrayList(1);
                }
                this.a.add(eVar);
            } else if (this.b == Status.DISPATCHED) {
                int i = 1;
            }
        }
        if (obj != null) {
            eVar.a(this.c);
        }
    }

    public void a(V v) {
        synchronized (this) {
            List<e> list = this.a;
            this.a = null;
            this.b = Status.DISPATCHED;
            this.c = v;
        }
        if (list != null) {
            for (e a : list) {
                a.a(v);
            }
        }
    }

    public void a() {
        synchronized (this) {
            this.a = null;
            this.b = Status.DISCARDED;
        }
    }
}
