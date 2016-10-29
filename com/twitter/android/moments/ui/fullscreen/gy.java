package com.twitter.android.moments.ui.fullscreen;

import acc;
import android.graphics.Bitmap;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;

/* compiled from: Twttr */
class gy extends acc<Bitmap> {
    final /* synthetic */ gu a;

    gy(gu guVar) {
        this.a = guVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Bitmap) obj);
    }

    public void a(Bitmap bitmap) {
        this.a.k.a(this.a.c.h(), PageLoadingEventType.THUMBNAIL_LOADED.a());
    }
}
