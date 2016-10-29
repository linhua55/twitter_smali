package com.twitter.android.media.foundmedia;

import aby;
import aca;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.media.foundmedia.m;
import java.util.List;

/* compiled from: Twttr */
class v extends z {
    final /* synthetic */ String a;
    final /* synthetic */ GifGalleryFragment b;

    v(GifGalleryFragment gifGalleryFragment, String str) {
        this.b = gifGalleryFragment;
        this.a = str;
    }

    public void a(x xVar) {
        if (xVar.d.equals(this.b.b)) {
            this.b.b = null;
            m h = ((aca) xVar).h();
            if (h == null) {
                this.b.a(6);
                return;
            }
            List list = h.a.b;
            this.b.a(list, h.b.a);
            if (!list.isEmpty()) {
                aby.a(GifGalleryFragment.a(this.b)).b(this.a);
            }
        }
    }
}
