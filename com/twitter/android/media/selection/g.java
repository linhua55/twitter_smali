package com.twitter.android.media.selection;

import android.os.Bundle;

/* compiled from: Twttr */
class g extends com.twitter.app.common.base.g {
    g(int i) {
        super(new Bundle(1));
        this.b.putInt("max_image_count", Math.max(i, 1));
    }

    g(MediaAttachmentController mediaAttachmentController) {
        super(mediaAttachmentController.getArguments());
    }

    int a() {
        return this.b.getInt("max_image_count");
    }
}
