package com.twitter.media.filters;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

/* compiled from: Twttr */
class h implements OnLayoutChangeListener {
    final /* synthetic */ GLTextureView a;

    h(GLTextureView gLTextureView) {
        this.a = gLTextureView;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.a.a(this.a.getSurfaceTexture(), 0, i3 - i, i4 - i2);
    }
}
