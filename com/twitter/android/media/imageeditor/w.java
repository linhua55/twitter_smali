package com.twitter.android.media.imageeditor;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.FilteredImageView;
import com.twitter.media.ui.image.g;

/* compiled from: Twttr */
class w implements g<FilteredImageView> {
    final /* synthetic */ v a;

    w(v vVar) {
        this.a = vVar;
    }

    public void a(FilteredImageView filteredImageView, ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            this.a.e.d = true;
            this.a.b.setOnImageLoadedListener(null);
        }
    }
}
