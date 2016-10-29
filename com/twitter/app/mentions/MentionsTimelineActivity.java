package com.twitter.app.mentions;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.NotificationsBaseTimelineActivity;
import com.twitter.android.ic;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.library.client.d;

/* compiled from: Twttr */
public class MentionsTimelineActivity extends NotificationsBaseTimelineActivity {
    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        N().a("connect");
    }

    protected ic a(Intent intent, t tVar) {
        return new ic(new a(this, NotificationsBaseTimelineActivity.a(getApplicationContext(), aa())).a((j) j.a(intent).h(true)), "connect");
    }
}
