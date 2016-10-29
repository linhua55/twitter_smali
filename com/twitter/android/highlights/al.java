package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.PluralsRes;
import android.support.annotation.StringRes;
import bbn;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.core.TwitterUser;
import defpackage.bdd;
import defpackage.bli;

/* compiled from: Twttr */
public class al {
    public static String a(bli bli, int i) {
        switch (bli.a) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case b.ShimmerFrameLayout_shape /*13*/:
            case b.ShimmerFrameLayout_tilt /*14*/:
                if (bli.c != null && i < bli.c.size()) {
                    return ((TwitterUser) bli.c.get(i)).e;
                }
                bbn.a(new InvalidDataException("User related proof request out of bounds: " + i));
                return null;
            default:
                return null;
        }
    }

    private static String a(bli bli, Resources resources, @StringRes int i, @PluralsRes int i2) {
        TwitterUser twitterUser;
        int i3;
        int i4 = bli.b;
        int i5;
        if (bli.c == null || bli.c.isEmpty()) {
            i5 = i4;
            twitterUser = null;
            i3 = i5;
        } else {
            i5 = i4 + (bli.c.size() - 1);
            twitterUser = (TwitterUser) bli.c.get(0);
            i3 = i5;
        }
        if (twitterUser == null) {
            bbn.a(new InvalidDataException("User related proof did not receive a list of users"));
            return resources.getString(2131363890);
        } else if (i3 > 0) {
            return resources.getQuantityString(i2, i3, new Object[]{twitterUser.k, Integer.valueOf(i3)});
        } else {
            return resources.getString(i, new Object[]{twitterUser.k});
        }
    }

    public static String a(bli bli, Context context) {
        Resources resources = context.getResources();
        switch (bli.a) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return a(bli, resources, 2131363892, 2131492905);
            case Util.TYPE_OTHER /*3*/:
                return a(bli, resources, 2131363898, 2131492906);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return a(bli, resources, 2131363899, 2131492907);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return a(bli, resources, 2131363889, 2131492904);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return resources.getString(2131363895);
            case C.ENCODING_DTS /*7*/:
                return resources.getString(2131363903);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return resources.getString(2131363896);
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return resources.getString(2131363891);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return resources.getString(2131363900);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return resources.getString(2131363902);
            case Atom.FULL_HEADER_SIZE /*12*/:
                return resources.getString(2131363901);
            case b.ShimmerFrameLayout_shape /*13*/:
                return a(bli, resources, 2131363888, 2131492903);
            case b.ShimmerFrameLayout_tilt /*14*/:
                if (bli.c != null && !bli.c.isEmpty()) {
                    return resources.getString(2131363897, new Object[]{((TwitterUser) bli.c.get(0)).k});
                } else if (bli.b == 0) {
                    return resources.getString(2131362394);
                } else {
                    if (bli.b == 1) {
                        return resources.getString(2131362395);
                    }
                    return resources.getString(2131362393, new Object[]{Integer.valueOf(bli.b)});
                }
            case bdd.TwitterButton_strokeWidth /*15*/:
                return resources.getString(2131363894);
            case Atom.LONG_HEADER_SIZE /*16*/:
                return resources.getString(2131363893);
            default:
                return resources.getString(2131363890);
        }
    }
}
