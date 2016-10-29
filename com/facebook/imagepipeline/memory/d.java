package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.b;
import com.facebook.imagepipeline.nativecode.Bitmaps;
import defpackage.bx;
import javax.annotation.concurrent.ThreadSafe;

@TargetApi(21)
@ThreadSafe
/* compiled from: Twttr */
public class d extends BasePool<Bitmap> {
    protected /* synthetic */ Object b(int i) {
        return i(i);
    }

    protected /* synthetic */ void b(Object obj) {
        a((Bitmap) obj);
    }

    protected /* synthetic */ int c(Object obj) {
        return b((Bitmap) obj);
    }

    protected /* synthetic */ boolean d(Object obj) {
        return c((Bitmap) obj);
    }

    public d(b bVar, y yVar, z zVar) {
        super(bVar, yVar, zVar);
        a();
    }

    protected Bitmap i(int i) {
        return Bitmap.createBitmap(1, i, Bitmaps.a);
    }

    protected void a(Bitmap bitmap) {
        bx.a((Object) bitmap);
        bitmap.recycle();
    }

    protected int c(int i) {
        return i;
    }

    protected int b(Bitmap bitmap) {
        bx.a((Object) bitmap);
        return bitmap.getAllocationByteCount() / 4;
    }

    protected int d(int i) {
        return i * 4;
    }

    protected boolean c(Bitmap bitmap) {
        bx.a((Object) bitmap);
        return !bitmap.isRecycled() && bitmap.isMutable() && Bitmaps.a.equals(bitmap.getConfig());
    }
}
