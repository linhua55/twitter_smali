package com.twitter.library.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;
import com.twitter.ui.widget.w;

/* compiled from: Twttr */
class i implements c {
    private final g a;
    private final w b;

    i(g gVar, w wVar) {
        this.a = gVar;
        this.b = wVar;
    }

    public void a(ImageResponse imageResponse) {
        Context a = this.a.a();
        if (a != null) {
            this.b.b(new BitmapDrawable(a.getResources(), (Bitmap) imageResponse.f()));
            this.a.d();
        }
    }
}
