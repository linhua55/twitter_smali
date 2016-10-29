package com.twitter.android.periscope;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;

/* compiled from: Twttr */
class m implements c {
    final /* synthetic */ ImageView a;
    final /* synthetic */ j b;

    m(j jVar, ImageView imageView) {
        this.b = jVar;
        this.a = imageView;
    }

    public void a(ImageResponse imageResponse) {
        this.a.setImageBitmap((Bitmap) imageResponse.f());
    }
}
