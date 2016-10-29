package com.twitter.android;

import android.net.Uri;
import android.net.Uri.Builder;
import com.twitter.util.aj;
import com.twitter.util.w;
import java.util.Locale;

/* compiled from: Twttr */
public class yi {
    public static String a(Locale locale, String str) {
        if (str == null) {
            return null;
        }
        Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("initiated_in_app", "true");
        if (locale != null) {
            CharSequence c = w.c(locale);
            if (aj.b(c)) {
                buildUpon.appendQueryParameter("lang", c);
            }
        }
        return buildUpon.toString();
    }
}
