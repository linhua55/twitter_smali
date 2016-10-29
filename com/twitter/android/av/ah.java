package com.twitter.android.av;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.composer.aw;
import com.twitter.android.nt;
import com.twitter.android.nu;
import com.twitter.library.api.timeline.d;
import com.twitter.library.api.timeline.h;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.util.y;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ah implements nu {
    private final y<Tweet> a;
    private final WeakReference<ai> b;

    public ah(y<Tweet> yVar, ai aiVar) {
        this.a = yVar;
        this.b = new WeakReference(aiVar);
    }

    public void a(Context context, Tweet tweet, Session session) {
        context.startActivity(aw.a().a(tweet).b(session.e()).a(context));
        a("reply");
    }

    public void b(Context context, Tweet tweet, Session session) {
        az a = az.a(context);
        boolean z = !tweet.a;
        a(tweet, z);
        if (z) {
            a.a(new d(context, session, tweet.t, tweet.u).a(tweet.f).a(Boolean.valueOf(tweet.l())), null);
            a("favorite");
            return;
        }
        a.a(new h(context, session, tweet.t).a(tweet.f), null);
        a("unfavorite");
    }

    public void a(Context context, Tweet tweet) {
        if (context instanceof FragmentActivity) {
            new nt((FragmentActivity) context, tweet).a((nu) this).a().a();
        }
    }

    public void b(Context context, Tweet tweet) {
        aq.a(context, tweet, true);
        a("share");
    }

    public void a(long j, Tweet tweet, boolean z) {
        b(tweet, z);
        a(z ? "unretweet" : "retweet");
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
    }

    public void b(long j, Tweet tweet, boolean z) {
        if (!z) {
            a("quote");
        }
    }

    public void c(long j, Tweet tweet, boolean z) {
    }

    public void d(long j, Tweet tweet, boolean z) {
    }

    private void a(Tweet tweet, boolean z) {
        tweet.a = z;
        tweet.o = Math.max((z ? 1 : -1) + tweet.o, 0);
        this.a.a(tweet);
    }

    private void b(Tweet tweet, boolean z) {
        boolean z2;
        int i = 1;
        if (z) {
            z2 = false;
        } else {
            z2 = true;
        }
        tweet.d = z2;
        int i2 = tweet.l;
        if (z) {
            i = -1;
        }
        tweet.l = Math.max(i2 + i, 0);
        this.a.a(tweet);
    }

    private void a(String str) {
        ai aiVar = (ai) this.b.get();
        if (aiVar != null) {
            aiVar.a(str);
        }
    }
}
