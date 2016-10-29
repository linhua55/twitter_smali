package com.twitter.android;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.twitter.android.util.q;
import com.twitter.android.util.s;
import defpackage.bbr;

/* compiled from: Twttr */
public class nw extends AsyncTask<Bitmap, Void, int[]> {
    final /* synthetic */ ScrollingHeaderActivity a;
    private final boolean b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Bitmap[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((int[]) obj);
    }

    public nw(ScrollingHeaderActivity scrollingHeaderActivity, boolean z) {
        this.a = scrollingHeaderActivity;
        this.b = z;
    }

    protected int[] a(Bitmap... bitmapArr) {
        int i = 0;
        if (bitmapArr == null || ((!this.b && bitmapArr.length != 1) || (this.b && bitmapArr.length != 2))) {
            return null;
        }
        int[] iArr = new int[4];
        try {
            int length = bitmapArr.length;
            int i2 = 0;
            while (i < length) {
                Bitmap bitmap = bitmapArr[i];
                if (bitmap != null) {
                    if (this.b) {
                        int[] b = q.b(bitmap);
                        if (b != null) {
                            iArr[i2] = b[0];
                            iArr[i2 + 1] = b[1];
                        }
                    } else {
                        s a = q.a(bitmap);
                        if (a != null) {
                            iArr[i2] = a.a;
                            iArr[i2 + 1] = a.b;
                            iArr[i2 + 2] = a.c;
                            iArr[i2 + 3] = a.d;
                        }
                    }
                }
                i2 += 2;
                i++;
            }
            return iArr;
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return iArr;
        }
    }

    protected void a(int[] iArr) {
        int i = 0;
        if (iArr != null) {
            for (int i2 = 0; i2 < 4; i2++) {
                if (iArr[i2] != 0) {
                    this.a.C[i2] = iArr[i2];
                    i++;
                }
            }
        }
        if (i > 0) {
            this.a.t.setColorScheme(this.a.C);
        }
        this.a.b(i);
    }
}
