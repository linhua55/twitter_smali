package com.facebook.imagepipeline.memory;

import android.util.Log;
import bq;
import defpackage.bx;
import defpackage.cf;
import java.io.Closeable;

@bq
/* compiled from: Twttr */
public class NativeMemoryChunk implements Closeable {
    private final long a;
    private final int b;
    private boolean c;

    @bq
    private static native long nativeAllocate(int i);

    @bq
    private static native void nativeCopyFromByteArray(long j, byte[] bArr, int i, int i2);

    @bq
    private static native void nativeCopyToByteArray(long j, byte[] bArr, int i, int i2);

    @bq
    private static native void nativeFree(long j);

    @bq
    private static native void nativeMemcpy(long j, long j2, int i);

    @bq
    private static native byte nativeReadByte(long j);

    static {
        cf.a("memchunk");
    }

    public NativeMemoryChunk(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        this.b = i;
        this.a = nativeAllocate(this.b);
        this.c = false;
    }

    public NativeMemoryChunk() {
        this.b = 0;
        this.a = 0;
        this.c = true;
    }

    public synchronized void close() {
        if (!this.c) {
            this.c = true;
            nativeFree(this.a);
        }
    }

    public synchronized boolean a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }

    public synchronized int a(int i, byte[] bArr, int i2, int i3) {
        int a;
        bx.a((Object) bArr);
        bx.b(!a());
        a = a(i, i3);
        a(i, bArr.length, i2, a);
        nativeCopyFromByteArray(this.a + ((long) i), bArr, i2, a);
        return a;
    }

    public synchronized int b(int i, byte[] bArr, int i2, int i3) {
        int a;
        bx.a((Object) bArr);
        bx.b(!a());
        a = a(i, i3);
        a(i, bArr.length, i2, a);
        nativeCopyToByteArray(this.a + ((long) i), bArr, i2, a);
        return a;
    }

    public synchronized byte a(int i) {
        byte nativeReadByte;
        boolean z = true;
        synchronized (this) {
            boolean z2;
            if (a()) {
                z2 = false;
            } else {
                z2 = true;
            }
            bx.b(z2);
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
            nativeReadByte = nativeReadByte(this.a + ((long) i));
        }
        return nativeReadByte;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r5, com.facebook.imagepipeline.memory.NativeMemoryChunk r6, int r7, int r8) {
        /*
        r4 = this;
        defpackage.bx.a(r6);
        r0 = r6.a;
        r2 = r4.a;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 != 0) goto L_0x0055;
    L_0x000b:
        r0 = "NativeMemoryChunk";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Copying from NativeMemoryChunk ";
        r1 = r1.append(r2);
        r2 = java.lang.System.identityHashCode(r4);
        r2 = java.lang.Integer.toHexString(r2);
        r1 = r1.append(r2);
        r2 = " to NativeMemoryChunk ";
        r1 = r1.append(r2);
        r2 = java.lang.System.identityHashCode(r6);
        r2 = java.lang.Integer.toHexString(r2);
        r1 = r1.append(r2);
        r2 = " which share the same address ";
        r1 = r1.append(r2);
        r2 = r4.a;
        r2 = java.lang.Long.toHexString(r2);
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.w(r0, r1);
        r0 = 0;
        defpackage.bx.a(r0);
    L_0x0055:
        r0 = r6.a;
        r2 = r4.a;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 >= 0) goto L_0x006b;
    L_0x005d:
        monitor-enter(r6);
        monitor-enter(r4);	 Catch:{ all -> 0x0068 }
        r4.b(r5, r6, r7, r8);	 Catch:{ all -> 0x0065 }
        monitor-exit(r4);	 Catch:{ all -> 0x0065 }
        monitor-exit(r6);	 Catch:{ all -> 0x0068 }
    L_0x0064:
        return;
    L_0x0065:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0065 }
        throw r0;	 Catch:{ all -> 0x0068 }
    L_0x0068:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0068 }
        throw r0;
    L_0x006b:
        monitor-enter(r4);
        monitor-enter(r6);	 Catch:{ all -> 0x0073 }
        r4.b(r5, r6, r7, r8);	 Catch:{ all -> 0x0076 }
        monitor-exit(r6);	 Catch:{ all -> 0x0076 }
        monitor-exit(r4);	 Catch:{ all -> 0x0073 }
        goto L_0x0064;
    L_0x0073:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0073 }
        throw r0;
    L_0x0076:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0076 }
        throw r0;	 Catch:{ all -> 0x0073 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.NativeMemoryChunk.a(int, com.facebook.imagepipeline.memory.NativeMemoryChunk, int, int):void");
    }

    public long c() {
        return this.a;
    }

    private void b(int i, NativeMemoryChunk nativeMemoryChunk, int i2, int i3) {
        boolean z;
        boolean z2 = true;
        if (a()) {
            z = false;
        } else {
            z = true;
        }
        bx.b(z);
        if (nativeMemoryChunk.a()) {
            z2 = false;
        }
        bx.b(z2);
        a(i, nativeMemoryChunk.b, i2, i3);
        nativeMemcpy(nativeMemoryChunk.a + ((long) i2), this.a + ((long) i), i3);
    }

    protected void finalize() throws Throwable {
        if (!a()) {
            Log.w("NativeMemoryChunk", "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. Underlying address = " + Long.toHexString(this.a));
            try {
                close();
            } finally {
                super.finalize();
            }
        }
    }

    private int a(int i, int i2) {
        return Math.min(Math.max(0, this.b - i), i2);
    }

    private void a(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2 = true;
        bx.a(i4 >= 0);
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i + i4 <= this.b) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i3 + i4 > i2) {
            z2 = false;
        }
        bx.a(z2);
    }
}
