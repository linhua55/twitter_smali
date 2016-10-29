package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.widget.ec;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class mb {
    private final Fragment a;
    private final FragmentActivity b;
    private final az c;
    private final me d;

    public mb(Fragment fragment, FragmentActivity fragmentActivity, az azVar, me meVar) {
        this.a = fragment;
        this.b = fragmentActivity;
        this.c = azVar;
        this.d = meVar;
    }

    protected void a(Tweet tweet, boolean z, Session session, TwitterScribeLog twitterScribeLog) {
        int i;
        int i2;
        ec ecVar = new ec(0);
        if (z) {
            i = 2131363333;
        } else {
            i = 2131364058;
        }
        ec ecVar2 = (ec) ecVar.a(i);
        if (z) {
            i2 = 2131363332;
        } else {
            i2 = 2131364057;
        }
        ecVar2 = (ec) ecVar2.b(i2);
        if (z) {
            i2 = 2131363331;
        } else {
            i2 = 2131364056;
        }
        ((ec) ((ec) ecVar2.d(i2)).f(2131362041)).i().a(this.a).a(new mc(this, session, tweet, z, twitterScribeLog)).a(this.b.getSupportFragmentManager());
    }
}
