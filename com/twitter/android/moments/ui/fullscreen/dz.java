package com.twitter.android.moments.ui.fullscreen;

import adi;
import android.app.Dialog;
import android.content.Context;
import com.twitter.android.TweetActivity;
import com.twitter.android.av.audio.n;
import com.twitter.android.dialog.h;
import com.twitter.android.dialog.j;
import com.twitter.android.moments.ui.b;
import com.twitter.android.sn;
import com.twitter.app.common.base.u;
import com.twitter.app.common.util.t;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.util.object.e;
import com.twitter.util.y;
import java.util.List;

/* compiled from: Twttr */
public class dz {
    private final Context a;
    private final sn b;
    private final y<Tweet> c;
    private final adi d;
    private final FriendshipCache e;
    private final a f;
    private final an g;
    private final b h;
    private final n i;
    private final long j;
    private Dialog k;

    public dz(Context context, sn snVar, FriendshipCache friendshipCache, a aVar, adi adi, b bVar, an anVar, t tVar, long j, n nVar) {
        this.a = context;
        this.b = snVar;
        this.e = friendshipCache;
        this.c = new y();
        this.d = adi;
        this.f = aVar;
        this.h = bVar;
        this.g = anVar;
        this.j = j;
        this.i = nVar;
        tVar.a(new ea(this));
    }

    public y<Tweet> a() {
        return this.c;
    }

    public void a(Tweet tweet) {
        this.f.a(tweet, this.j);
    }

    public void a(ab abVar, Tweet tweet) {
        this.f.a(abVar, tweet, (a) e.a(abVar.o));
    }

    public void b(Tweet tweet) {
        this.a.startActivity(new u().d(true).a(this.a, TweetActivity.class).putExtra("tw", tweet));
        this.d.a(12);
    }

    public void a(TweetActionType tweetActionType, Tweet tweet) {
        int i;
        if (tweetActionType == TweetActionType.b) {
            if (tweet.a) {
                i = 3;
            } else {
                i = 2;
            }
            this.d.a(i);
        }
        if (tweetActionType == TweetActionType.c) {
            if (tweet.d) {
                i = 5;
            } else {
                i = 4;
            }
            this.d.a(i);
        }
        if (tweetActionType == TweetActionType.m) {
            this.d.a(14);
        }
        this.b.a(tweetActionType, tweet, this.e, null, new ec(this, tweet, this.c));
    }

    public void c(Tweet tweet) {
        b();
        this.k = h.a(this.a, com.twitter.util.collection.n.a(dq.a(this.a, tweet, this), new j[]{dq.c(this.a, tweet, this), dq.b(this.a, tweet, this)}));
    }

    public void a(ab abVar, a aVar, Tweet tweet) {
        b();
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        d.c(dq.a(this.a.getResources(), abVar, aVar, this));
        d.c(dq.a(this.a.getResources(), this, abVar, tweet));
        this.k = h.a(this.a, (List) d.q());
    }

    public void a(ab abVar, a aVar) {
        this.h.a(aVar.b, (String) e.a(aVar.e), abVar.p).a(new eb(this, aVar));
    }

    private void b() {
        if (this.k != null) {
            this.k.dismiss();
            this.k = null;
        }
    }
}
