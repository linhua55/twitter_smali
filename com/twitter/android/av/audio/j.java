package com.twitter.android.av.audio;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
final class j implements i {
    j() {
    }

    public int a(AudioCardError audioCardError) {
        switch (k.a[audioCardError.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 2131361924;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 2131361928;
            default:
                return 2131361923;
        }
    }

    public int b(AudioCardError audioCardError) {
        switch (k.a[audioCardError.ordinal()]) {
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return 2131361927;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 2131361925;
            case C.ENCODING_DTS /*7*/:
                return 2131361926;
            default:
                return 0;
        }
    }
}
