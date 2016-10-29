package com.twitter.android.av;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class p {
    public static boolean a() {
        return d.a("media_autoplay_android_enabled");
    }

    public static boolean a(Tweet tweet) {
        switch (be.a(tweet)) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case C.ENCODING_DTS /*7*/:
                return true;
            default:
                return false;
        }
    }
}
