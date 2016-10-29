package com.twitter.library.util;

import com.twitter.util.q;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Iterator;

/* compiled from: Twttr */
public class v implements Closeable, Iterable<af>, Iterator<af> {
    private x a;
    private final RandomAccessFile b;
    private final long c;
    private long d;
    private long e;
    private final int f;
    private String g;

    public /* synthetic */ Object next() {
        return b();
    }

    public v(RandomAccessFile randomAccessFile, long j, long j2) {
        this.b = randomAccessFile;
        this.c = j;
        this.d = j2;
        this.e = 0;
        this.f = (int) (((this.c + this.d) - 1) / this.d);
    }

    public int a() {
        return this.f;
    }

    public Iterator<af> iterator() {
        return this;
    }

    public boolean hasNext() {
        return this.e < this.c;
    }

    public af b() {
        if (!hasNext()) {
            return null;
        }
        long j = this.e;
        if (this.d + j >= this.c) {
            this.d = this.c - j;
        }
        this.e += this.d;
        try {
            f();
            this.a = new x(j, this.d, null);
            this.g = q.a(this.a);
            c();
        } catch (IOException e) {
            this.a = null;
        }
        return this.a;
    }

    public af c() throws IOException {
        this.a.a();
        return this.a;
    }

    public long d() {
        return this.d;
    }

    public String e() {
        if (this.a == null) {
            return null;
        }
        return this.g;
    }

    public void remove() {
    }

    public void close() {
        f();
    }

    private void f() {
        cvi.a(this.a);
        this.a = null;
    }
}
