package com.twitter.android.revenue.card;

import android.content.UriMatcher;
import android.net.Uri;
import bym;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
class aj {
    public static final Set<String> a;
    private static final UriMatcher b;

    static {
        a = ar.a("twitter.com", new String[]{"www.twitter.com"});
        b = new UriMatcher(-1);
        for (String addURI : a) {
            b.addURI(addURI, "i/moments/*", 0);
        }
    }

    static String a(Tweet tweet) {
        if (!(!bym.a() || tweet == null || tweet.Z() == null)) {
            for (cr crVar : tweet.Z()) {
                if (crVar.C != null && a(crVar.C)) {
                    return crVar.C;
                }
            }
        }
        return null;
    }

    static boolean a(String str) {
        return str != null && b.match(Uri.parse(str)) == 0;
    }
}
