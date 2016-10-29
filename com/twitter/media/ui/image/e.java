package com.twitter.media.ui.image;

import java.io.File;

/* compiled from: Twttr */
class e implements com.twitter.util.concurrent.e<File> {
    final /* synthetic */ BaseMediaImageView a;

    e(BaseMediaImageView baseMediaImageView) {
        this.a = baseMediaImageView;
    }

    public void a(File file) {
        if (file != null) {
            this.a.g = false;
            this.a.n();
        }
    }
}
