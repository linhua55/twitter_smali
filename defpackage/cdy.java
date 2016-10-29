package defpackage;

import cap;
import com.twitter.config.d;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: cdy */
public abstract class cdy {
    public static boolean a(Tweet tweet) {
        return cdy.b(tweet) && (tweet.aa().g() || tweet.al());
    }

    public static boolean b(Tweet tweet) {
        return (tweet == null || tweet.aa() == null || !cap.b().e(tweet.aa())) ? false : true;
    }

    public static boolean a(Tweet tweet, boolean z, boolean z2) {
        return tweet != null && ((!tweet.D() || z) && ((!z2 || d.a("twitter_access_android_media_forward_enabled")) && tweet.aa() != null));
    }

    public static boolean c(Tweet tweet) {
        return (tweet == null || tweet.aa() == null || !cap.b().d(tweet.aa())) ? false : true;
    }
}
