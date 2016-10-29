package com.twitter.util.collection;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
class c implements Iterator<E> {
    final /* synthetic */ b a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    c(b bVar) {
        this.a = bVar;
        this.b = this.a.e;
        this.c = this.a.b;
        this.d = -1;
        this.e = this.a.d;
    }

    private void a() {
        if (this.b != this.a.e) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean hasNext() {
        a();
        return this.e || this.c != this.a.c;
    }

    public E next() {
        a();
        if (hasNext()) {
            this.e = false;
            this.d = this.c;
            this.c++;
            if (this.c >= this.a.a.length) {
                this.c = 0;
            }
            return this.a.a[this.d];
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        a();
        if (this.d == -1) {
            throw new IllegalStateException("next() must be called before each call to remove()");
        } else if (this.d == this.a.b) {
            this.a.b();
            this.d = -1;
            this.b++;
        } else {
            int i = this.d + 1;
            if (this.a.b >= this.d || i >= this.a.c) {
                while (i != this.a.c) {
                    if (i >= this.a.a.length) {
                        this.a.a[i - 1] = this.a.a[0];
                        i = 0;
                    } else {
                        int i2 = i - 1;
                        if (i2 < 0) {
                            i2 = this.a.a.length - 1;
                        }
                        this.a.a[i2] = this.a.a[i];
                        i++;
                        if (i >= this.a.a.length) {
                            i = 0;
                        }
                    }
                }
            } else {
                System.arraycopy(this.a.a, i, this.a.a, this.d, this.a.c - i);
            }
            this.d = -1;
            this.a.c = this.a.c - 1;
            if (this.a.c < 0) {
                this.a.c = this.a.a.length - 1;
            }
            this.a.d = false;
            this.c--;
            if (this.c < 0) {
                this.c = this.a.a.length - 1;
            }
            this.a.e = this.a.e + 1;
            this.b++;
        }
    }
}
