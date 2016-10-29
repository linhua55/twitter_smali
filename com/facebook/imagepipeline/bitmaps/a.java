package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.support.v4.util.Pools.SynchronizedPool;
import com.facebook.imagepipeline.memory.d;
import com.facebook.imagepipeline.nativecode.Bitmaps;
import defpackage.bx;
import defpackage.ci;
import defpackage.cj;
import gj;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;

@TargetApi(21)
@ThreadSafe
/* compiled from: Twttr */
public class a {
    private static final byte[] c;
    final SynchronizedPool<ByteBuffer> a;
    private final d b;

    static {
        c = new byte[]{(byte) -1, (byte) -39};
    }

    public a(d dVar, int i) {
        this.b = dVar;
        this.a = new SynchronizedPool(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.a.release(ByteBuffer.allocate(16384));
        }
    }

    com.facebook.common.references.a<Bitmap> a(int i, int i2) {
        Bitmap bitmap = (Bitmap) this.b.a(i * i2);
        Bitmaps.a(bitmap, i, i2);
        return com.facebook.common.references.a.a(bitmap, this.b);
    }

    com.facebook.common.references.a<Bitmap> a(gj gjVar) {
        return a(gjVar.d(), b(gjVar));
    }

    com.facebook.common.references.a<Bitmap> a(gj gjVar, int i) {
        InputStream ciVar;
        boolean e = gjVar.e(i);
        Options b = b(gjVar);
        InputStream d = gjVar.d();
        bx.a((Object) d);
        if (gjVar.j() > i) {
            ciVar = new ci(d, i);
        } else {
            ciVar = d;
        }
        if (e) {
            d = ciVar;
        } else {
            d = new cj(ciVar, c);
        }
        return a(d, b);
    }

    private com.facebook.common.references.a<Bitmap> a(InputStream inputStream, Options options) {
        bx.a((Object) inputStream);
        Bitmap bitmap = (Bitmap) this.b.a(options.outHeight * options.outWidth);
        if (bitmap == null) {
            throw new NullPointerException("BitmapPool.get returned null");
        }
        ByteBuffer allocate;
        options.inBitmap = bitmap;
        ByteBuffer byteBuffer = (ByteBuffer) this.a.acquire();
        if (byteBuffer == null) {
            allocate = ByteBuffer.allocate(16384);
        } else {
            allocate = byteBuffer;
        }
        try {
            options.inTempStorage = allocate.array();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            this.a.release(allocate);
            if (bitmap == decodeStream) {
                return com.facebook.common.references.a.a(decodeStream, this.b);
            }
            this.b.a((Object) bitmap);
            decodeStream.recycle();
            throw new IllegalStateException();
        } catch (RuntimeException e) {
            this.b.a((Object) bitmap);
            throw e;
        } catch (Throwable th) {
            this.a.release(allocate);
        }
    }

    private Options b(gj gjVar) {
        Options options = new Options();
        options.inSampleSize = gjVar.i();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(gjVar.d(), null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            throw new IllegalArgumentException();
        }
        options.inJustDecodeBounds = false;
        options.inDither = true;
        options.inPreferredConfig = Bitmaps.a;
        options.inMutable = true;
        return options;
    }
}
