package com.twitter.android.moments.data;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.g;
import com.twitter.util.math.Size;
import cpk;

/* compiled from: Twttr */
final class aa implements i<ImageResponse> {
    final /* synthetic */ g a;
    final /* synthetic */ Size b;
    final /* synthetic */ MediaImageView c;

    aa(g gVar, Size size, MediaImageView mediaImageView) {
        this.a = gVar;
        this.b = size;
        this.c = mediaImageView;
    }

    public void a(ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            this.c.setTransformationMatrix(cpk.a(this.c.getImageView(), cpk.a(this.a, this.b, Size.a(this.c))));
        }
    }
}
