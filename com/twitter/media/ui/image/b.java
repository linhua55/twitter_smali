package com.twitter.media.ui.image;

import com.twitter.media.request.ImageResponse;
import com.twitter.util.c;
import com.twitter.util.concurrent.e;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
class b implements e<Void> {
    final /* synthetic */ ImageResponse a;
    final /* synthetic */ j b;
    final /* synthetic */ BaseMediaImageView c;

    b(BaseMediaImageView baseMediaImageView, ImageResponse imageResponse, j jVar) {
        this.c = baseMediaImageView;
        this.a = imageResponse;
        this.b = jVar;
    }

    public void a(Void voidR) {
        if (c.a()) {
            this.c.a(this.a, this.b);
        } else {
            this.c.post(new c(this));
        }
    }
}
