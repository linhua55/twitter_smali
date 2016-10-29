package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.facebook.common.references.a;
import com.facebook.common.references.d;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.c;
import com.facebook.imagepipeline.memory.k;
import com.facebook.imagepipeline.nativecode.Bitmaps;
import defpackage.bx;
import defpackage.ca;
import gj;

@TargetApi(11)
/* compiled from: Twttr */
public class b {
    private final d a;
    private final com.facebook.imagepipeline.memory.b b;
    private final d<Bitmap> c;
    private final k d;

    public b(d dVar, k kVar) {
        this.a = dVar;
        this.d = kVar;
        this.b = c.a();
        this.c = new c(this);
    }

    a<Bitmap> a(short s, short s2) {
        gj gjVar;
        a a = this.a.a(s, s2);
        try {
            gjVar = new gj(a);
            gjVar.a(ImageFormat.JPEG);
            a<Bitmap> a2 = a(gjVar, ((PooledByteBuffer) a.a()).a());
            ((Bitmap) a2.a()).eraseColor(0);
            gj.d(gjVar);
            a.close();
            return a2;
        } catch (Throwable th) {
            a.close();
        }
    }

    a<Bitmap> a(gj gjVar) {
        Options a = a(gjVar.i());
        a c = gjVar.c();
        bx.a((Object) c);
        try {
            a<Bitmap> a2 = a(a(c, a));
            return a2;
        } finally {
            a.c(c);
        }
    }

    a<Bitmap> a(gj gjVar, int i) {
        Options a = a(gjVar.i());
        Object c = gjVar.c();
        bx.a(c);
        try {
            a<Bitmap> a2 = a(a(c, i, a));
            return a2;
        } finally {
            a.c(c);
        }
    }

    private a<Bitmap> a(Bitmap bitmap) {
        try {
            Bitmaps.a(bitmap);
            if (this.b.a(bitmap)) {
                return a.a(bitmap, this.c);
            }
            bitmap.recycle();
            throw new TooManyBitmapsException();
        } catch (Throwable e) {
            bitmap.recycle();
            throw ca.b(e);
        }
    }

    private Bitmap a(a<PooledByteBuffer> aVar, Options options) {
        PooledByteBuffer pooledByteBuffer = (PooledByteBuffer) aVar.a();
        int a = pooledByteBuffer.a();
        a a2 = this.d.a(a);
        try {
            byte[] bArr = (byte[]) a2.a();
            pooledByteBuffer.a(0, bArr, 0, a);
            Bitmap bitmap = (Bitmap) bx.a(BitmapFactory.decodeByteArray(bArr, 0, a, options), (Object) "BitmapFactory returned null");
            return bitmap;
        } finally {
            a.c(a2);
        }
    }

    private Bitmap a(a<PooledByteBuffer> aVar, int i, Options options) {
        boolean z = false;
        PooledByteBuffer pooledByteBuffer = (PooledByteBuffer) aVar.a();
        if (i <= pooledByteBuffer.a()) {
            z = true;
        }
        bx.a(z);
        a a = this.d.a(i + 2);
        try {
            byte[] bArr = (byte[]) a.a();
            pooledByteBuffer.a(0, bArr, 0, i);
            if (!b(bArr, i)) {
                a(bArr, i);
                i += 2;
            }
            Bitmap bitmap = (Bitmap) bx.a(BitmapFactory.decodeByteArray(bArr, 0, i, options), (Object) "BitmapFactory returned null");
            return bitmap;
        } finally {
            a.c(a);
        }
    }

    private static Options a(int i) {
        Options options = new Options();
        options.inDither = true;
        options.inPreferredConfig = Bitmaps.a;
        options.inPurgeable = true;
        options.inSampleSize = i;
        if (VERSION.SDK_INT >= 11) {
            options.inMutable = true;
        }
        return options;
    }

    private static void a(byte[] bArr, int i) {
        bArr[i] = (byte) -1;
        bArr[i + 1] = (byte) -39;
    }

    private static boolean b(byte[] bArr, int i) {
        return i >= 2 && bArr[i - 2] == -1 && bArr[i - 1] == -39;
    }
}
