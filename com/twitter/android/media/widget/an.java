package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.twitter.model.media.foundmedia.f;

/* compiled from: Twttr */
class an implements OnLongClickListener {
    final /* synthetic */ GifGalleryView a;

    an(GifGalleryView gifGalleryView) {
        this.a = gifGalleryView;
    }

    public boolean onLongClick(View view) {
        if (this.a.f == null) {
            return false;
        }
        this.a.f.a((f) view.getTag(2131951662));
        return true;
    }
}
