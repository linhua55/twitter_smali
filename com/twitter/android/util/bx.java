package com.twitter.android.util;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.h;

/* compiled from: Twttr */
public class bx {
    public static boolean a(TwitterUser twitterUser) {
        String str = (twitterUser == null || !twitterUser.n) ? "vit_unlimited_notifications_non_verified_users_enabled" : "vit_unlimited_notifications_verified_users_enabled";
        return d.a(str);
    }

    public static boolean a(TwitterUser twitterUser, long j) {
        if (twitterUser != null && j > 0 && twitterUser.c == j) {
            if (d.a(twitterUser.n ? "vit_unlimited_profile_tweets_timeline_enabled" : "vit_unlimited_profile_tweets_timeline_non_verified_users_enabled")) {
                return true;
            }
        }
        return false;
    }

    public static void a(di diVar, long j) {
        h.c();
        diVar.g(j, 0);
        diVar.g(j, 2);
        diVar.g(j, 3);
        diVar.g(j, 4);
        diVar.a(j, 1, -1);
    }

    public static by a(Context context, Session session) {
        return new by(context, session);
    }
}
