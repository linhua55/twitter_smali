package com.twitter.android.people;

import akp;
import akv;
import ala;
import android.content.Context;
import cby;
import com.twitter.android.yj;
import com.twitter.app.common.inject.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.util.object.e;
import defpackage.asz;
import java.util.Map;

/* compiled from: Twttr */
public class aa extends d {
    private final Map<String, String> a;

    public aa(Map<String, String> map) {
        this.a = map;
    }

    akp a() {
        return new akp(this.a);
    }

    static FriendshipCache b() {
        return new FriendshipCache();
    }

    static cby a(Context context, Session session) {
        return new cby(new l(context, (String) e.a(session.e())));
    }

    static ala b(Context context, Session session) {
        return new ala(new asz(context.getContentResolver()), session);
    }

    static akv c(Context context, Session session) {
        return new akv(new asz(context.getContentResolver()), session);
    }

    static TwitterScribeAssociation a(q qVar) {
        return (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b("people")).c(qVar.a() ? "pivot" : "browse");
    }

    static bb a(Session session, TwitterScribeAssociation twitterScribeAssociation) {
        return new bb(session.g(), twitterScribeAssociation);
    }

    static yj a(TwitterScribeAssociation twitterScribeAssociation, FriendshipCache friendshipCache, Session session, az azVar) {
        return new yj(azVar, session, friendshipCache, twitterScribeAssociation);
    }

    static com.twitter.app.common.di.d a(v vVar) {
        return vVar;
    }
}
