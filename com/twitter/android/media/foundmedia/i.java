package com.twitter.android.media.foundmedia;

import com.twitter.android.media.widget.ak;
import com.twitter.android.util.v;
import com.twitter.model.media.foundmedia.c;

/* compiled from: Twttr */
class i implements ak {
    final /* synthetic */ GifCategoriesFragment a;

    i(GifCategoriesFragment gifCategoriesFragment) {
        this.a = gifCategoriesFragment;
    }

    public void a(c cVar) {
        v.a(this.a.getActivity(), cVar.a, 2, cVar.b, 1, this.a.a);
    }

    public void a() {
        if (this.a.b == null) {
            this.a.a(0);
        }
    }
}
