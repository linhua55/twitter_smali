package com.twitter.library.api.timeline;

import android.content.Context;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.api.timeline.TimelineHelper.PrefetchOrder;
import com.twitter.library.client.Session;
import com.twitter.library.media.manager.l;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.timeline.av;
import com.twitter.util.aj;
import defpackage.beb;
import defpackage.bvj;
import java.util.List;

/* compiled from: Twttr */
public abstract class ak<TPR extends c> extends beb<TPR> {
    private int a;
    private int b;
    private long c;
    private long h;
    private int i;
    private String j;
    private boolean k;
    private int l;

    protected abstract e h();

    protected ak(Context context, String str, Session session) {
        super(context, str, session);
        this.j = BuildConfig.VERSION_NAME;
    }

    protected ak(Context context, String str, ab abVar) {
        super(context, str, abVar);
        this.j = BuildConfig.VERSION_NAME;
    }

    protected final e b() {
        e h = h();
        if (this.i > 0) {
            h.a("count", (long) this.i);
        }
        if (this.h == 0 && this.c > 0) {
            h.a("since_id", this.c);
        }
        if (this.h > 0) {
            h.a("max_id", this.h);
        }
        if (aj.b(this.j)) {
            h.a("request_context", this.j);
        }
        int J = J();
        if (J == 2) {
            h.a("autoplay_enabled", true);
        } else if (J == 1) {
            h.a("autoplay_enabled", false);
        }
        return h.a("include_entities", true).b().e().a("include_media_features", true).a("include_user_entities", true).d().c();
    }

    public final long E() {
        return this.h;
    }

    public final <T extends ak> T b(long j) {
        this.h = j;
        return this;
    }

    public final int F() {
        return this.i;
    }

    public final <T extends ak> T c(int i) {
        this.i = i;
        return this;
    }

    public final long G() {
        return this.c;
    }

    public final <T extends ak> T c(long j) {
        this.c = j;
        return this;
    }

    public final int H() {
        return this.a;
    }

    public final <T extends ak> T d(int i) {
        this.a = i;
        return this;
    }

    public final int I() {
        return this.b;
    }

    public final <T extends ak> T e(int i) {
        this.b = i;
        return this;
    }

    public final <T extends ak> T b(String str) {
        this.j = str;
        return this;
    }

    public final <T extends ak> T f(int i) {
        this.l = i;
        return this;
    }

    public int J() {
        return this.l;
    }

    protected void a(List<av> list) {
        long j = N() != null ? N().c : -1;
        boolean z = PreferenceManager.getDefaultSharedPreferences(this.p).getBoolean("media_forward", true);
        if (this.k && !list.isEmpty() && bvj.c(j)) {
            TimelineHelper.a().a(z, j, l.a(this.p), list, D(), this.p);
        }
    }

    protected PrefetchOrder D() {
        return PrefetchOrder.a;
    }

    public ak b(boolean z) {
        this.k = z;
        return this;
    }
}
