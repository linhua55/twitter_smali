package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import com.twitter.android.people.bb;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class al extends ag {
    private final bb a;
    private ak b;

    public al(bb bbVar) {
        this.a = bbVar;
    }

    public void a(ak akVar) {
        this.b = akVar;
    }

    protected void a(Context context, TwitterUser twitterUser) {
        super.a(context, twitterUser);
        this.a.a((ak) e.a(this.b));
    }
}
