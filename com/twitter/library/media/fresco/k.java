package com.twitter.library.media.fresco;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;

/* compiled from: Twttr */
class k implements i<ImageResponse> {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void a(ImageResponse imageResponse) {
        this.a.i = false;
        if (this.a.h != null) {
            this.a.h.a(imageResponse);
        }
    }
}
