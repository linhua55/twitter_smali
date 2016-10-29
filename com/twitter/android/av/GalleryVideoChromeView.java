package com.twitter.android.av;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.util.AttributeSet;
import com.twitter.library.av.control.g;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.model.av.AVMedia;
import defpackage.bsa;

/* compiled from: Twttr */
public class GalleryVideoChromeView extends FullscreenVideoPlayerChromeView {
    public GalleryVideoChromeView(Context context) {
        super(context);
    }

    public GalleryVideoChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GalleryVideoChromeView(Context context, AttributeSet attributeSet, as asVar) {
        super(context, attributeSet, asVar);
    }

    public GalleryVideoChromeView(Context context, AttributeSet attributeSet, g gVar, as asVar) {
        super(context, attributeSet, gVar, asVar);
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        super.a(aVPlayerAttachment);
        this.k.a(null);
        I();
    }

    protected void setupInternalViews(Context context) {
        super.setupInternalViews(context);
        this.b.setVisibility(8);
    }

    public void b() {
        super.b();
        p();
    }

    public void i() {
    }

    public boolean f() {
        if (this.a == null || !this.t) {
            return false;
        }
        this.a.o();
        return true;
    }

    public void a(AVMedia aVMedia) {
        super.a(aVMedia);
        if (this.i) {
            p();
        }
    }

    public void d() {
        u();
        p();
    }

    protected bsa n() {
        return null;
    }

    protected boolean H() {
        return false;
    }

    @ColorInt
    public int getPlaylistCompleteOverlayBackgroundColor() {
        return 0;
    }
}
