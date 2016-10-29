package com.google.android.gms.internal;

import com.google.android.gms.internal.ss$com.google.android.gms.internal.st;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@oi
public class ss<T> implements so<T> {
    protected int a;
    protected final BlockingQueue<st> b;
    protected T c;
    private final Object d;

    public ss() {
        this.d = new Object();
        this.a = 0;
        this.b = new LinkedBlockingQueue();
    }

    public void a(sr<T> srVar, sp spVar) {
        synchronized (this.d) {
            if (this.a == 1) {
                srVar.a(this.c);
            } else if (this.a == -1) {
                spVar.a();
            } else if (this.a == 0) {
                this.b.add(new st(this, srVar, spVar));
            }
        }
    }

    public void a(T t) {
        synchronized (this.d) {
            if (this.a != 0) {
                throw new UnsupportedOperationException();
            }
            this.c = t;
            this.a = 1;
            for (st stVar : this.b) {
                stVar.a.a(t);
            }
            this.b.clear();
        }
    }

    public void e() {
        synchronized (this.d) {
            if (this.a != 0) {
                throw new UnsupportedOperationException();
            }
            this.a = -1;
            for (st stVar : this.b) {
                stVar.b.a();
            }
            this.b.clear();
        }
    }

    public int f() {
        return this.a;
    }
}
