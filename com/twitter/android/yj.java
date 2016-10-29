package com.twitter.android;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import boh;
import bok;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.p;
import com.twitter.model.timeline.aj;

/* compiled from: Twttr */
public class yj implements OnClickListener, e<UserView> {
    private final az a;
    private final Session b;
    private final FriendshipCache c;
    private final TwitterScribeAssociation d;

    public yj(az azVar, Session session, FriendshipCache friendshipCache, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = azVar;
        this.b = session;
        this.c = friendshipCache;
        this.d = twitterScribeAssociation;
    }

    public void a(UserView userView, long j, int i, int i2) {
        Integer j2 = this.c.j(j);
        if (j2 == null || !p.a(j2.intValue())) {
            a(userView, this.b.g(), null, "follow");
            b(userView.getContext(), j);
            this.c.b(j);
            return;
        }
        a(userView, this.b.g(), null, "unfollow");
        a(userView.getContext(), j);
        this.c.c(j);
    }

    public void onClick(View view) {
        aj ajVar;
        UserView userView = (UserView) view;
        long userId = userView.getUserId();
        String userName = userView.getUserName();
        TwitterScribeItem scribeItem = userView.getScribeItem();
        if (scribeItem != null) {
            ajVar = scribeItem.am;
        } else {
            ajVar = null;
        }
        a(userView, this.b.g(), "user", "profile_click");
        ProfileActivity.a(view.getContext(), userId, userName, null, this.d, ajVar);
    }

    @VisibleForTesting
    void a(Context context, long j) {
        this.a.a(new bok(context, this.b, j, null));
    }

    @VisibleForTesting
    void b(Context context, long j) {
        this.a.a(new boh(context, this.b, j, null));
    }

    private void a(UserView userView, long j, String str, String str2) {
        TwitterScribeAssociation a = TwitterScribeAssociation.a(this.d);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{a.a(), a.b(), userView.getScribeComponent(), str, str2})).a(this.d)).a(userView.getScribeItem()));
    }
}
