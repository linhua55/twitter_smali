package com.twitter.android.events;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.Loader;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.ListView;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.SearchResultsFragment;
import com.twitter.android.bu;
import com.twitter.android.pk;
import com.twitter.android.sn;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.g;
import com.twitter.refresh.widget.a;
import defpackage.bbu;
import defpackage.ccu;
import defpackage.cgu;

/* compiled from: Twttr */
public class EventLandingFragment extends SearchResultsFragment implements e {
    private String a;
    private String ab;
    private int ac;
    private final d ad;
    private String ae;
    private int af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private int aj;
    private int ak;

    public EventLandingFragment() {
        this.ad = new d();
        this.af = -1;
        this.ai = 0;
        this.aj = 0;
        this.ak = 0;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h t = t();
        if (bundle != null) {
            this.a = bundle.getString("scribe_section");
            this.ab = bundle.getString("scribe_component");
            this.ah = bundle.getBoolean("first_time");
            this.ai = bundle.getInt("count");
        } else {
            this.a = t.f("scribe_section");
            this.ab = t.f("scribe_component");
            this.ah = false;
        }
        this.af = t.b("search_type");
        this.ae = t.f("event_id");
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b(this.B)).c(this.a)).d(this.ab)).a(6)).a(this.D));
        this.I = new sn(this, aD());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("scribe_section", this.a);
        bundle.putString("scribe_component", this.ab);
        if (this.af == 8) {
            bundle.putString("event_id", this.ae);
        }
        bundle.putBoolean("first_time", this.ah);
        bundle.putInt("count", this.ai);
    }

    protected void m() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(this.B, this.a, this.ab, null, "show_polled_content")).a(TwitterScribeItem.a(this.D, this.q)));
        super.m();
    }

    protected String P() {
        return this.a;
    }

    protected void a(cgu<pk> cgu_com_twitter_android_pk) {
        boolean z = 3 == this.l && this.ai == 0 && this.m == 8 && !cgu_com_twitter_android_pk.g();
        this.ah = z;
        super.a((cgu) cgu_com_twitter_android_pk);
        V();
    }

    protected void a(Context context) {
        if (ah()) {
            super.a(context);
        } else {
            u();
        }
    }

    protected void a(TwitterTopic twitterTopic) {
        if (twitterTopic != null) {
            g gVar = (g) twitterTopic.a(g.class);
            if (gVar != null) {
                ((TwitterEventActivity) getActivity()).a(gVar);
            }
        }
    }

    protected void a(a aVar, boolean z) {
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(db.a, this.Y), ccu.a, "search_id=?", new String[]{String.valueOf(this.s)}, this.m == 8 ? "ev_start_time ASC " : "type_id ASC, _id ASC");
    }

    private void V() {
        TwitterEventActivity twitterEventActivity = (TwitterEventActivity) getActivity();
        ListView listView = an() ? ap().a : null;
        if (listView != null && twitterEventActivity != null) {
            Adapter adapter = listView.getAdapter();
            if (this.ah) {
                for (int i = 0; i < adapter.getCount(); i++) {
                    pk pkVar = (pk) adapter.getItem(i);
                    if (pkVar != null && pkVar.l) {
                        this.ac = i;
                        break;
                    }
                }
                listView.postDelayed(new a(this, twitterEventActivity), 300);
                this.ah = false;
                this.ai = 1;
            }
        }
    }

    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            V();
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969366).f(tVar.d() ? 2130969064 : 2130969367);
    }

    protected void h() {
        if (8 != this.m) {
            super.h();
        }
    }

    protected boolean p() {
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        FragmentActivity activity = getActivity();
        if (activity instanceof ScrollingHeaderActivity) {
            ((ScrollingHeaderActivity) activity).a(false);
        }
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        TwitterEventActivity twitterEventActivity = (TwitterEventActivity) getActivity();
        if (!twitterEventActivity.A()) {
            return false;
        }
        this.ad.a(absListView, i, z, this.P);
        twitterEventActivity.a(this.ad);
        this.ad.d();
        return super.a(absListView, i, i2, i3, z);
    }

    public boolean a(AbsListView absListView, int i) {
        TwitterEventActivity twitterEventActivity = (TwitterEventActivity) getActivity();
        if (!twitterEventActivity.A()) {
            return false;
        }
        this.ad.a(i);
        twitterEventActivity.a(this.ad);
        this.ad.d();
        if (i == 0) {
            ListView listView = ap().a;
            View childAt = listView.getChildAt(0);
            if (childAt != null) {
                this.aj = listView.getFirstVisiblePosition();
                this.ak = childAt.getTop();
            }
        }
        return super.a(absListView, i);
    }

    public void a() {
        super.a();
        if (this.ag) {
            g();
            this.ag = false;
        }
    }

    protected void d() {
        super.d();
        this.ad.d();
        this.ad.b(0);
    }

    public void e() {
        this.ag = true;
        super.e();
    }

    public void e(int i) {
        if (this.aj != 0) {
            i = this.ak;
        }
        ap().a(this.aj, i);
    }
}
