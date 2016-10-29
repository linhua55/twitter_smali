package com.twitter.android.livevideo.landing;

import abi;
import abn;
import amg;
import android.os.Bundle;
import android.view.View;
import bbu;
import com.twitter.android.TimelineFragment;
import com.twitter.android.livevideo.landing.di.f;
import com.twitter.android.livevideo.landing.di.v;
import com.twitter.android.sn;
import com.twitter.android.timeline.bj;
import com.twitter.android.timeline.bk;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.app.common.app.n;
import com.twitter.app.common.list.t;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import cym;
import dbd;
import dbg;
import defpackage.blx;
import defpackage.cjl;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
public class LiveVideoTimelineFragment extends TimelineFragment implements bk {
    public static final String m;
    abi n;
    TwitterScribeItem o;
    bj p;
    abn q;
    private final dbg r;
    private final e<cjl> s;

    public LiveVideoTimelineFragment() {
        this.r = new dbg();
        this.s = e.q();
    }

    static {
        m = LiveVideoTimelineFragment.class.getSimpleName();
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.c(2130968948);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a(bundle);
        t();
        aM();
        aN();
    }

    private void a(Bundle bundle) {
        NewItemBannerView newItemBannerView = (NewItemBannerView) getView().findViewById(2131951631);
        f.a().a(new v(getActivity(), a.a(C()), bundle, newItemBannerView, this)).a(n.s()).a().a(this);
    }

    private void t() {
        this.r.a(this.n.a().b(dbd.d()).a(cym.a()).a(this.s));
    }

    private void aM() {
        this.r.a(this.q.a().a(new i(this)).n());
    }

    private void aN() {
        a(new j(this));
        this.p.d();
        al().a(this.p);
    }

    protected void d() {
        super.d();
        this.p.g();
    }

    protected x f(int i) {
        return this.n.a((amg) c(i).q());
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.n.c();
    }

    public void onDestroyView() {
        this.p.f();
        al().b(this.p);
        this.r.K_();
        if (this.n != null) {
            this.n.b();
        }
        super.onDestroyView();
    }

    public o<cjl> r() {
        return this.s;
    }

    protected sn M() {
        return new l(this, aD(), this.o);
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (xVar instanceof blx) {
            a((blx) xVar, i2);
        }
    }

    private void a(blx blx, int i) {
        this.p.a(blx.H(), i == 4, blx.z());
    }

    private void b(String str) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(aT().g());
        twitterScribeLog.b(new String[]{i(), null, "new_tweet_prompt", null, str});
        twitterScribeLog.a(this.o);
        bbu.a(twitterScribeLog);
    }

    protected void e() {
        this.p.i();
        super.e();
    }

    protected void a(int i) {
        super.a(i);
        this.p.a(i);
    }

    public void Z_() {
        b("show");
    }

    public void J() {
        b("dismiss");
    }

    public void H() {
        ap().u();
        b("click");
    }
}
