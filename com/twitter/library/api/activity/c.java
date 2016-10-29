package com.twitter.library.api.activity;

import bbu;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class c {
    public static TwitterScribeAssociation a(int i) {
        return (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).b("connect")).c(b(i));
    }

    public static void a(long j, int i, int i2) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{TwitterScribeLog.a(a(i), TtmlNode.ANONYMOUS_REGION_ID, TtmlNode.ANONYMOUS_REGION_ID, "aggregation")})).a(new ActivityAggregationScribeItem(i2)));
    }

    public static String b(int i) {
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "activity_filtered";
            case Util.TYPE_OTHER /*3*/:
                return "activity_following";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "activity_verified";
            default:
                return "activity";
        }
    }
}
