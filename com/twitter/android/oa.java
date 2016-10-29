package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import com.twitter.android.widget.ev;
import com.twitter.media.util.q;
import defpackage.bbr;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class oa extends AsyncTask<Bitmap, Void, BitmapDrawable[]> {
    private final Context a;
    private final Resources b;
    private final WeakReference<ob> c;
    private final WeakReference<od> d;
    private Bitmap e;
    private int f;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Bitmap[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        a((BitmapDrawable[]) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        b((BitmapDrawable[]) obj);
    }

    public oa(Context context, ob obVar, od odVar, int i) {
        this.a = context.getApplicationContext();
        this.f = i;
        this.b = this.a.getResources();
        this.c = new WeakReference(obVar);
        this.d = new WeakReference(odVar);
    }

    protected BitmapDrawable[] a(Bitmap... bitmapArr) {
        int i = 0;
        Bitmap bitmap = bitmapArr[0];
        this.e = bitmap;
        BitmapDrawable[] bitmapDrawableArr = new BitmapDrawable[5];
        try {
            bitmapDrawableArr[4] = new BitmapDrawable(this.b, bitmap);
            int i2 = 3;
            float f = 5.0f;
            while (i2 >= 0 && !isCancelled()) {
                bitmapDrawableArr[i2] = new BitmapDrawable(this.b, q.a(this.a, bitmap, f));
                i2--;
                f += 5.0f;
            }
            return bitmapDrawableArr;
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            while (i < bitmapDrawableArr.length - 1 && bitmapDrawableArr[i] != null) {
                bitmapDrawableArr[i].getBitmap().recycle();
                i++;
            }
            return null;
        }
    }

    protected void a(BitmapDrawable[] bitmapDrawableArr) {
        if (bitmapDrawableArr != null) {
            c(bitmapDrawableArr);
        }
    }

    protected void b(BitmapDrawable[] bitmapDrawableArr) {
        int i;
        OutOfMemoryError e;
        Object obj = null;
        od odVar = (od) this.d.get();
        ob obVar = (ob) this.c.get();
        if (bitmapDrawableArr == null || odVar == null) {
            if (bitmapDrawableArr != null) {
                c(bitmapDrawableArr);
            }
            i = 1;
        } else {
            ev evVar;
            try {
                odVar.a(bitmapDrawableArr[0].getBitmap(), false);
                evVar = new ev(bitmapDrawableArr);
                try {
                    evVar.a(4);
                    if (obVar != null) {
                        obVar.a(evVar);
                        this.f = 4;
                        obVar.e(this.f);
                    }
                } catch (OutOfMemoryError e2) {
                    e = e2;
                    bbr.a(e);
                    if (evVar != null) {
                        evVar.a(null);
                    }
                    c(bitmapDrawableArr);
                    i = 1;
                    try {
                        odVar.a(this.e, true);
                    } catch (OutOfMemoryError e3) {
                        bbr.a(e3);
                        odVar.b();
                    }
                    if (obVar == null) {
                        obVar.z();
                    }
                }
            } catch (OutOfMemoryError e4) {
                e3 = e4;
                evVar = null;
                bbr.a(e3);
                if (evVar != null) {
                    evVar.a(null);
                }
                c(bitmapDrawableArr);
                i = 1;
                odVar.a(this.e, true);
                if (obVar == null) {
                    obVar.z();
                }
            }
        }
        if (!(obj == null || odVar == null)) {
            odVar.a(this.e, true);
        }
        if (obVar == null) {
            obVar.z();
        }
    }

    private void c(BitmapDrawable[] bitmapDrawableArr) {
        int i = 0;
        while (i < bitmapDrawableArr.length - 1 && bitmapDrawableArr[i] != null) {
            bitmapDrawableArr[i].getBitmap().recycle();
            i++;
        }
    }

    public static void a(ev evVar) {
        if (evVar != null) {
            BitmapDrawable[] a = evVar.a();
            if (a != null) {
                evVar.a(null);
                for (BitmapDrawable bitmap : a) {
                    bitmap.getBitmap().recycle();
                }
            }
        }
    }
}
