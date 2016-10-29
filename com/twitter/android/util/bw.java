package com.twitter.android.util;

import com.twitter.config.d;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class bw {
    public static boolean a(TwitterUser twitterUser) {
        if (twitterUser != null) {
            return (twitterUser.n && d.a(twitterUser.c, "vit_notable_event_setting_for_verified_user_enabled", false)) || (!twitterUser.n && d.a(twitterUser.c, "vit_notable_event_setting_enabled", false));
        } else {
            return false;
        }
    }

    public static boolean b(TwitterUser twitterUser) {
        if (twitterUser == null) {
            return false;
        }
        return d.a(twitterUser.n ? "vit_push_setting_followed_verified_for_verified_users_enabled" : "vit_push_setting_followed_verified_for_non_verified_users_enabled");
    }
}
