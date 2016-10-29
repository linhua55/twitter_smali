package com.twitter.android.alerts.landing;

import android.os.Bundle;
import cgd;
import com.twitter.android.widget.ScrollingHeaderTimelineFragment;
import com.twitter.app.common.list.h;
import com.twitter.library.provider.di;
import com.twitter.library.service.x;
import com.twitter.platform.PlatformContext;
import defpackage.cfb;
import defpackage.cym;
import defpackage.dbd;
import defpackage.sb;
import rx.an;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
public class AlertTimelineFragment extends ScrollingHeaderTimelineFragment {
    public static final String m;
    public static final String n;
    private final e<cgd> o;
    private l p;
    private an q;

    public AlertTimelineFragment() {
        this.o = e.q();
    }

    static {
        m = AlertTimelineFragment.class.getSimpleName();
        n = m + ":alert_id";
    }

    public void onCreate(Bundle bundle) {
        long a = a(C());
        super.onCreate(bundle);
        this.p = new l(getActivity(), aT(), a, new sb(di.a(getActivity(), aT().g()), PlatformContext.f().a()));
        this.p.a(bundle);
        this.q = this.p.a().b(dbd.d()).a(cym.a()).a(this.o);
    }

    private long a(h hVar) {
        long a = hVar.a(n, -1);
        if (a == -1) {
            cfb.d(m, "Provided alert id is invalid. Provided value: " + a);
        }
        return a;
    }

    public void onSaveInstanceState(Bundle bundle) {
        this.p.b(bundle);
        super.onSaveInstanceState(bundle);
    }

    protected x f(int i) {
        return this.p.c();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.p.e();
    }

    public void a() {
        super.a();
        t();
    }

    public void onDestroy() {
        if (this.q != null) {
            this.q.K_();
        }
        if (this.p != null) {
            this.p.b();
        }
        super.onDestroy();
    }

    protected int R_() {
        return 0;
    }

    private void t() {
        if (!this.p.d() && h(2)) {
            this.p.a(true);
        }
    }

    public o<cgd> r() {
        return this.o;
    }
}
