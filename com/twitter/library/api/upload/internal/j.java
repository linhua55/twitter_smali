package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bmx;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.g;
import com.twitter.library.api.upload.h;
import com.twitter.library.client.az;
import com.twitter.library.scribe.ScribeItemUploadMedia;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaType;
import com.twitter.util.object.e;
import com.twitter.util.z;
import defpackage.cjp;

/* compiled from: Twttr */
public class j extends a {
    long d;
    final Uri e;
    final MediaType f;
    private final Handler g;
    private final MediaUsage h;
    private int i;

    public j(Context context, ab abVar, Uri uri, MediaType mediaType, MediaUsage mediaUsage, g gVar, z<bmx> zVar) {
        super(context, abVar, gVar, zVar);
        this.d = -1;
        this.g = new Handler(Looper.getMainLooper());
        this.i = 20;
        this.e = uri;
        this.f = mediaType;
        this.h = mediaUsage;
    }

    public void a() {
        b();
    }

    private void b() {
        a(Callback.DEFAULT_SWIPE_ANIMATION_DURATION, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
        z zVar = new z(this.a, this.b, this.e, this.f, this.h);
        zVar.a(new k(this));
        az.a(this.a).a(zVar, null);
    }

    void a(int i) {
        this.i--;
        if (this.i == 0) {
            b(new h(new h(null, 1005, new Exception("too many status polls")), null, this.d));
        } else {
            this.g.postDelayed(new l(this), (long) (Math.max(i, 0) * ExoPlayerImplInternal.MSG_SEEK_COMPLETE));
        }
    }

    void a(cjp cjp, com.twitter.internal.android.service.ab<aa> abVar) {
        switch (cjp == null ? 2 : cjp.a) {
            case Util.TYPE_DASH /*0*/:
                a(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
                b(new h((aa) e.a(abVar.b()), null, this.d));
                a("success");
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(cjp.e);
            default:
                String str = (cjp == null || cjp.f == null) ? "failed" : cjp.f.c;
                b(new h(new h(null, 1005, new Exception(str)), null, this.d));
                a("failure");
        }
    }

    private void a(String str) {
        a("segmented_uploader", "url_async_upload", str, new ScribeItemUploadMedia().a(this.f).a(this.e).a(this.h));
    }
}
