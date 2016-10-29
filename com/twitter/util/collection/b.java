package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: Twttr */
public class b<E> extends AbstractCollection<E> {
    private final transient E[] a;
    private transient int b;
    private transient int c;
    private transient boolean d;
    private transient int e;

    public b(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Size must be greater than zero.");
        }
        this.a = (Object[]) ObjectUtils.a(new Object[i]);
    }

    public boolean add(E e) {
        if (e == null) {
            return false;
        }
        if (!this.d) {
            this.e++;
        } else if (b() != null) {
            this.e++;
        }
        Object[] objArr = this.a;
        int i = this.c;
        this.c = i + 1;
        objArr[i] = e;
        if (this.c >= this.a.length) {
            this.c = 0;
        }
        if (this.c == this.b) {
            this.d = true;
        }
        return true;
    }

    public void clear() {
        this.d = false;
        this.b = 0;
        this.c = 0;
        Arrays.fill(this.a, null);
    }

    public E a() {
        return this.a[this.b];
    }

    public Iterator<E> iterator() {
        return new c(this);
    }

    public E b() {
        if (size() == 0) {
            return null;
        }
        E e = this.a[this.b];
        if (e != null) {
            Object[] objArr = this.a;
            int i = this.b;
            this.b = i + 1;
            objArr[i] = null;
            if (this.b >= this.a.length) {
                this.b = 0;
            }
            this.d = false;
        }
        return e;
    }

    public int size() {
        if (this.c < this.b) {
            return (this.a.length - this.b) + this.c;
        }
        if (this.c == this.b) {
            return this.d ? this.a.length : 0;
        } else {
            return this.c - this.b;
        }
    }
}
