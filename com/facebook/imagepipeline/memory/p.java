package com.facebook.imagepipeline.memory;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.memory.PooledByteBuffer.ClosedException;
import defpackage.bx;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class p implements PooledByteBuffer {
    @GuardedBy("this")
    a<NativeMemoryChunk> a;
    private final int b;

    public p(a<NativeMemoryChunk> aVar, int i) {
        bx.a((Object) aVar);
        boolean z = i >= 0 && i <= ((NativeMemoryChunk) aVar.a()).b();
        bx.a(z);
        this.a = aVar.b();
        this.b = i;
    }

    public synchronized int a() {
        d();
        return this.b;
    }

    public synchronized byte a(int i) {
        byte a;
        boolean z = true;
        synchronized (this) {
            boolean z2;
            d();
            if (i >= 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            bx.a(z2);
            if (i >= this.b) {
                z = false;
            }
            bx.a(z);
            a = ((NativeMemoryChunk) this.a.a()).a(i);
        }
        return a;
    }

    public synchronized void a(int i, byte[] bArr, int i2, int i3) {
        d();
        bx.a(i + i3 <= this.b);
        ((NativeMemoryChunk) this.a.a()).b(i, bArr, i2, i3);
    }

    public synchronized long b() {
        d();
        return ((NativeMemoryChunk) this.a.a()).c();
    }

    public synchronized boolean c() {
        return !a.a(this.a);
    }

    public synchronized void close() {
        a.c(this.a);
        this.a = null;
    }

    synchronized void d() {
        if (c()) {
            throw new ClosedException();
        }
    }
}
