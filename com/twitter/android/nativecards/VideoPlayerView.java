package com.twitter.android.nativecards;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.library.media.player.InlineVideoView;
import defpackage.bct;

/* compiled from: Twttr */
public class VideoPlayerView extends PlayerView {
    public final InlineVideoView a;

    public VideoPlayerView(Context context) {
        this(context, null);
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.cardViewStyle);
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new InlineVideoView(context);
    }

    public void a(String str) {
        this.a.setVideoPath(str);
        addView(this.a);
        this.a.start();
    }

    public void e() {
        this.a.a();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.a.layout(i, i2, i3, i4);
    }
}
