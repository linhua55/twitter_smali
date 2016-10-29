package com.twitter.android.av.audio;

import android.graphics.PointF;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.util.m;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class g {
    private final TwitterFragmentActivity a;
    private long b;

    public g(TwitterFragmentActivity twitterFragmentActivity) {
        this.b = 0;
        this.a = twitterFragmentActivity;
    }

    public void a(au auVar, PointF pointF, PointF pointF2, TwitterScribeAssociation twitterScribeAssociation) {
        a(auVar, pointF, pointF2, twitterScribeAssociation, 1000);
    }

    public void a(au auVar, PointF pointF, PointF pointF2, TwitterScribeAssociation twitterScribeAssociation, long j) {
        long b = m.b();
        if (b - this.b >= j) {
            this.b = b;
            b(auVar, pointF, pointF2, twitterScribeAssociation);
        }
    }

    private void b(au auVar, PointF pointF, PointF pointF2, TwitterScribeAssociation twitterScribeAssociation) {
        Map g = auVar.c().g();
        if (g instanceof HashMap) {
            g = (HashMap) g;
        } else {
            Object hashMap = new HashMap(g);
        }
        AVDataSource c = auVar.c();
        new f().a(c.h()).a(g).a(c.b()).a(c.e()).a(twitterScribeAssociation).a(pointF, pointF2).a(true).b(this.a);
    }
}
