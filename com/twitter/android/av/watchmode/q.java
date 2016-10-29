package com.twitter.android.av.watchmode;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.View;
import com.twitter.android.av.watchmode.view.o;
import com.twitter.android.kr;
import com.twitter.android.vn;
import com.twitter.android.vo;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.c;
import com.twitter.app.common.inject.l;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import defpackage.bbu;
import defpackage.cqp;

/* compiled from: Twttr */
public class q extends OnScrollListener implements o, kr, d, c, l, cqp {
    private final TwitterScribeAssociation a;
    private final AVDataSource b;
    private final Context c;
    private int d;
    private final vn e;
    private boolean f;
    private boolean g;

    public q(Context context, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource) {
        this(context, twitterScribeAssociation, aVDataSource, new vo().a(context, twitterScribeAssociation, -1, null, com.twitter.android.client.c.a(context), bg.a()));
    }

    @VisibleForTesting
    q(Context context, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, vn vnVar) {
        this.d = 0;
        this.f = false;
        this.g = false;
        this.a = twitterScribeAssociation;
        this.b = aVDataSource;
        this.c = context.getApplicationContext();
        this.e = vnVar;
        bbu.a(a("impression"));
    }

    private TwitterScribeLog a(String str, String str2) {
        Session c = bg.a().c();
        Tweet b = this.b.b();
        TwitterScribeLog a = TwitterScribeLog.d(c.g()).a(this.a.a(), null, null, str, str2).a();
        if (b != null) {
            a.a(this.c, b, this.a, null);
        }
        return a;
    }

    private TwitterScribeLog a(String str) {
        return a(null, str);
    }

    public void a(Configuration configuration) {
        bbu.a(a(configuration.orientation == 1 ? "orientation_change_portrait" : "orientation_change_landscape"));
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if ((layoutManager instanceof LinearLayoutManager) && ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != 0) {
            this.g = true;
        }
    }

    public void a() {
        if (this.d > 1 && !this.f) {
            this.f = true;
            bbu.a(a("suggestions", "show"));
        }
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.c && this.d > 1 && !this.g) {
            bbu.a(a("abandoned"));
        }
    }

    public void a(View view, Object obj, Bundle bundle) {
        if (obj != null) {
            Tweet b = ((AVDataSource) obj).b();
            if (b != null) {
                this.e.a(b, bundle);
            }
        }
    }

    public void e() {
        bbu.a(a("swipe_to_dismiss"));
    }

    public void a(float f) {
    }

    public void an_() {
    }

    public void ao_() {
        this.e.a(bg.a().c().g(), "watch_mode:stream::results");
    }

    public void d() {
        bbu.a(a("expand_button", "click"));
    }

    public void f() {
        bbu.a(a("collapse_button", "click"));
    }
}
