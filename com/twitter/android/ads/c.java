package com.twitter.android.ads;

import com.twitter.config.d;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.ads.e;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class c {
    public static boolean a(TwitterUser twitterUser) {
        return twitterUser != null && d.a("ads_companion_enabled") && (twitterUser.L == AdvertiserType.PROMOTABLE_USER || twitterUser.L == AdvertiserType.ACCOUNT_USER);
    }

    public static boolean b(TwitterUser twitterUser) {
        return d.a("ads_companion_ads_account_permissions_enabled") && a(twitterUser);
    }

    public static boolean c(TwitterUser twitterUser) {
        return a(twitterUser);
    }

    public static boolean a(TwitterUser twitterUser, TwitterUser twitterUser2, e eVar) {
        if (twitterUser2 == null || eVar == null || !a(twitterUser) || !eVar.a(twitterUser2.c)) {
            return false;
        }
        return true;
    }

    public static boolean a(TwitterUser twitterUser, TwitterUser twitterUser2, e eVar, boolean z) {
        return a(twitterUser, twitterUser2, eVar) && d.a("ads_companion_profile_button_enabled") && z;
    }

    public static boolean b(TwitterUser twitterUser, TwitterUser twitterUser2, e eVar, boolean z) {
        return a(twitterUser, twitterUser2, eVar) && !a(twitterUser, twitterUser2, eVar, z);
    }
}
