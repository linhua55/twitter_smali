package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bmx;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.g;
import com.twitter.library.client.az;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.util.z;

/* compiled from: Twttr */
public class h extends a {
    private final MediaFile d;
    private final MediaUsage e;

    public h(Context context, ab abVar, MediaFile mediaFile, g gVar, z<bmx> zVar, MediaUsage mediaUsage) {
        super(context, abVar, gVar, zVar);
        this.d = mediaFile;
        this.e = mediaUsage;
    }

    public void a() {
        g gVar = new g(this.a, "non_segmented_upload", this.b, this.d);
        a(Callback.DEFAULT_SWIPE_ANIMATION_DURATION, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
        az.a(this.a).a(gVar, new i(this), ExecutionClass.c);
    }
}
