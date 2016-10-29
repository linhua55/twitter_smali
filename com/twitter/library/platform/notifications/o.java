package com.twitter.library.platform.notifications;

/* compiled from: Twttr */
public class o {
    public static boolean a(String str) {
        return b(str) || c(str);
    }

    public static boolean b(String str) {
        return "magic_rec_tweet_7".equals(str) || "magic_rec_tweet_8".equals(str);
    }

    public static boolean c(String str) {
        return "magic_rec_user_7".equals(str) || "magic_rec_user_8".equals(str);
    }
}
