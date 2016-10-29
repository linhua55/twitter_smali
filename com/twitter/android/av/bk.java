package com.twitter.android.av;

import android.content.Context;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.moments.ui.fullscreen.en;
import com.twitter.library.av.PeriscopeFullscreenVideoPlayerView;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.aj;
import com.twitter.library.av.ak;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class bk {
    public VideoPlayerView a(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        switch (bl.a[mode.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new PeriscopeFullscreenVideoPlayerView(context, aVPlayerAttachment, new aj(), mode);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new VideoPlayerView(context, aVPlayerAttachment, new en(), mode);
            case Util.TYPE_OTHER /*3*/:
                return new VideoPlayerView(context, aVPlayerAttachment, new ak(), mode);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new VideoPlayerView(context, aVPlayerAttachment, new aj(), mode);
            default:
                return new VideoPlayerView(context, aVPlayerAttachment, mode);
        }
    }
}
