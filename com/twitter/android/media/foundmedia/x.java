package com.twitter.android.media.foundmedia;

import aca;
import com.twitter.library.service.z;
import com.twitter.model.media.foundmedia.m;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
class x extends z {
    final /* synthetic */ GifGalleryFragment a;

    x(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void a(com.twitter.library.service.x xVar) {
        String str = null;
        if (xVar.d.equals(this.a.b)) {
            List emptyList;
            this.a.b = null;
            this.a.a(4);
            m h = ((aca) xVar).h();
            if (h == null) {
                emptyList = Collections.emptyList();
            } else {
                emptyList = h.a.b;
                str = h.b.a;
            }
            this.a.b(emptyList, str);
        }
    }
}
