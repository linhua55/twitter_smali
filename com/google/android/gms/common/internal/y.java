package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.vm;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;
import ie;

public final class y {
    @Nullable
    public static final String a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return resources.getString(ie.common_google_play_services_install_title);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case bdd.AppCompatTheme_dialogTheme /*42*/:
                return resources.getString(ie.common_google_play_services_update_title);
            case Util.TYPE_OTHER /*3*/:
                return resources.getString(ie.common_google_play_services_enable_title);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return null;
            case EbmlReader.TYPE_FLOAT /*5*/:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return resources.getString(ie.common_google_play_services_invalid_account_title);
            case C.ENCODING_DTS /*7*/:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return resources.getString(ie.common_google_play_services_network_error_title);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return resources.getString(ie.common_google_play_services_unsupported_title);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case Atom.LONG_HEADER_SIZE /*16*/:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case bdd.TwitterButton_bounded /*17*/:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return resources.getString(ie.common_google_play_services_sign_in_failed_title);
            case bdd.TwitterButton_knockout /*18*/:
                return resources.getString(ie.common_google_play_services_updating_title);
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return resources.getString(ie.common_google_play_services_restricted_profile_title);
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
        }
    }

    public static String a(Context context, int i, String str) {
        Resources resources = context.getResources();
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (vm.a(resources)) {
                    return resources.getString(ie.common_google_play_services_install_text_tablet, new Object[]{str});
                }
                return resources.getString(ie.common_google_play_services_install_text_phone, new Object[]{str});
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return resources.getString(ie.common_google_play_services_update_text, new Object[]{str});
            case Util.TYPE_OTHER /*3*/:
                return resources.getString(ie.common_google_play_services_enable_text, new Object[]{str});
            case EbmlReader.TYPE_FLOAT /*5*/:
                return resources.getString(ie.common_google_play_services_invalid_account_text);
            case C.ENCODING_DTS /*7*/:
                return resources.getString(ie.common_google_play_services_network_error_text);
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return resources.getString(ie.common_google_play_services_unsupported_text, new Object[]{str});
            case Atom.LONG_HEADER_SIZE /*16*/:
                return resources.getString(ie.common_google_play_services_api_unavailable_text, new Object[]{str});
            case bdd.TwitterButton_bounded /*17*/:
                return resources.getString(ie.common_google_play_services_sign_in_failed_text);
            case bdd.TwitterButton_knockout /*18*/:
                return resources.getString(ie.common_google_play_services_updating_text, new Object[]{str});
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return resources.getString(ie.common_google_play_services_restricted_profile_text);
            case bdd.AppCompatTheme_dialogTheme /*42*/:
                return resources.getString(ie.common_google_play_services_wear_update_text);
            default:
                return resources.getString(ie.common_google_play_services_unknown_issue, new Object[]{str});
        }
    }

    public static String b(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return resources.getString(ie.common_google_play_services_install_button);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return resources.getString(ie.common_google_play_services_update_button);
            case Util.TYPE_OTHER /*3*/:
                return resources.getString(ie.common_google_play_services_enable_button);
            default:
                return resources.getString(17039370);
        }
    }
}
