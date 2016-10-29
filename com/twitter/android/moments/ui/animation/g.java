package com.twitter.android.moments.ui.animation;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.twitter.media.model.MediaFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import com.twitter.util.math.Size;
import cpk;

/* compiled from: Twttr */
class g implements i<ImageResponse> {
    final /* synthetic */ com.twitter.model.moments.g a;
    final /* synthetic */ Size b;
    final /* synthetic */ MomentsActivityTransition c;

    g(MomentsActivityTransition momentsActivityTransition, com.twitter.model.moments.g gVar, Size size) {
        this.c = momentsActivityTransition;
        this.a = gVar;
        this.b = size;
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        MediaFile a = imageResponse.a();
        if (!(bitmap == null || a == null)) {
            Rect a2 = cpk.a(this.a, a.e, this.b);
            MomentsActivityTransition.c(this.c).setImageBitmap(bitmap);
            MomentsActivityTransition.c(this.c).setImageMatrix(cpk.a(MomentsActivityTransition.c(this.c), a2));
        }
        MomentsActivityTransition.b(this.c).addView(MomentsActivityTransition.h(this.c));
        MomentsActivityTransition.i(this.c);
    }
}
