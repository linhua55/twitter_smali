package com.twitter.android.trends;

import android.database.Cursor;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import bms;
import com.twitter.android.TimelineFragment;
import com.twitter.android.rf;
import com.twitter.android.timeline.aw;
import com.twitter.android.vr;
import com.twitter.android.vu;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.t;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.search.e;
import com.twitter.library.api.timeline.am;
import com.twitter.library.client.az;
import com.twitter.library.client.l;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.topic.d;
import com.twitter.model.topic.i;
import com.twitter.util.collection.n;
import com.twitter.util.m;
import defpackage.bbu;
import defpackage.cdc;
import defpackage.cgu;
import java.util.List;

/* compiled from: Twttr */
public class TrendsPlusFragment extends TimelineFragment {
    private static final String m;
    private final j n;
    private l o;
    private String p;
    private long q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private k v;

    public TrendsPlusFragment() {
        this.n = new j(this);
    }

    static {
        m = ScribeLog.a("trendsplus", "search", null, "trendsplus", "results");
    }

    protected void d() {
        super.d();
        bbu.a(new TwitterScribeLog(this.q).b("trendsplus", null, null, null, "enter"));
    }

    protected void e() {
        if (ai()) {
            bbu.a(new TwitterScribeLog(this.q).b("trendsplus", null, null, null, "exit"));
            c(aT().g());
        }
        t();
        super.e();
    }

    protected void a(long j, long j2) {
        super.a(j, j2);
        c(j);
    }

    private void c(long j) {
        List b = this.n.b();
        if (!b.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(m)).b(b));
        }
        this.n.c();
    }

    public void r() {
        this.r = true;
        au();
    }

    private void t() {
        List a = this.n.a();
        if (!a.isEmpty()) {
            AsyncOperation asyncOperation = (e) new e(getActivity(), aT()).d(4);
            asyncOperation.b = n.a(a);
            this.aa.a(asyncOperation);
        }
    }

    protected boolean m() {
        if (this.t == 1) {
            return false;
        }
        if (this.r) {
            this.r = false;
            return true;
        }
        boolean z;
        if (m.b() > (this.u ? 900000 : 300000) + this.o.getLong(this.p, 0)) {
            z = true;
        } else {
            z = false;
        }
        if (((vu) az()).isEmpty() || (r1 && this.s)) {
            return true;
        }
        return false;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 28 && ((aa) xVar.l().b()).b()) {
            if (xVar instanceof am) {
                am amVar = (am) xVar;
                boolean z = this.u;
                this.u = amVar.g();
                if (amVar.e() && !amVar.O()) {
                    au();
                }
            }
            this.o.a().a(this.p, m.b()).apply();
        }
    }

    public void G() {
        aB();
        super.G();
    }

    public void onCreate(Bundle bundle) {
        boolean z;
        boolean z2 = true;
        super.onCreate(bundle);
        this.s = bundle == null;
        UserSettings j = aT().j();
        if (j != null) {
            z = j.B;
        } else {
            z = false;
        }
        this.n.a(bundle);
        if (bundle != null) {
            String str = "state_is_degraded";
            if (z) {
                z2 = false;
            }
            z2 = bundle.getBoolean(str, z2);
        } else if (z) {
            z2 = false;
        }
        this.u = z2;
        String f = C().f("timeline_tag");
        if (f != null) {
            this.p = f + "_" + "refresh_time";
        } else {
            this.p = "refresh_time";
        }
        this.o = new l(getActivity(), aT().e(), "trendsplus");
        this.q = aT().g();
        this.v = new k(getActivity().getResources());
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("state_is_degraded", this.u);
        this.n.b(bundle);
        super.onSaveInstanceState(bundle);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        View view = ap().b;
        if (view != null) {
            view.setOnClickListener(new i(this));
        }
        return a;
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.c(2130969466);
    }

    protected void a(cgu<aw> cgu_com_twitter_android_timeline_aw) {
        super.a((cgu) cgu_com_twitter_android_timeline_aw);
        Cursor a = ((vu) az()).f().a();
        if (a != null && a.moveToFirst()) {
            i iVar = (i) com.twitter.util.serialization.m.a(a.getBlob(cdc.C), d.a);
            boolean z = iVar != null && iVar.j;
            this.u = z;
        }
    }

    protected void h() {
    }

    public void onStop() {
        super.onStop();
        this.s = false;
    }

    protected void g() {
        this.n.d();
        c(aT().g());
        t();
        super.g();
    }

    protected x f(int i) {
        if (this.K != 28) {
            return super.f(i);
        }
        am amVar = new am(getActivity(), aT(), i != 3);
        if (i == 4) {
            amVar.k("Not triggered by a user action.");
        }
        amVar.b("scribe_event", TwitterListFragment.a(aD().a(), null, i));
        this.t = i;
        return amVar;
    }

    protected void a(View view) {
        TransitionDrawable transitionDrawable = (TransitionDrawable) getActivity().getResources().getDrawable(2130840221);
        view.setBackgroundDrawable(transitionDrawable);
        transitionDrawable.startTransition(500);
    }

    protected void a(PromotedEvent promotedEvent, long j) {
        az.a(this.T).a(new bms(this.T, aT(), promotedEvent).a(j));
    }

    protected rf a(TwitterFragmentActivity twitterFragmentActivity, vr vrVar, boolean z, boolean z2) {
        rf a = super.a(twitterFragmentActivity, vrVar, z, z2);
        a.a(this.n);
        return a;
    }
}
