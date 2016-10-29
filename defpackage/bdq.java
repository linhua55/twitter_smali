package defpackage;

import com.twitter.config.d;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
/* renamed from: bdq */
public class bdq {
    public static boolean a(TwitterUser twitterUser) {
        boolean z = true;
        if (twitterUser == null) {
            return false;
        }
        boolean z2 = twitterUser.L == AdvertiserType.b && d.a("tweet_analytics_allow_promotable_user");
        boolean z3;
        if (twitterUser.O && d.a("tweet_analytics_use_analytics_type")) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!((z2 || r3) && d.a("tweet_analytics_enabled"))) {
            z = false;
        }
        return z;
    }
}
