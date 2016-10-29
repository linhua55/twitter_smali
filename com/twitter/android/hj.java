package com.twitter.android;

import android.graphics.Bitmap;
import android.widget.Toast;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;

/* compiled from: Twttr */
class hj implements m {
    final /* synthetic */ ImageActivity a;

    hj(ImageActivity imageActivity) {
        this.a = imageActivity;
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        this.a.b.setVisibility(4);
        this.a.c = bitmap;
        this.a.Y().h();
        if (bitmap == null) {
            Toast.makeText(this.a, 2131362923, 1).show();
        }
    }
}
