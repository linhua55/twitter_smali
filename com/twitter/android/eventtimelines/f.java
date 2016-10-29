package com.twitter.android.eventtimelines;

import android.graphics.Bitmap;
import com.twitter.android.eventtimelines.header.b;

/* compiled from: Twttr */
class f implements b {
    final /* synthetic */ EventTimelineActivity a;

    f(EventTimelineActivity eventTimelineActivity) {
        this.a = eventTimelineActivity;
    }

    public void a(Bitmap bitmap) {
        if (bitmap == null) {
            this.a.z.b();
        } else {
            this.a.b(bitmap);
        }
    }
}
