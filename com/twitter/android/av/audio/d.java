package com.twitter.android.av.audio;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;

/* compiled from: Twttr */
class d implements c {
    final /* synthetic */ ImageView a;
    final /* synthetic */ AudioCardPlayerView b;

    d(AudioCardPlayerView audioCardPlayerView, ImageView imageView) {
        this.b = audioCardPlayerView;
        this.a = imageView;
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            this.a.setImageBitmap(bitmap);
        }
    }
}
