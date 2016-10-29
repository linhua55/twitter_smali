package com.twitter.android.av;

import android.content.Context;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.av.revenue.VideoAppCardData;
import com.twitter.android.card.CardActionHelper;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class VideoAppPlayerCanvasView extends VideoPlayerView {
    public VideoAppPlayerCanvasView(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        super(context, aVPlayerAttachment, mode);
    }

    public void a(VideoAppCardData videoAppCardData, CardActionHelper cardActionHelper) {
        if (this.a instanceof FullscreenVideoCardCanvasChromeView) {
            ((FullscreenVideoCardCanvasChromeView) this.a).a(this, cardActionHelper, videoAppCardData);
        }
    }

    protected int getEmbeddedChromeMode() {
        switch (bh.a[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 0;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 2;
            default:
                return super.getEmbeddedChromeMode();
        }
    }
}
