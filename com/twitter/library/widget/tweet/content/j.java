package com.twitter.library.widget.tweet.content;

import android.app.Activity;
import ceq;
import com.twitter.library.av.playback.be;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.h;
import com.twitter.model.core.Tweet;
import defpackage.buf;
import defpackage.bzk;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class j {
    private static k h;
    protected final WeakReference<Activity> a;
    protected final Tweet b;
    protected final DisplayMode c;
    protected final TwitterScribeAssociation d;
    protected final TwitterScribeAssociation e;
    protected final h f;
    protected final bzk g;
    private final boolean i;
    private final c j;
    private final p k;
    private final e l;
    private q m;

    public j(Activity activity, Tweet tweet) {
        this(false, activity, tweet, DisplayMode.FORWARD, null, null);
    }

    public j(boolean z, Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        this(z, null, activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2);
    }

    public j(boolean z, bzk bzk, Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        this(z, bzk, activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2, h.a(), h.b(), h.c(), h.d());
    }

    protected j(boolean z, bzk bzk, Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, c cVar, p pVar, e eVar, q qVar) {
        this.f = new h();
        this.i = z;
        this.a = new WeakReference(activity);
        this.c = displayMode;
        this.g = bzk;
        this.b = tweet;
        this.d = twitterScribeAssociation;
        this.e = twitterScribeAssociation2;
        this.j = cVar;
        this.k = pVar;
        this.l = eVar;
        this.m = qVar;
    }

    public static void a(k kVar) {
        h = kVar;
    }

    public void a(int i, Object obj) {
        this.f.put(i, obj);
    }

    public i a() {
        i iVar = null;
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            if (ceq.c(this.b)) {
                iVar = this.m.a(activity, this.b, this.c, this.d, this.e);
            }
            if (this.b.p()) {
                iVar = this.l.a(activity, this.b, this.c, this.d, this.e);
            }
            if (this.i && r0 == null) {
                iVar = this.j.a(activity, this.b, this.c, this.g, this.d, this.e);
            }
            boolean z = this.c == DisplayMode.FULL || buf.a().d();
            if (iVar == null && a(z)) {
                this.f.put(5, Boolean.valueOf(z));
                iVar = this.k.a(activity, this.c, this.b, this.d, this.e, this.f);
            }
            this.f.clear();
        }
        return iVar;
    }

    protected boolean a(boolean z) {
        return be.d(this.b) || this.b.L() || this.b.j() || buf.a(this.b, z);
    }

    public boolean b() {
        return this.i;
    }
}
