package com.twitter.android.av.watchmode;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.android.av.watchmode.view.b;
import com.twitter.android.av.watchmode.view.z;
import com.twitter.android.client.au;
import com.twitter.app.common.app.n;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import defpackage.aom;
import defpackage.cqp;
import defpackage.vf;

/* compiled from: Twttr */
public class WatchModeActivity extends TwitterFragmentActivity {
    public static final String a;
    public static final String b;

    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    static {
        a = WatchModeActivity.class.getSimpleName() + ".seed_video";
        b = WatchModeActivity.class.getSimpleName() + ".scribe_association";
    }

    public static Intent a(Context context, AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation) {
        if (twitterScribeAssociation == null) {
            twitterScribeAssociation = new TwitterScribeAssociation();
        }
        return new Intent(context, WatchModeActivity.class).putExtra(a, aVDataSource).putExtra(b, twitterScribeAssociation);
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        com.twitter.app.common.base.t a = super.a(bundle, tVar);
        a.a(false);
        a.a(0);
        a.b(false);
        a.d(0);
        return a;
    }

    protected k a(t tVar) {
        Intent intent = getIntent();
        AVDataSource aVDataSource = (AVDataSource) intent.getParcelableExtra(a);
        TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) intent.getParcelableExtra(b);
        if (aVDataSource != null && twitterScribeAssociation != null) {
            return a.a().a(n.s()).a(new l(aVDataSource, twitterScribeAssociation)).a();
        }
        finish();
        return null;
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        super.a(layoutInflater, bundle);
        au a = new au().a(2130969528).b(16908298).a(new vf()).a(new WatchModeLayoutManager(getBaseContext()));
        k kVar = (k) V();
        cqp bVar = new b(kVar.d(), new com.twitter.android.av.watchmode.view.a((Activity) this), r2);
        return z.a(layoutInflater, a, kVar.c(), kVar.d(), new com.twitter.android.av.watchmode.view.v(bVar, this), new aom(this));
    }
}
