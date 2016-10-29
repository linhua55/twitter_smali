package com.twitter.library.api.upload;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.av;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.util.b;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
public abstract class p extends z {
    protected final TwitterUser a;
    protected av b;
    private int c;
    private t<TwitterUser, cd> i;

    protected p(Context context, String str, Session session) {
        super(context, str, session);
        this.a = session.f();
    }

    protected p(Context context, String str, ab abVar, TwitterUser twitterUser) {
        super(context, str, abVar);
        this.a = twitterUser;
    }

    public p a(av avVar) {
        this.b = avVar;
        return this;
    }

    public int a() {
        return this.c;
    }

    public p c(int i) {
        this.c = i;
        return this;
    }

    public boolean e() {
        return this.b.c;
    }

    public boolean f() {
        return this.b.a != null;
    }

    public boolean g() {
        return this.b.i;
    }

    public MediaFile h() {
        return this.b.b;
    }

    public boolean s() {
        return h() != null;
    }

    protected t<TwitterUser, cd> t() {
        this.i = v.a(TwitterUser.class);
        return this.i;
    }

    protected boolean c(aa aaVar) {
        if (this.i == null) {
            throw new IllegalStateException();
        }
        if (aaVar.b()) {
            TwitterUser twitterUser = (TwitterUser) this.i.b();
            b.a(N().e, twitterUser, null);
            e T = T();
            S().a(n.b(twitterUser), -1, -1, -1, null, null, true, T);
            T.a();
            this.o.putParcelable("user", twitterUser);
        }
        return aaVar.b();
    }

    protected void u() {
        new Handler(Looper.getMainLooper()).postDelayed(new q(this), HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }
}
