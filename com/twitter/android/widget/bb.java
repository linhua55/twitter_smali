package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class bb implements OnClickListener {
    final /* synthetic */ GalleryGridFragment a;

    bb(GalleryGridFragment galleryGridFragment) {
        this.a = galleryGridFragment;
    }

    public void onClick(View view) {
        if (GalleryGridFragment.b(this.a) != null) {
            GalleryGridFragment.b(this.a).z();
        }
    }
}
