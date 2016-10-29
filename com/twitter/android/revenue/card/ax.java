package com.twitter.android.revenue.card;

import android.content.UriMatcher;
import android.net.Uri;
import buv;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
class ax {
    public static final Set<String> a;
    private static final UriMatcher b;

    static {
        a = ar.a("twitter.com", new String[]{"www.twitter.com"});
        b = new UriMatcher(-1);
        for (String str : a) {
            b.addURI(str, "i/stickers/*", 0);
            b.addURI(str, "i/stickers/*/top", 0);
            b.addURI(str, "i/stickers/*/live", 0);
            b.addURI(str, "i/stickers/*/all", 0);
        }
    }

    static String a(Tweet tweet) {
        if (!(!buv.a() || tweet == null || CollectionUtils.a(tweet.Z()))) {
            for (cr crVar : tweet.Z()) {
                if (a(crVar.C)) {
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
