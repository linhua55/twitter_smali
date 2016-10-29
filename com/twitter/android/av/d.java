package com.twitter.android.av;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.av.c;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.cv;
import com.twitter.library.scribe.TwitterScribeItem;

/* compiled from: Twttr */
public abstract class d {
    protected final cv a;
    protected final boolean b;
    private final String c;

    protected abstract TwitterScribeItem a(c cVar);

    protected abstract boolean a(String str);

    protected abstract boolean b(String str);

    public d(AVDataSource aVDataSource) {
        this.a = aVDataSource.i();
        this.c = a(aVDataSource);
        this.b = aVDataSource.m();
    }

    private String a(AVDataSource aVDataSource) {
        switch (aVDataSource.c()) {
            case Util.TYPE_DASH /*0*/:
                return "video_player";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "platform_amplify_card";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "vine_player";
            case Util.TYPE_OTHER /*3*/:
                return "gif_player";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "video_app_card_canvas";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "platform_audio_card";
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return "periscope_player";
            case C.ENCODING_DTS /*7*/:
                return "live_video_player";
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    public String a() {
        return this.c;
    }
}
