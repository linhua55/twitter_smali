package com.twitter.library.api.upload.internal;

import android.content.Context;
import bbu;
import bmx;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.library.api.upload.g;
import com.twitter.library.api.upload.h;
import com.twitter.library.scribe.ScribeItemUploadMedia;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.util.z;

/* compiled from: Twttr */
public abstract class a {
    protected final Context a;
    protected final ab b;
    protected final z<bmx> c;
    private final g d;

    public abstract void a();

    public a(Context context, ab abVar, g gVar, z<bmx> zVar) {
        this.a = context;
        this.b = abVar;
        this.d = gVar;
        this.c = zVar;
    }

    protected void b(h hVar) {
        this.d.a(hVar);
    }

    protected final void a(MediaFile mediaFile, int i, Exception exception) {
        b(new h(mediaFile, i, exception));
    }

    protected void a(int i, int i2) {
        if (this.c != null) {
            Object b;
            String num = Integer.toString(hashCode());
            if (i >= i2) {
                b = bmx.b(num, 3);
            } else {
                b = bmx.a(num, 3, (i * AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS) / i2);
            }
            this.c.a(b);
        }
    }

    protected void a(String str, String str2, String str3, ScribeItemUploadMedia scribeItemUploadMedia) {
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b.c).b(new String[]{TtmlNode.ANONYMOUS_REGION_ID, TtmlNode.ANONYMOUS_REGION_ID, str, str2, str3})).a(scribeItemUploadMedia));
    }
}
