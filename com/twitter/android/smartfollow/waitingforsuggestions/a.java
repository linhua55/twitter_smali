package com.twitter.android.smartfollow.waitingforsuggestions;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.LocalBroadcastManager;
import com.twitter.android.client.c;
import com.twitter.android.smartfollow.SmartFollowFlowData;
import com.twitter.android.smartfollow.ac;
import com.twitter.android.smartfollow.b;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.util.collection.n;
import defpackage.bph;
import java.util.List;

/* compiled from: Twttr */
public class a extends b<WaitingForSuggestionsState, WaitingForSuggestionsScreen> {
    protected static final long i;
    private static final List<Integer> q;
    protected String j;
    protected int k;
    protected int l;
    protected boolean m;
    protected boolean n;
    protected BroadcastReceiver o;
    @VisibleForTesting
    protected d p;
    private final Handler r;

    public /* synthetic */ Parcelable c() {
        return u();
    }

    static {
        i = ((long) d.a("smart_nux_smart_follow_timings_message_display_duration", 3.0d)) * 1000;
        q = (List) n.d().c(Integer.valueOf(2131363824)).c(Integer.valueOf(2131363825)).q();
    }

    public a(Handler handler, WaitingForSuggestionsState waitingForSuggestionsState) {
        this.p = new d(this);
        this.r = handler;
        if (waitingForSuggestionsState == null) {
            this.k = 0;
            this.j = null;
            this.m = false;
            this.n = false;
            this.l = 0;
            return;
        }
        this.k = waitingForSuggestionsState.a;
        this.j = waitingForSuggestionsState.c;
        this.m = waitingForSuggestionsState.d;
        this.n = waitingForSuggestionsState.e;
        this.l = waitingForSuggestionsState.b;
    }

    public String aF_() {
        return "presenter_waiting_for_suggestions";
    }

    public WaitingForSuggestionsState u() {
        return new WaitingForSuggestionsState(this.k, this.j, this.m, this.n, this.l);
    }

    protected void q() {
        super.q();
        if (this.n) {
            z();
        } else {
            v();
        }
    }

    protected void v() {
        A();
        w();
        ((WaitingForSuggestionsScreen) b()).setDescription(((Integer) q.get(this.k)).intValue());
        this.r.removeCallbacksAndMessages(null);
        this.r.postDelayed(new b(this), i);
    }

    protected boolean w() {
        boolean b = c.a(g()).b();
        if ((this.j != null && az.a(g()).a(this.j)) || this.m || b) {
            if (this.o == null) {
                this.o = new c(this);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("upload_success_broadcast");
                LocalBroadcastManager.getInstance(g()).registerReceiver(this.o, intentFilter);
            }
            return false;
        }
        y();
        return true;
    }

    @VisibleForTesting
    protected void a(Runnable runnable) {
        int i = this.k + 1;
        this.l = Math.max(this.l, i);
        if (this.m && this.l == q.size() && !e().c().isEmpty()) {
            t();
            return;
        }
        this.k = i % q.size();
        ((WaitingForSuggestionsScreen) b()).setDescription(((Integer) q.get(this.k)).intValue());
        this.r.postDelayed(runnable, i);
    }

    @VisibleForTesting
    protected void x() {
        this.r.removeCallbacksAndMessages(null);
        this.n = true;
        this.k = 0;
        z();
    }

    @VisibleForTesting
    protected void y() {
        Context g = g();
        SmartFollowFlowData e = e();
        this.j = az.a(g).a(new bph(g, bg.a().c(), e.a(), e.b()), this.p);
    }

    protected void z() {
        ((WaitingForSuggestionsScreen) b()).a();
        ((WaitingForSuggestionsScreen) b()).setView(true);
    }

    protected void A() {
        this.n = false;
        ((WaitingForSuggestionsScreen) b()).setView(false);
    }

    protected void o() {
        super.o();
        this.r.removeCallbacksAndMessages(null);
    }

    protected String p() {
        return "waiting_for_suggestions_screen";
    }

    public void t() {
        List c = e().c();
        a(null, "recommended", String.valueOf(c.size()), ac.a(c));
        super.t();
    }
}
