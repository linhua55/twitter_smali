package com.twitter.android.widget;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.ProfileActivity;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.fk;
import com.twitter.android.geo.places.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.view.b;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;
import com.twitter.model.geo.TwitterPlace;
import defpackage.bbu;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class do extends b {
    private final WeakReference<Context> a;
    private final TwitterScribeAssociation b;
    private final bg c;

    public do(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = new WeakReference(context);
        this.c = bg.a();
        this.b = twitterScribeAssociation;
    }

    public void a(ap apVar) {
        Context context = (Context) this.a.get();
        if (context != null) {
            context.startActivity(new Intent(context, ProfileActivity.class).putExtra("screen_name", apVar.i));
        }
    }

    public void a(q qVar) {
        Context context = (Context) this.a.get();
        if (context != null) {
            context.startActivity(fk.a(context, qVar));
        }
    }

    public void a(cr crVar) {
        Context context = (Context) this.a.get();
        long g = this.c.c().g();
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b("profile:::bio:open_link")).a(this.b)).b(crVar.C, crVar.B));
        if (context != null) {
            OpenUriHelper.a(context, null, crVar, g, null, null, this.b, null);
        }
    }

    public void a(TwitterPlace twitterPlace) {
        Context context = (Context) this.a.get();
        if (context != null) {
            context.startActivity(d.a(context, twitterPlace));
        }
    }
}
