package com.twitter.library.media.manager;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.HandlerThread;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import bcv;
import bul;
import com.twitter.media.model.MediaFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.util.c;
import com.twitter.util.collection.ReferenceMap;
import com.twitter.util.collection.e;
import com.twitter.util.collection.m;
import com.twitter.util.concurrent.j;
import com.twitter.util.math.Size;
import com.twitter.util.math.a;
import com.twitter.util.ui.r;
import cus;
import java.io.File;
import java.util.Map;

/* compiled from: Twttr */
public class l implements ComponentCallbacks {
    private static final HandlerThread a;
    private static final Object b;
    private static volatile l c;
    private final Context d;
    private final ReferenceMap<String, i> e;
    private final cus f;
    private final i g;
    private final i h;
    private final al i;
    private final i j;
    private final i k;
    private final i l;
    private final a m;

    static {
        b = new Object();
        a = new HandlerThread("CoordinationThread", 10);
        a.start();
    }

    public static l a() {
        return c;
    }

    public static l a(Context context) {
        if (c == null) {
            synchronized (b) {
                if (c == null) {
                    c = new l(context.getApplicationContext());
                }
            }
        }
        return c;
    }

    private l(Context context) {
        this.e = ReferenceMap.a();
        this.d = context;
        Size a = r.a(context).a(1.5f);
        int a2 = a.a(c.a(context) / 16, (int) AccessibilityNodeInfoCompat.ACTION_SET_TEXT, (int) ViewCompat.MEASURED_STATE_TOO_SMALL);
        e eVar = new e(0, com.twitter.media.util.a.b);
        this.f = new cus(context, "photos", 2, bul.c() ? 26214400 : 104857600, bul.c() ? 5242880 : 10485760);
        this.g = new i("photo", context, a, a, a2, eVar, this.f, null);
        this.e.a("photo", this.g);
        this.h = new i("user", context, a, Size.b, 0, new e(AccessibilityNodeInfoCompat.ACTION_SET_TEXT, com.twitter.media.util.a.b), this.f, new cus(this.d, "users", 1, 10485760, AccessibilityNodeInfoCompat.ACTION_SET_TEXT));
        this.e.a("user", this.h);
        this.i = new al("video", context, a, new e(0, MediaFile.c), new cus(context, "videos", 1, 104857600, 52428800));
        this.j = new i("hashflags", context, a, Size.b, 0, new e(409600, com.twitter.media.util.a.b), new cus(context, "hashflags", 1, 819200, 819200), null);
        this.e.a("hashflags", this.j);
        this.k = new i("gallery", context, a, a, a2, new e(3145728, com.twitter.media.util.a.b), this.f, new cus(context, "gallery", 1, 5242880, 3145728));
        this.e.a("gallery", this.k);
        this.m = new a("gif", context, a, new e(0, new m(this)), new cus(context, "gif_disk", 0, 20971520, 10485760), null);
        this.l = new i("stickers", context, a, a, a2, new e(0, com.twitter.media.util.a.b), new cus(context, "stickers_disk", 0, 10485760, 5242880), null);
        j();
    }

    public i b() {
        return this.g;
    }

    public i c() {
        return this.h;
    }

    public i d() {
        return this.j;
    }

    public al e() {
        return this.i;
    }

    public i f() {
        return this.k;
    }

    public void g() {
        m a = this.i.a();
        if (a != null) {
            a.a();
        }
        synchronized (this.e) {
            for (i a2 : this.e.h()) {
                a = a2.a();
                if (a != null) {
                    a.a();
                }
            }
        }
    }

    public j<Void> a(com.twitter.media.request.a aVar) {
        return new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new n(this, aVar)).a();
    }

    public j<ImageResponse> a(b bVar) {
        return b(bVar.a());
    }

    public j<ImageResponse> b(com.twitter.media.request.a aVar) {
        return a(aVar.o()).a(aVar);
    }

    public Bitmap b(b bVar) {
        return c(bVar.a());
    }

    public Bitmap c(com.twitter.media.request.a aVar) {
        return a(aVar.o()).c(aVar);
    }

    public void c(b bVar) {
        d(bVar.a());
    }

    public void d(com.twitter.media.request.a aVar) {
        a(aVar.o()).b(aVar.a());
    }

    public File e(com.twitter.media.request.a aVar) {
        com.twitter.util.j.c();
        return a(aVar.o()).f(aVar);
    }

    public File d(b bVar) {
        return e(bVar.a());
    }

    public i a(String str) {
        if (str == null || str.equals("photo")) {
            return this.g;
        }
        if (str.equals("user")) {
            return this.h;
        }
        i iVar;
        if (str.equals("thumbnail")) {
            synchronized (this.e) {
                iVar = (i) this.e.a((Object) str);
                if (iVar == null) {
                    iVar = k();
                }
            }
            return iVar;
        } else if (str.equals("stickers")) {
            return this.l;
        } else {
            synchronized (this.e) {
                iVar = (i) this.e.a((Object) str);
                if (iVar == null) {
                    iVar = this.g;
                }
            }
            return iVar;
        }
    }

    public Map<String, i> h() {
        return this.e.f();
    }

    public i a(String str, Size size, int i, int i2) {
        i iVar;
        synchronized (this.e) {
            iVar = (i) this.e.a((Object) str);
            if (iVar == null) {
                if (i2 >= 0) {
                    String str2 = str;
                    Size size2 = size;
                    int i3 = i;
                    iVar = new i(str2, this.d, a, size2, i3, new e(i2, com.twitter.media.util.a.b), this.f, null);
                    this.e.a(str, iVar);
                } else {
                    iVar = this.g;
                }
            }
        }
        return iVar;
    }

    public a i() {
        return this.m;
    }

    public void onConfigurationChanged(Configuration configuration) {
        j();
    }

    public void onLowMemory() {
        g();
    }

    private void j() {
        Resources resources = this.d.getResources();
        UserImageRequest.a(resources.getDimensionPixelSize(bcv.mini_user_image_size), resources.getDimensionPixelSize(bcv.medium_user_image_size), resources.getDimensionPixelSize(bcv.user_image_size));
    }

    private i k() {
        return a("thumbnail", Size.a(this.d.getResources().getDimensionPixelSize(bcv.media_thumbnail_size)), AccessibilityNodeInfoCompat.ACTION_DISMISS, AccessibilityNodeInfoCompat.ACTION_SET_TEXT);
    }
}
