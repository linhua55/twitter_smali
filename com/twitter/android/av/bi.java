package com.twitter.android.av;

import android.content.Context;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.av.control.h;
import com.twitter.library.av.r;

/* compiled from: Twttr */
public class bi implements r {
    public h a(Context context, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return h.u;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new FullscreenVideoPlayerChromeView(context);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new FullscreenVideoCardCanvasChromeView(context);
            case Util.TYPE_OTHER /*3*/:
                return new AutoPlayVideoPlayerChromeView(context);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new EngagementOnlyChromeView(context);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new LoaderOnlyChromeView(context);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new FullscreenConversationCardCanvasChromeView(context);
            case C.ENCODING_DTS /*7*/:
                return new PeriscopeChromeView(context);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return new PeriscopeFullscreenChromeView(context);
            default:
                throw new IllegalArgumentException("The VideoPlayerChrome type is not valid. Valid values are VideoPlayerChrome.INLINE, VideoPlayerChrome.FULLSCREEN, VideoPlayerChrome.APP_CARD, VideoPlayerChrome.VIEW_MORE_ITEM and VideoPlayerChrome.EMPTY");
        }
    }
}
