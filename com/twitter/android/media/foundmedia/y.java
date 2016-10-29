package com.twitter.android.media.foundmedia;

import aca;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.media.foundmedia.m;

/* compiled from: Twttr */
class y extends z {
    final /* synthetic */ GifGalleryFragment a;

    y(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void a(x xVar) {
        if (xVar.d.equals(this.a.b)) {
            this.a.b = null;
            this.a.a(4);
            m h = ((aca) xVar).h();
            if (h != null) {
                this.a.c(h.a.b, h.b.a);
            }
        }
    }
}
