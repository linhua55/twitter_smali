package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bmx;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.g;
import com.twitter.library.api.upload.h;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.util.af;
import com.twitter.library.util.v;
import com.twitter.media.model.MediaFile;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import cvi;
import defpackage.cjp;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.List;

/* compiled from: Twttr */
public class p extends a {
    final MediaFile d;
    long e;
    int f;
    int g;
    private final List<z<String, String>> h;
    private final MediaUsage i;
    private final boolean j;
    private final Handler k;
    private final int l;
    private long m;
    private v n;
    private RandomAccessFile o;
    private int p;

    p(Context context, ab abVar, MediaFile mediaFile, g gVar, com.twitter.util.z<bmx> zVar, int i, List<z<String, String>> list, MediaUsage mediaUsage) {
        super(context, abVar, gVar, zVar);
        this.e = -1;
        this.k = new Handler(Looper.getMainLooper());
        this.p = 20;
        this.l = i;
        this.d = mediaFile;
        this.h = list;
        this.j = a(mediaFile);
        this.i = mediaUsage;
    }

    public void a() {
        try {
            this.m = this.d.d.length();
            if (this.m == 0) {
                a(this.d, 1008, new IOException("EditableMedia fileSize is empty"));
            } else {
                e();
            }
        } catch (Exception e) {
            a(this.d, 1008, e);
        }
    }

    public String b() {
        return this.j ? "binary_async" : "upload";
    }

    protected void b(h hVar) {
        g();
        super.b(hVar);
    }

    private void e() {
        a(Callback.DEFAULT_SWIPE_ANIMATION_DURATION, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
        z zVar = new z(this.a, this.b, this.d, this.m, this.h, this.i, this.j);
        zVar.a(new q(this));
        az.a(this.a).a(zVar, null);
    }

    void c() {
        try {
            this.o = new RandomAccessFile(this.d.d, "r");
            this.n = new v(this.o, this.m, (long) this.l);
            this.f = (8000 - (this.j ? ExoPlayerImplInternal.MSG_SEEK_COMPLETE : 0)) / this.n.a();
            d();
        } catch (Exception e) {
            g();
            a(this.d, 1008, e);
        }
    }

    void d() {
        if (this.n.hasNext()) {
            af b = this.n.b();
            if (b == null) {
                a(this.d, 1008, new IOException("RewindableInputStream is null"));
                return;
            } else {
                a(b, this.g, this.n.d(), this.n.e());
                return;
            }
        }
        f();
    }

    private void f() {
        y yVar = new y(this.a, this.b, this.d, this.e, this.j);
        yVar.a(new r(this));
        az.a(this.a).a(yVar, null);
    }

    private void a(int i) {
        this.p--;
        if (this.p == 0) {
            b(new h(new h(this.d, 1005, new Exception("too many status polls")), this.d, this.e));
        } else {
            this.k.postDelayed(new s(this), (long) (Math.max(i, 0) * ExoPlayerImplInternal.MSG_SEEK_COMPLETE));
        }
    }

    void a(cjp cjp, com.twitter.internal.android.service.ab<aa> abVar) {
        switch (cjp == null ? 2 : cjp.a) {
            case Util.TYPE_DASH /*0*/:
                a(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
                b(new h((aa) e.a(abVar.b()), this.d, this.e));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(cjp.e);
            default:
                String str = (cjp == null || cjp.f == null) ? "failed" : cjp.f.c;
                b(new h(new h(this.d, 1005, new Exception(str)), this.d, this.e));
        }
    }

    private void a(af afVar, int i, long j, String str) {
        w wVar = new w(this.a, this.b, this.d, this.e, afVar, i, j, str, this.j);
        wVar.a(new u(this));
        az.a(this.a).a(wVar, null);
    }

    private void g() {
        cvi.a(this.o);
        cvi.a(this.n);
    }

    private static boolean a(MediaFile mediaFile) {
        switch (v.a[mediaFile.f.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return h();
            case Util.TYPE_OTHER /*3*/:
                return d.a("media_async_upload_gif_enabled");
            default:
                return false;
        }
    }

    private static boolean h() {
        return d.a("media_async_upload_video_enabled") || com.twitter.media.util.d.a();
    }
}
