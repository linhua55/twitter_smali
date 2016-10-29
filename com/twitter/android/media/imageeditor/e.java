package com.twitter.android.media.imageeditor;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;

/* compiled from: Twttr */
class e implements m {
    final /* synthetic */ EditImageFragment a;

    e(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        if (this.a.g != null) {
            this.a.g.a();
        }
    }
}
