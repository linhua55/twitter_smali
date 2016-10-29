package com.twitter.android.av.watchmode.view;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.twitter.android.av.bm;
import com.twitter.android.av.s;
import com.twitter.android.av.watchmode.WatchModeLayoutManager;
import com.twitter.android.av.watchmode.f;
import com.twitter.android.av.watchmode.h;
import com.twitter.android.av.watchmode.q;
import com.twitter.android.client.at;
import com.twitter.android.client.au;
import com.twitter.android.client.av;
import com.twitter.app.common.inject.c;
import com.twitter.app.common.inject.o;
import com.twitter.library.av.b;
import com.twitter.library.av.playback.AVDataSource;
import defpackage.aoo;
import rx.an;
import vg;
import vh;

/* compiled from: Twttr */
public class z extends at<AVDataSource, WatchModeListItemView> implements f, c {
    @VisibleForTesting
    final an a;
    private final h c;
    private final s d;
    private final ad e;
    private final Handler f;
    private final vh g;
    private final bm h;
    private final q i;
    private final f j;
    private final b k;

    public static z a(LayoutInflater layoutInflater, au auVar, h hVar, q qVar, v vVar, aoo aoo) {
        return new z(layoutInflater, auVar, hVar, qVar, new Handler(Looper.getMainLooper()), vVar, aoo);
    }

    z(LayoutInflater layoutInflater, au auVar, h hVar, q qVar, Handler handler, v vVar, aoo aoo) {
        this(layoutInflater, auVar, hVar, qVar, new s(layoutInflater.getContext().getApplicationContext(), true), new y(layoutInflater, hVar, qVar), new ad(layoutInflater.getContext()), new w(layoutInflater.getContext()), handler, new bm(layoutInflater.getContext()), vVar, new g(), aoo, new b(layoutInflater.getContext().getApplicationContext()));
    }

    @VisibleForTesting
    z(LayoutInflater layoutInflater, au auVar, h hVar, q qVar, s sVar, y yVar, ad adVar, w wVar, Handler handler, bm bmVar, v vVar, g gVar, aoo aoo, b bVar) {
        super(layoutInflater, auVar);
        a((av) yVar);
        yVar.a(new s(this.b));
        yVar.a(qVar);
        this.d = sVar;
        this.d.a(0);
        this.d.a(this);
        this.e = adVar;
        this.c = hVar;
        this.f = handler;
        this.h = bmVar;
        this.k = bVar;
        this.g = new vh(this.b, layoutInflater);
        this.i = qVar;
        this.b.addItemDecoration(this.g);
        this.b.addItemDecoration(new vg());
        this.a = this.c.a().c(new aa(this));
        ((ImageView) aO_().findViewById(2131953375)).setOnClickListener(new ab(this, aoo));
        this.j = gVar.a(this.b, this.h);
        a((OnScrollListener) this.j);
        a(this.i);
        a((OnScrollListener) this.e);
        a((OnItemTouchListener) wVar);
        if (this.b.getLayoutManager() instanceof WatchModeLayoutManager) {
            ((WatchModeLayoutManager) this.b.getLayoutManager()).a((f) this);
        }
        a((OnItemTouchListener) vVar);
        o p = p();
        p.a(this.i);
        p.a((Object) wVar);
        p.a(this.e);
        p.a(this.b.getLayoutManager());
        p.a((Object) vVar);
    }

    public void an_() {
        super.an_();
        this.f.postAtFrontOfQueue(new ac(this));
    }

    public void ao_() {
        super.ao_();
        this.d.c();
    }

    public void ap_() {
        super.ap_();
        this.a.K_();
        this.k.a();
        this.d.e();
        if (this.b.getLayoutManager() instanceof WatchModeLayoutManager) {
            ((WatchModeLayoutManager) this.b.getLayoutManager()).a(null);
        }
    }

    public void aq_() {
        this.d.b();
    }

    public void a(Configuration configuration) {
        super.a(configuration);
        this.b.invalidateItemDecorations();
        if (configuration.orientation == 2) {
            this.h.a();
        } else {
            this.h.a(3000);
        }
    }
}
