package com.twitter.android;

import ami;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import ark;
import bbu;
import cgu;
import cni;
import com.twitter.android.client.x;
import com.twitter.android.metrics.b;
import com.twitter.android.metrics.d;
import com.twitter.android.profilecompletionmodule.ProfileCompletionFlowActivity;
import com.twitter.android.profilecompletionmodule.aa;
import com.twitter.android.profiles.aj;
import com.twitter.android.profiles.ao;
import com.twitter.android.profiles.ap;
import com.twitter.android.profiles.aq;
import com.twitter.android.profiles.as;
import com.twitter.android.profiles.aw;
import com.twitter.android.profiles.w;
import com.twitter.android.revenue.y;
import com.twitter.android.util.av;
import com.twitter.android.util.az;
import com.twitter.android.widget.ScrollingHeaderTimelineFragment;
import com.twitter.android.widget.br;
import com.twitter.android.widget.bt;
import com.twitter.android.widget.em;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.ai;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.refresh.widget.a;
import com.twitter.ui.view.u;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class ProfileTimelinesFragment extends ScrollingHeaderTimelineFragment implements OnClickListener, ap, az {
    private boolean m;
    private br n;
    private aj o;
    private w p;
    private final Set<Long> q;
    private final List<TwitterScribeItem> r;
    private boolean s;
    private boolean t;
    private boolean u;
    private long v;
    private br w;
    private TextView x;
    private TwitterButton y;

    public ProfileTimelinesFragment() {
        this.q = new HashSet();
        this.r = new ArrayList();
    }

    public void onCreate(Bundle bundle) {
        boolean z = false;
        h C = C();
        this.m = C.a("is_me", false);
        super.onCreate(bundle);
        if (C.b("statuses_count") == 0) {
            z = true;
        }
        this.t = z;
        if (this.m) {
            a(new u().b(true).f(true).h(true).a());
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        if (a != null && this.m) {
            this.x = (TextView) e.a((TypefacesTextView) a.findViewById(2131951653));
            this.y = (TwitterButton) e.a((TwitterButton) a.findViewById(2131953129));
            aN();
            this.y.setVisibility(0);
            this.y.setOnClickListener(this);
        }
        return a;
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (this.m) {
            tVar.d(2130969368).f(2130969223);
        }
    }

    protected boolean A() {
        return y.a();
    }

    protected void w() {
        this.c = new b("timeline:bellbird_profile_tweets", "timeline:bellbird_profile_tweets", ark.l, aG());
        this.c.b(this.Z.c().g());
        this.c.i();
    }

    protected void y() {
        super.y();
        d a = d.a(this.Y, aG(), false);
        if (a != null) {
            a.a(1);
        }
    }

    public void a(ao aoVar) {
        long j = aoVar.a().M;
        if (j != this.v) {
            if (ay()) {
                vu vuVar = (vu) az();
                if (vuVar instanceof rf) {
                    this.v = j;
                    ((rf) vuVar).a(Collections.singletonList(Long.valueOf(this.v)));
                    ap().a.invalidateViews();
                    Cursor a = ((vu) az()).f().a();
                    if (a != null) {
                        a(a);
                    }
                    d(this.N);
                }
            }
        } else if (this.m && ((vu) az()).getCount() == 0) {
            aN();
        }
    }

    public boolean q() {
        if (com.twitter.util.aj.a(r(), "profile_self")) {
            return com.twitter.config.d.a("android_umf_request_profile_self");
        }
        return com.twitter.config.d.a("android_umf_request_profile_other");
    }

    public String r() {
        return this.m ? "profile_self" : "profile_other";
    }

    public int t() {
        return 1;
    }

    public void a(av avVar) {
    }

    protected boolean z() {
        return ai.a();
    }

    protected void aa_() {
        d a = d.a(this.Y, aG(), false);
        FragmentActivity activity = getActivity();
        vu vuVar = (vu) az();
        if (activity instanceof aq) {
            ao h = ((aq) activity).h();
            this.v = h.a().M;
            if (vuVar instanceof rf) {
                ((rf) vuVar).a(Collections.singletonList(Long.valueOf(this.v)));
            }
            if (this.o != null) {
                this.o.p();
            }
            TwitterScribeAssociation aD = aD();
            this.o = new aw(getActivity(), this.Z, h, aD, a, true);
            this.p = new w(activity, this.Z, getLoaderManager(), com.twitter.library.client.az.a(activity), h, x.a(activity).a(), aD, u(), this);
            this.w = ((em) new em(vuVar, this.o.b(), 4).a(true)).a();
            this.n = this.w;
            if (this.p.a() != null) {
                this.n = new bt(this.w, this.p.a(), 0).a(true).a(2130968806).b();
            }
            ap().a.setAdapter(this.n);
            h.a(this);
            return;
        }
        ap().a.setAdapter(vuVar);
    }

    public void ab_() {
        super.ab_();
        if (this.o != null) {
            this.o.m();
        }
        if (this.p != null) {
            this.p.b();
        }
    }

    protected void a() {
        super.a();
        if (!(this.t || !this.s || this.o == null)) {
            this.o.n();
        }
        if (this.p != null) {
            this.p.b();
        }
    }

    protected void a(a aVar, boolean z) {
        long j = aVar.b;
        if (j > 0) {
            int a;
            k ap = ap();
            int headerViewsCount = aVar.a - ap.a.getHeaderViewsCount();
            if (headerViewsCount < 0 || this.n.getItemId(headerViewsCount) != j) {
                a = a(j);
            } else {
                a = aVar.a;
            }
            if (a >= ap.a.getHeaderViewsCount() || !z) {
                ap.a(a, aVar.c);
            }
        }
    }

    public int a(long j) {
        int count = this.n.getCount();
        for (int i = 0; i < count; i++) {
            if (this.n.getItemId(i) == j) {
                return ap().a.getHeaderViewsCount() + i;
            }
        }
        return 0;
    }

    public void onClick(View view) {
        if (view.getId() != 2131953129) {
            return;
        }
        if (this.u) {
            bbu.a(new TwitterScribeLog(this.Z.c().g()).b(new String[]{"profile", "edit_profile_flow", null, "timeline", "launch"}));
            startActivity(ProfileCompletionFlowActivity.a(getActivity(), "profile"));
            return;
        }
        bbu.a(new TwitterScribeLog(this.Z.c().g()).b(new String[]{"profile", "compose", null, "timeline", "launch"}));
        startActivity(com.twitter.android.composer.aw.a().a(getActivity()));
    }

    public void a(ListView listView, View view, int i, long j) {
        z b = this.n.b(i - listView.getHeaderViewsCount());
        if (b != null) {
            BaseAdapter baseAdapter = (BaseAdapter) b.a();
            int intValue = ((Integer) b.b()).intValue();
            if (this.o != null && baseAdapter == this.o.b()) {
                this.o.onItemClick(listView, view, intValue, j);
            } else if (this.p == null || baseAdapter != this.p.a()) {
                super.a(listView, view, i, j);
            } else {
                this.p.onItemClick(listView, view, intValue, j);
            }
        }
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
        super.a(view, tweet, bundle);
        if (tweet != null && this.q.add(Long.valueOf(tweet.t))) {
            TwitterScribeItem a = TwitterScribeItem.a(getActivity().getApplicationContext(), tweet, aD(), null);
            a.g = bundle.getInt("position") + 1;
            this.r.add(a);
            cni cni = tweet.f;
            if (cni != null) {
                aH().a(PromotedEvent.a, cni);
            }
        }
    }

    protected String i() {
        return as.a(this.m);
    }

    protected void a(cgu<com.twitter.android.timeline.aw> cgu_com_twitter_android_timeline_aw) {
        super.a(cgu_com_twitter_android_timeline_aw);
        Cursor a = ((vu) az()).f().a();
        FragmentActivity activity = getActivity();
        int count = ((vu) az()).getCount();
        if (activity instanceof mu) {
            ((mu) activity).c(count);
        }
        if (count == 0) {
            aN();
        }
        J();
        if (a != null) {
            a(a);
        }
    }

    private void J() {
        if (((vu) az()).getCount() <= 0 || this.o == null) {
            aM();
            return;
        }
        this.t = false;
        this.s = true;
        this.o.n();
    }

    private void aM() {
        d a = d.a(this.Y, aG(), false);
        if (a != null) {
            a.a(2);
        }
    }

    private void aN() {
        if (this.m) {
            this.u = aa.a(true);
            if (this.u) {
                this.x.setText(2131362654);
                this.y.setText(2131362653);
                return;
            }
            this.x.setText(2131362655);
            this.y.setText(2131362652);
        }
    }

    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        if (i == 1) {
            J();
        }
        super.a(xVar, i, i2);
    }

    public void onDestroy() {
        if (this.o != null) {
            this.o.p();
        }
        if (this.p != null) {
            this.p.c();
        }
        super.onDestroy();
    }

    public void e() {
        if (this.o != null) {
            this.o.q();
        }
        super.e();
    }

    protected ami c(int i) {
        ami c = super.c(i);
        if (!this.m && i == 3 && ay() && ((vu) az()).getCount() == 0) {
            c.a(true);
        }
        return c;
    }

    protected int I() {
        return 20;
    }

    private void a(Cursor cursor) {
        Object obj = null;
        int i = 4;
        int position = cursor.getPosition();
        if (!(this.m || this.n == null || !cursor.moveToFirst())) {
            Object obj2;
            while (!vu.d(cursor)) {
                if (!cursor.moveToNext()) {
                    obj2 = null;
                    break;
                }
            }
            obj2 = 1;
            if (obj2 != null) {
                i = 13;
            }
        }
        if (this.v > 0 && cursor.moveToFirst()) {
            do {
                if (vu.a(cursor, this.v)) {
                    obj = 1;
                }
                if (!cursor.moveToNext()) {
                    break;
                }
            } while (cursor.getPosition() < i);
            if (obj != null) {
                i++;
            }
        }
        cursor.moveToPosition(position);
        if (this.v > 0) {
            i--;
        }
        this.w.a(i);
    }

    protected vu a(TwitterFragmentActivity twitterFragmentActivity, vr vrVar, boolean z) {
        return super.a(twitterFragmentActivity, vrVar, z, true);
    }
}
