package com.twitter.android.util;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.NotificationActivity;
import com.twitter.android.RootMentionsTimelineActivity;
import com.twitter.android.RootNotificationActivity;
import com.twitter.android.VitNotificationsActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.app.mentions.MentionsTimelineActivity;
import com.twitter.config.d;
import com.twitter.model.core.TwitterUser;
import defpackage.bus;

/* compiled from: Twttr */
public class ak {
    public static Intent a(Context context, TwitterUser twitterUser, boolean z, boolean z2) {
        if (bus.a().e()) {
            return MainActivity.a(context, MainActivity.d);
        }
        return new Intent(context, a(twitterUser, z, z2));
    }

    private static Class a(TwitterUser twitterUser, boolean z, boolean z2) {
        if (a(twitterUser)) {
            return VitNotificationsActivity.class;
        }
        if (z) {
            if (z2) {
                return RootMentionsTimelineActivity.class;
            }
            return RootNotificationActivity.class;
        } else if (z2) {
            return MentionsTimelineActivity.class;
        } else {
            return NotificationActivity.class;
        }
    }

    public static boolean a(TwitterUser twitterUser) {
        String str = (twitterUser == null || !twitterUser.n) ? "vit_notifications_redesign_for_non_verified_users_enabled" : "vit_notifications_redesign_enabled";
        return d.a(str);
    }
}
