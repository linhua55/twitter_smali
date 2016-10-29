package com.twitter.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import bbu;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.client.c;
import com.twitter.library.scribe.TwitterScribeLog;
import java.util.Calendar;

/* compiled from: Twttr */
public class AppRatingPromptHelper {

    /* compiled from: Twttr */
    public enum AppRatingEvent {
        IMPRESSION,
        RATE_YES,
        RATE_NO,
        RATE_LATER,
        APP_FEEDBACK,
        RATE_1_STAR,
        RATE_2_STAR,
        RATE_3_STAR,
        RATE_4_STAR,
        RATE_5_STAR
    }

    static TwitterScribeLog a(AppRatingEvent appRatingEvent, long j) {
        String str;
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(j);
        String str2 = "rate_us_prompt";
        switch (g.a[appRatingEvent.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                str2 = "impression";
                str = null;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                str = "rate_us_yes";
                str2 = "click";
                break;
            case Util.TYPE_OTHER /*3*/:
                str = "rate_us_no";
                str2 = "click";
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                str = "rate_us_later";
                str2 = "click";
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                str = "feedback";
                str2 = "click";
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                str = "rating";
                str2 = "1star";
                break;
            case C.ENCODING_DTS /*7*/:
                str = "rating";
                str2 = "2star";
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                str = "rating";
                str2 = "3star";
                break;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                str = "rating";
                str2 = "4star";
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                str = "rating";
                str2 = "5star";
                break;
            default:
                str2 = null;
                str = null;
                break;
        }
        twitterScribeLog.b(new String[]{"rate_us_prompt", null, null, str, str2});
        return twitterScribeLog;
    }

    public static void a(AppRatingEvent appRatingEvent, c cVar, long j) {
        bbu.a(a(appRatingEvent, j));
    }

    public static int a(Context context, h hVar) {
        int i = 0;
        SharedPreferences c = c(context);
        if (c.getBoolean("donotshow", false)) {
            return -1;
        }
        long j = c.getLong("lastuse", 0);
        int i2 = c.getInt("consecutivedays", 0);
        Editor edit = c.edit();
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance2.setTimeInMillis(j);
        if (hVar.a(instance2)) {
            i = i2 + 1;
            edit.putInt("consecutivedays", i);
        } else if (hVar.a(instance2, instance)) {
            i = i2;
        } else {
            edit.putInt("consecutivedays", 0);
        }
        edit.putLong("lastuse", instance.getTimeInMillis());
        edit.apply();
        return i;
    }

    public static void a(Context context) {
        Editor edit = c(context).edit();
        edit.putBoolean("donotshow", true);
        edit.apply();
    }

    public static void b(Context context) {
        Editor edit = c(context).edit();
        edit.remove("consecutivedays");
        edit.remove("lastuse");
        edit.apply();
    }

    private static SharedPreferences c(Context context) {
        return context.getSharedPreferences("appratingusage", 0);
    }
}
