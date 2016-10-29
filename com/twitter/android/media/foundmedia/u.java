package com.twitter.android.media.foundmedia;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class u implements OnClickListener {
    final /* synthetic */ GifGalleryFragment a;

    u(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void onClick(View view) {
        if (this.a.a != null) {
            z zVar = (z) this.a.a.get();
            if (zVar != null) {
                zVar.a(true);
            }
        }
    }
}
