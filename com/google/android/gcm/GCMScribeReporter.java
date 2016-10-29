package com.google.android.gcm;

import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class GCMScribeReporter {
    public static void a(long j, String str, String str2) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b("notification", "status_bar", null, str, "push_data_received")).e(str2)).c(2));
    }

    public static void a(int i, String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(0).b("notification", "status_bar", null, null, "push_data_dropped")).a((ScribeItem) new GCMDeletedMessageScribeItem(i))).e(str)).c(2));
    }
}
