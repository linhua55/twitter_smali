package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.common.internal.g;
import java.util.concurrent.CountDownLatch;

final class c implements Runnable {
    final /* synthetic */ ImageManager a;
    private final Uri b;
    private final ParcelFileDescriptor c;

    public c(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.a = imageManager;
        this.b = uri;
        this.c = parcelFileDescriptor;
    }

    public void run() {
        g.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        boolean z = false;
        Bitmap bitmap = null;
        if (this.c != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(this.c.getFileDescriptor());
            } catch (Throwable e) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.b, e);
                z = true;
            }
            try {
                this.c.close();
            } catch (Throwable e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.a.d.post(new d(this.a, this.b, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            Log.w("ImageManager", "Latch interrupted while posting " + this.b);
        }
    }
}
