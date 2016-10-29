package com.twitter.android.av;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cgl;
import com.twitter.library.api.search.d;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class bq {
    static final String a;
    static final String b;
    static final String c;
    final long d;
    private final AVPlayer e;
    private final bg f;
    private final di g;
    private final az h;
    private final Context i;
    private String j;
    private bt k;

    static {
        a = bq.class.getName() + ".PREFETCHED_VIDEOS";
        b = bq.class.getName() + ".SEARCH_ID";
        c = bq.class.getName() + "SCRIBED_BUTTON_IMPRESSION";
    }

    bq(Context context, AVPlayer aVPlayer) {
        this(context, aVPlayer, az.a(context));
    }

    bq(Context context, AVPlayer aVPlayer, az azVar) {
        this.e = aVPlayer;
        this.i = context;
        this.f = bg.a();
        this.h = azVar;
        this.g = di.a(context, this.f.c().g());
        long j = this.e.i().getLong(b);
        if (j == 0) {
            j = a();
        }
        this.d = j;
    }

    long a() {
        return aj.a.nextLong();
    }

    public void a(Context context) {
        Tweet b = this.e.e().c().b();
        if (context != null && b != null) {
            Intent intent = new Intent(context, ViewMoreVideoActivity.class);
            intent.putExtra("tw", b);
            intent.putExtra("search_id", this.d);
            intent.addFlags(67108864);
            context.startActivity(intent);
        }
    }

    public static d a(Context context, Session session, long j, Tweet tweet, int i) {
        String a = a(tweet);
        if (a == null) {
            return null;
        }
        return new d(context, session, j, a, 1, "unknown", a, i, null, false);
    }

    static String a(Tweet tweet) {
        if (tweet == null) {
            return null;
        }
        cgl aa = tweet.aa();
        CharSequence i = aa != null ? aa.i() : null;
        if (i != null) {
            return "(card_name:amplify OR card_name:video) AND from:%@".replace("%@", i);
        }
        return null;
    }

    public void a(bt btVar) {
        int b = b();
        if (b == -1) {
            this.k = btVar;
            c(btVar);
            return;
        }
        btVar.a(b, this.d);
    }

    public void b(bt btVar) {
        this.h.b(this.j);
        if (this.k == btVar) {
            this.k = null;
        }
    }

    int b() {
        return this.e.i().getInt(a, -1);
    }

    void c(bt btVar) {
        Tweet b = this.e.e().c().b();
        if (b != null) {
            d a = a(this.i, this.f.c(), this.d, b, 0);
            if (a != null) {
                this.g.j(this.d);
                this.j = this.h.a(a, new bs(btVar, null));
            }
        }
    }

    public void c() {
        Bundle i = this.e.i();
        if (!i.getBoolean(c, false)) {
            this.e.a("view_more_videos:impression");
            i.putBoolean(c, true);
        }
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        if (aVPlayer$PlayerStartType == AVPlayer$PlayerStartType.REPLAY) {
            this.e.i().remove(c);
        }
    }
}
