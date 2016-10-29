package com.twitter.media.filters;

/* compiled from: Twttr */
class v extends j {
    final /* synthetic */ GLTextureView j;

    public v(GLTextureView gLTextureView, boolean z) {
        int i;
        this.j = gLTextureView;
        if (z) {
            i = 16;
        } else {
            i = 0;
        }
        super(gLTextureView, 8, 8, 8, 0, i, 0);
    }
}
