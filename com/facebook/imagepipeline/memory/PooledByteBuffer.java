package com.facebook.imagepipeline.memory;

import java.io.Closeable;

/* compiled from: Twttr */
public interface PooledByteBuffer extends Closeable {

    /* compiled from: Twttr */
    public class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }

    byte a(int i);

    int a();

    void a(int i, byte[] bArr, int i2, int i3);

    long b();

    boolean c();
}
