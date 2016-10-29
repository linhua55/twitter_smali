package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class w implements OnCheckedChangeListener {
    final /* synthetic */ GifGalleryFragment a;

    w(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        e.a((Context) e.a(this.a.getContext())).a(z);
        this.a.d.setPlayAnimation(z);
    }
}
