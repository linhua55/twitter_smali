package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bvu */
public class bvu {
    public static int a;

    static {
        a = 70;
    }

    public static CharSequence a(Tweet tweet) {
        if (tweet.U && tweet.N != null && tweet.N.c == PlaceType.a) {
            if (!aj.a(tweet.N.d)) {
                return tweet.N.d;
            }
            if (!aj.a(tweet.N.f)) {
                return tweet.N.f;
            }
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }
}
