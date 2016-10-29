package com.twitter.library.network.forecaster;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.platform.TwRadioType;
import com.twitter.util.units.bitrate.KilobitsPerSecond;
import defpackage.bdd;

/* compiled from: Twttr */
class i {
    public static KilobitsPerSecond a(TwRadioType twRadioType) {
        switch (j.a[twRadioType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return KilobitsPerSecond.a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new KilobitsPerSecond(14.0d);
            case Util.TYPE_OTHER /*3*/:
                return new KilobitsPerSecond(25.0d);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new KilobitsPerSecond(50.0d);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new KilobitsPerSecond(50.0d);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new KilobitsPerSecond(100.0d);
            case C.ENCODING_DTS /*7*/:
                return new KilobitsPerSecond(400.0d);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return new KilobitsPerSecond(400.0d);
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return new KilobitsPerSecond(600.0d);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return new KilobitsPerSecond(700.0d);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return new KilobitsPerSecond(1000.0d);
            case Atom.FULL_HEADER_SIZE /*12*/:
                return new KilobitsPerSecond(1000.0d);
            case b.ShimmerFrameLayout_shape /*13*/:
                return new KilobitsPerSecond(2000.0d);
            case b.ShimmerFrameLayout_tilt /*14*/:
                return new KilobitsPerSecond(5000.0d);
            case bdd.TwitterButton_strokeWidth /*15*/:
                return new KilobitsPerSecond(10000.0d);
            case Atom.LONG_HEADER_SIZE /*16*/:
                return new KilobitsPerSecond(10000.0d);
            default:
                return new KilobitsPerSecond(1000.0d);
        }
    }

    public static KilobitsPerSecond b(TwRadioType twRadioType) {
        switch (j.a[twRadioType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return KilobitsPerSecond.a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new KilobitsPerSecond(14.0d);
            case Util.TYPE_OTHER /*3*/:
                return new KilobitsPerSecond(15.0d);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new KilobitsPerSecond(50.0d);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new KilobitsPerSecond(50.0d);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new KilobitsPerSecond(25.0d);
            case C.ENCODING_DTS /*7*/:
                return new KilobitsPerSecond(50.0d);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return new KilobitsPerSecond(128.0d);
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return new KilobitsPerSecond(500.0d);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return new KilobitsPerSecond(500.0d);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return new KilobitsPerSecond(500.0d);
            case Atom.FULL_HEADER_SIZE /*12*/:
                return new KilobitsPerSecond(1000.0d);
            case b.ShimmerFrameLayout_shape /*13*/:
                return new KilobitsPerSecond(300.0d);
            case b.ShimmerFrameLayout_tilt /*14*/:
                return new KilobitsPerSecond(600.0d);
            case bdd.TwitterButton_strokeWidth /*15*/:
                return new KilobitsPerSecond(10000.0d);
            case Atom.LONG_HEADER_SIZE /*16*/:
                return new KilobitsPerSecond(10000.0d);
            default:
                return new KilobitsPerSecond(500.0d);
        }
    }
}
