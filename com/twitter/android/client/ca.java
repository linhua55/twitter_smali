package com.twitter.android.client;

import android.graphics.Bitmap;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;
import com.twitter.model.core.Tweet;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
class ca implements c {
    final /* synthetic */ AtomicBoolean a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ ce c;
    final /* synthetic */ int d;
    final /* synthetic */ WidgetControl e;

    ca(WidgetControl widgetControl, AtomicBoolean atomicBoolean, Tweet tweet, ce ceVar, int i) {
        this.e = widgetControl;
        this.a = atomicBoolean;
        this.b = tweet;
        this.c = ceVar;
        this.d = i;
    }

    public void a(ImageResponse imageResponse) {
        if (this.a.get()) {
            this.e.a(this.b, (Bitmap) imageResponse.f(), this.c, this.d);
        }
    }
}
