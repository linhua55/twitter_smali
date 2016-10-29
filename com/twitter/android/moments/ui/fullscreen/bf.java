package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.fk;
import com.twitter.app.common.base.u;
import com.twitter.library.view.b;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;

/* compiled from: Twttr */
public class bf extends b {
    private final Context a;
    private final Tweet b;
    private final ft c;
    private final long d;

    public bf(Context context, Tweet tweet, long j, ft ftVar) {
        this.a = context;
        this.b = tweet;
        this.c = ftVar;
        this.d = j;
    }

    public void a(q qVar) {
        this.a.startActivity(u.a(fk.a(this.a, qVar), true));
    }

    public void a(com.twitter.model.core.b bVar) {
        this.a.startActivity(u.a(fk.a(this.a, bVar), true));
    }

    public void a(ap apVar) {
        this.c.a(apVar.c, null);
    }

    public void a(cr crVar) {
        OpenUriHelper.a(this.a, this.b, crVar, this.d, null, null, null, null);
    }
}
