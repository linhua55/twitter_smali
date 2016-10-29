package com.twitter.android.periscope;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.widget.ImageView;
import com.twitter.library.media.manager.l;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.i;
import com.twitter.util.math.Size;
import defpackage.dce;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

/* compiled from: Twttr */
class j implements dce {
    @VisibleForTesting
    final List<Future<ImageResponse>> a;
    private final l b;

    j(l lVar) {
        this.b = lVar;
        this.a = new ArrayList();
    }

    public void a(Context context, String str, Map<String, Bitmap> map, double d) {
        a(a.a(str, Size.a(d)).a(), (Map) map);
    }

    @VisibleForTesting
    void a(a aVar, Map<String, Bitmap> map) {
        aVar.a((i) new k(this, map));
        a(aVar);
    }

    private void a(a aVar) {
        com.twitter.util.concurrent.j b = this.b.b(aVar);
        this.a.add(b);
        b.a(new l(this, b));
    }

    public void a(Context context, String str, ImageView imageView) {
        a(a.a(str, Size.a((int) AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, (int) AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY)).a(), imageView);
    }

    @VisibleForTesting
    void a(a aVar, ImageView imageView) {
        aVar.a((i) new m(this, imageView));
        a(aVar);
    }

    public void a() {
        for (Future cancel : new ArrayList(this.a)) {
            cancel.cancel(true);
        }
        this.a.clear();
    }
}
