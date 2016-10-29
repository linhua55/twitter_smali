package com.twitter.android.media.foundmedia;

import aca;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.media.foundmedia.m;

/* compiled from: Twttr */
class l extends z {
    final /* synthetic */ GifCategoriesFragment a;

    l(GifCategoriesFragment gifCategoriesFragment) {
        this.a = gifCategoriesFragment;
    }

    public void a(x xVar) {
        m h = ((aca) xVar).h();
        if (h != null) {
            this.a.a(h.a.a);
        } else if (this.a.c == null) {
            this.a.c();
        }
    }
}
