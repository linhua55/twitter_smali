package com.twitter.android;

import android.content.Context;
import bbu;
import boh;
import bok;
import cni;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.topic.TwitterTopic;

/* compiled from: Twttr */
class pc implements e<UserView> {
    final /* synthetic */ oz a;
    private cni b;
    private int c;

    pc(oz ozVar) {
        this.a = ozVar;
        this.b = null;
        this.c = -1;
    }

    public void a(cni cni) {
        this.b = cni;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(UserView userView, long j, int i, int i2) {
        Object obj = this.a.m == 2 ? 1 : null;
        Context applicationContext = this.a.c.getApplicationContext();
        az a = az.a(applicationContext);
        Session c = this.a.d.c();
        if (io.a()) {
            userView.r.toggle();
            io.a(this.a.c, 4, userView.getBestName().toString());
            return;
        }
        String str;
        if (userView.r.isChecked()) {
            a.a(new bok(applicationContext, c, j, this.b));
            this.a.e.c(j);
            if (this.a.z != null && obj != null) {
                str = "search:" + TwitterTopic.d(this.a.n) + ":people_pivot:user:unfollow";
            } else if (obj != null) {
                str = "search:people:users:user:unfollow";
            } else {
                str = "search:universal::user:unfollow";
            }
        } else {
            a.a(new boh(applicationContext, c, j, this.b));
            this.a.e.b(j);
            if (this.a.z != null && obj != null) {
                str = "search:" + TwitterTopic.d(this.a.n) + ":people_pivot:user:follow";
            } else if (obj != null) {
                str = "search:people:users:user:follow";
            } else {
                str = "search:universal::user:follow";
            }
        }
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.d.c().g()).a(this.a.c, null, this.a.o, null).a(j, userView.getPromotedContent(), null, this.c).b(new String[]{str})).a(this.a.o)).g(this.a.l));
    }
}
