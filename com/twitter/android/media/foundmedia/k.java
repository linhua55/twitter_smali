package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class k implements OnCheckedChangeListener {
    final /* synthetic */ GifCategoriesFragment a;

    k(GifCategoriesFragment gifCategoriesFragment) {
        this.a = gifCategoriesFragment;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        e.a((Context) e.a(this.a.getContext())).a(z);
        GifCategoriesFragment.a(this.a).setPlayAnimation(z);
    }
}
