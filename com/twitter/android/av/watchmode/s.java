package com.twitter.android.av.watchmode;

import android.content.Context;
import com.twitter.android.TweetActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.config.c;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.model.core.Tweet;
import com.twitter.util.h;

/* compiled from: Twttr */
public class s {
    private static s a;

    public static s a() {
        h.a();
        if (a == null) {
            a = new s();
        }
        return a;
    }

    public static boolean a(Context context, AVDataSource aVDataSource) {
        return a().b(context, aVDataSource);
    }

    public boolean b(Context context, AVDataSource aVDataSource) {
        int c = aVDataSource != null ? aVDataSource.c() : -1;
        if ((c == 0 || c == 1 || c == 2) && a(aVDataSource.b()) && a(context) && c.c("immersive_video_android_4464")) {
            return true;
        }
        return false;
    }

    private static boolean a(Tweet tweet) {
        return (tweet == null || tweet.q()) ? false : true;
    }

    private static boolean a(Context context) {
        return (context instanceof MainActivity) || (context instanceof TweetActivity);
    }
}
