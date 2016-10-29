package com.twitter.android.autocomplete;

import com.twitter.util.al;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
class j<T> {
    private T a;

    private j() {
    }

    public synchronized T a() {
        return this.a;
    }

    public synchronized boolean a(T t) {
        boolean z;
        if (ObjectUtils.a(this.a, t)) {
            z = false;
        } else {
            this.a = t;
            notify();
            z = true;
        }
        return z;
    }

    public synchronized boolean a(T t, int i) {
        boolean z = false;
        synchronized (this) {
            long b = al.b() + ((long) i);
            while (ObjectUtils.a(this.a, t) && al.b() < b) {
                try {
                    wait((long) i);
                } catch (InterruptedException e) {
                }
            }
            if (!ObjectUtils.a(this.a, t)) {
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean b(T t) {
        return ObjectUtils.a(this.a, t);
    }
}
