package com.google.android.gms.common.api;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;

public class m {
    public static String a(int i) {
        switch (i) {
            case TtmlStyle.UNSPECIFIED /*-1*/:
                return "SUCCESS_CACHE";
            case Util.TYPE_DASH /*0*/:
                return "SUCCESS";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "SERVICE_MISSING";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case Util.TYPE_OTHER /*3*/:
                return "SERVICE_DISABLED";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "SIGN_IN_REQUIRED";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "INVALID_ACCOUNT";
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return "RESOLUTION_REQUIRED";
            case C.ENCODING_DTS /*7*/:
                return "NETWORK_ERROR";
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return "INTERNAL_ERROR";
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return "SERVICE_INVALID";
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return "DEVELOPER_ERROR";
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return "LICENSE_CHECK_FAILED";
            case b.ShimmerFrameLayout_shape /*13*/:
                return "ERROR";
            case b.ShimmerFrameLayout_tilt /*14*/:
                return "INTERRUPTED";
            case bdd.TwitterButton_strokeWidth /*15*/:
                return "TIMEOUT";
            case Atom.LONG_HEADER_SIZE /*16*/:
                return "CANCELED";
            case bdd.TwitterButton_bounded /*17*/:
                return "API_NOT_CONNECTED";
            case 3000:
                return "AUTH_API_INVALID_CREDENTIALS";
            case 3001:
                return "AUTH_API_ACCESS_FORBIDDEN";
            case 3002:
                return "AUTH_API_CLIENT_ERROR";
            case 3003:
                return "AUTH_API_SERVER_ERROR";
            case 3004:
                return "AUTH_TOKEN_ERROR";
            case 3005:
                return "AUTH_URL_RESOLUTION";
            default:
                return "unknown status code: " + i;
        }
    }
}
