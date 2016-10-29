package com.facebook.imagepipeline.memory;

import defpackage.ca;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class q implements ab {
    private final ae a;
    private final o b;

    public /* synthetic */ PooledByteBuffer b(InputStream inputStream) throws IOException {
        return a(inputStream);
    }

    public /* synthetic */ PooledByteBuffer b(InputStream inputStream, int i) throws IOException {
        return a(inputStream, i);
    }

    public /* synthetic */ PooledByteBuffer b(byte[] bArr) {
        return a(bArr);
    }

    public /* synthetic */ ad b() {
        return a();
    }

    public /* synthetic */ ad b(int i) {
        return a(i);
    }

    public q(o oVar, ae aeVar) {
        this.b = oVar;
        this.a = aeVar;
    }

    public p a(InputStream inputStream) throws IOException {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.b);
        try {
            p a = a(inputStream, nativePooledByteBufferOutputStream);
            return a;
        } finally {
            nativePooledByteBufferOutputStream.close();
        }
    }

    public p a(byte[] bArr) {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.b, bArr.length);
        try {
            nativePooledByteBufferOutputStream.write(bArr, 0, bArr.length);
            p a = nativePooledByteBufferOutputStream.a();
            nativePooledByteBufferOutputStream.close();
            return a;
        } catch (Throwable e) {
            throw ca.b(e);
        } catch (Throwable th) {
            nativePooledByteBufferOutputStream.close();
        }
    }

    public p a(InputStream inputStream, int i) throws IOException {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.b, i);
        try {
            p a = a(inputStream, nativePooledByteBufferOutputStream);
            return a;
        } finally {
            nativePooledByteBufferOutputStream.close();
        }
    }

    p a(InputStream inputStream, NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream) throws IOException {
        this.a.a(inputStream, nativePooledByteBufferOutputStream);
        return nativePooledByteBufferOutputStream.a();
    }

    public NativePooledByteBufferOutputStream a() {
        return new NativePooledByteBufferOutputStream(this.b);
    }

    public NativePooledByteBufferOutputStream a(int i) {
        return new NativePooledByteBufferOutputStream(this.b, i);
    }
}
