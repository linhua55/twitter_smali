package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.common.memory.b;
import com.facebook.imagepipeline.memory.BasePool.InvalidSizeException;
import defpackage.bx;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class o extends BasePool<NativeMemoryChunk> {
    private final int[] g;

    protected /* synthetic */ Object b(int i) {
        return i(i);
    }

    protected /* synthetic */ void b(Object obj) {
        a((NativeMemoryChunk) obj);
    }

    protected /* synthetic */ int c(Object obj) {
        return b((NativeMemoryChunk) obj);
    }

    protected /* synthetic */ boolean d(Object obj) {
        return c((NativeMemoryChunk) obj);
    }

    public o(b bVar, y yVar, z zVar) {
        super(bVar, yVar, zVar);
        SparseIntArray sparseIntArray = yVar.c;
        this.g = new int[sparseIntArray.size()];
        for (int i = 0; i < this.g.length; i++) {
            this.g[i] = sparseIntArray.keyAt(i);
        }
        a();
    }

    public int f() {
        return this.g[0];
    }

    protected NativeMemoryChunk i(int i) {
        return new NativeMemoryChunk(i);
    }

    protected void a(NativeMemoryChunk nativeMemoryChunk) {
        bx.a((Object) nativeMemoryChunk);
        nativeMemoryChunk.close();
    }

    protected int d(int i) {
        return i;
    }

    protected int c(int i) {
        if (i <= 0) {
            throw new InvalidSizeException(Integer.valueOf(i));
        }
        for (int i2 : this.g) {
            if (i2 >= i) {
                return i2;
            }
        }
        return i;
    }

    protected int b(NativeMemoryChunk nativeMemoryChunk) {
        bx.a((Object) nativeMemoryChunk);
        return nativeMemoryChunk.b();
    }

    protected boolean c(NativeMemoryChunk nativeMemoryChunk) {
        bx.a((Object) nativeMemoryChunk);
        return !nativeMemoryChunk.a();
    }
}
