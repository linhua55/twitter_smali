package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.common.memory.b;
import com.facebook.imagepipeline.memory.BasePool.InvalidSizeException;
import defpackage.bx;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class n extends BasePool<byte[]> implements f {
    private final int[] g;

    protected /* synthetic */ Object b(int i) {
        return i(i);
    }

    protected /* synthetic */ void b(Object obj) {
        a((byte[]) obj);
    }

    protected /* synthetic */ int c(Object obj) {
        return b((byte[]) obj);
    }

    public n(b bVar, y yVar, z zVar) {
        super(bVar, yVar, zVar);
        SparseIntArray sparseIntArray = yVar.c;
        this.g = new int[sparseIntArray.size()];
        for (int i = 0; i < sparseIntArray.size(); i++) {
            this.g[i] = sparseIntArray.keyAt(i);
        }
        a();
    }

    protected byte[] i(int i) {
        return new byte[i];
    }

    protected void a(byte[] bArr) {
        bx.a((Object) bArr);
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

    protected int b(byte[] bArr) {
        bx.a((Object) bArr);
        return bArr.length;
    }
}
