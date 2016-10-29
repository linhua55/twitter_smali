package com.twitter.android.av.revenue;

import android.content.Context;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.av.FullscreenConversationCardCanvasChromeView;
import com.twitter.android.card.a;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class VideoConversationPlayerCanvasView extends VideoPlayerView {
    public VideoConversationPlayerCanvasView(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        super(context, aVPlayerAttachment, mode);
    }

    protected int getEmbeddedChromeMode() {
        switch (j.a[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 0;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 6;
            default:
                return super.getEmbeddedChromeMode();
        }
    }

    public void a(VideoConversationCardData videoConversationCardData, a aVar) {
        if (this.a instanceof FullscreenConversationCardCanvasChromeView) {
            ((FullscreenConversationCardCanvasChromeView) this.a).a(this, videoConversationCardData, aVar);
        }
    }
}
