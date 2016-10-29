package com.twitter.android.util;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import defpackage.bbu;

/* compiled from: Twttr */
public class al {
    private static final int[] a;

    static {
        a = new int[]{2131364347, 2131364348};
    }

    public static void a(Context context, String str, int i) {
        String str2 = context.getString(2131364346) + "_" + context.getString(i);
        Builder appendQueryParameter = Uri.parse(context.getString(2131364345)).buildUpon().appendQueryParameter("refsrc", str2);
        if (aj.b((CharSequence) str)) {
            appendQueryParameter.appendQueryParameter("screen_name", str);
        }
        aq.a(context, appendQueryParameter.build());
        str2 = a(context, str2);
        str2 = ScribeLog.a("login", BuildConfig.VERSION_NAME, "forgot_password", str2, "click");
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(str2));
    }

    public static void a(Context context, Uri uri) {
        String queryParameter = uri.getQueryParameter("refsrc");
        String string = context.getString(2131364346);
        if (queryParameter != null && queryParameter.startsWith(string)) {
            queryParameter = a(context, queryParameter);
            queryParameter = ScribeLog.a("login", BuildConfig.VERSION_NAME, "forgot_password", queryParameter, "success");
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b(queryParameter));
        }
    }

    private static String a(Context context, String str) {
        String substring = str.substring(context.getString(2131364346).length(), str.length());
        for (int string : a) {
            String string2 = context.getString(string);
            if (substring.equals("_" + string2)) {
                return string2;
            }
        }
        return BuildConfig.VERSION_NAME;
    }
}
