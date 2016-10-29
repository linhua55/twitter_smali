package com.twitter.android;

import android.content.Intent;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class NotificationActivity extends NotificationsBaseTimelineActivity {
    protected ic a(Intent intent, t tVar) {
        return new ic(new kp(this, NotificationsBaseTimelineActivity.a(getApplicationContext(), aa())).a(intent.getBooleanExtra("activity_mention_only", false), (j) j.a(intent).h(true)), "connect");
    }
}
