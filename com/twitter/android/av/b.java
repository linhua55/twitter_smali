package com.twitter.android.av;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bbl;
import bbn;
import com.twitter.config.AppConfig;
import com.twitter.library.av.c;
import com.twitter.library.av.f;
import com.twitter.library.av.playback.au;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.collection.ar;
import com.twitter.util.object.e;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import ts;

/* compiled from: Twttr */
public class b {
    static final Set<String> a;
    static final Set<String> b;
    static final Set<String> c;
    private final ts d;
    private final f e;
    private final bg f;
    private final d g;

    static {
        a = ar.a("playback_start", new String[]{"playback_25", "playback_50", "playback_75", "playback_95", "playback_complete", "replay", "play", "rewind", "pause", "error", "dock", "undock", "playback_lapse", "reply", "unfavorite", "favorite", "share", "unretweet", "retweet", "quote"});
        b = ar.b("show");
        Set hashSet = new HashSet();
        hashSet.add("resume");
        c = Collections.unmodifiableSet(hashSet);
    }

    public b(Context context, au auVar) {
        this(new a(auVar), new ts(context), new e(), bg.a());
    }

    b(a aVar, ts tsVar, f fVar, bg bgVar) {
        this.d = tsVar;
        this.e = fVar;
        this.f = bgVar;
        this.g = aVar.a();
    }

    protected boolean a(String str, d dVar) {
        return a.contains(str) || dVar.a(str);
    }

    protected boolean b(String str, d dVar) {
        if (b.contains(str)) {
            return false;
        }
        if (a.contains(str) || c.contains(str) || dVar.b(str)) {
            return true;
        }
        return false;
    }

    public void a(c cVar) {
        String[] a = a(cVar.b, cVar.c, this.g);
        if (a(cVar.c, this.g)) {
            String str = cVar.g == 2 ? "2" : "1";
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(this.f.c().g()).b(a);
            TwitterScribeItem a2 = this.g.a(cVar);
            if (cVar.j != null) {
                a2.J = aj.a(cVar.j) ? null : cVar.j;
            }
            if (cVar.m != null) {
                a2.P = cVar.m.longValue();
            }
            if (cVar.o != null) {
                a2.M = cVar.o.longValue();
            }
            a2.O = cVar.l;
            twitterScribeLog.a(a2);
            twitterScribeLog.l(str);
            this.e.a(cVar.a, twitterScribeLog);
        }
        if (!b(cVar.c, this.g)) {
            return;
        }
        if (cVar.d != null) {
            this.d.a(cVar.a, cVar.c, cVar.d, cVar.e, a[0]);
        } else if (AppConfig.m().a()) {
            throw new IllegalArgumentException("The playlist cannot be null when sending a beacon.");
        } else {
            bbn.a(new bbl().a("data.event", cVar.c).a(new IllegalArgumentException("The playlist cannot be null when sending a beacon.")));
        }
    }

    @VisibleForTesting
    String[] a(TwitterScribeAssociation twitterScribeAssociation, String str, d dVar) {
        String c = c(twitterScribeAssociation);
        String a = a(twitterScribeAssociation);
        String b = b(twitterScribeAssociation);
        if (!str.contains(":")) {
            str = String.format("%s:%s", new Object[]{dVar.a(), str});
        }
        return new String[]{c, a, b, str};
    }

    @VisibleForTesting
    static String a(TwitterScribeAssociation twitterScribeAssociation) {
        return twitterScribeAssociation != null ? e.b(twitterScribeAssociation.b()) : TtmlNode.ANONYMOUS_REGION_ID;
    }

    @VisibleForTesting
    static String b(TwitterScribeAssociation twitterScribeAssociation) {
        return twitterScribeAssociation != null ? (String) e.b(twitterScribeAssociation.c(), "tweet") : "tweet";
    }

    @VisibleForTesting
    static String c(TwitterScribeAssociation twitterScribeAssociation) {
        return twitterScribeAssociation != null ? twitterScribeAssociation.a() : "tweet";
    }
}
