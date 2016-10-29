package com.twitter.android.profiles;

import android.content.Context;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class ao {
    private boolean a;
    private TwitterUser b;
    private FriendshipCache c;
    private final l d;
    private final List<WeakReference<ap>> e;

    public ao(Context context, TwitterUser twitterUser, boolean z) {
        this(context, twitterUser, z, new FriendshipCache());
    }

    public ao(Context context, TwitterUser twitterUser, boolean z, FriendshipCache friendshipCache) {
        this.e = new ArrayList();
        this.c = friendshipCache;
        this.b = twitterUser;
        this.a = z;
        this.d = new l(context);
    }

    public TwitterUser a() {
        return this.b;
    }

    public void a(TwitterUser twitterUser, boolean z) {
        this.b = twitterUser;
        this.a = z;
        i();
    }

    public boolean b() {
        return this.a;
    }

    public FriendshipCache c() {
        return this.c;
    }

    public int d() {
        return this.b.S;
    }

    public void a(int i) {
        this.b.S = i;
        i();
    }

    public void b(int i) {
        a(p.a(d(), i));
    }

    public void c(int i) {
        a(p.b(d(), i));
    }

    public long e() {
        return a() != null ? a().bf_() : 0;
    }

    public String f() {
        String a = this.d.a(this.b);
        if (a != null) {
            return a;
        }
        return this.b != null ? this.b.G : null;
    }

    public boolean g() {
        return this.d.a(this.b) != null;
    }

    public void h() {
        if (this.b != null) {
            this.d.b(this.b.k);
        }
    }

    public void a(ap apVar) {
        for (WeakReference weakReference : this.e) {
            if (apVar == weakReference.get()) {
                return;
            }
        }
        this.e.add(new WeakReference(apVar));
    }

    private void i() {
        for (WeakReference weakReference : this.e) {
            if (weakReference.get() != null) {
                ((ap) weakReference.get()).a(this);
            }
        }
    }
}
