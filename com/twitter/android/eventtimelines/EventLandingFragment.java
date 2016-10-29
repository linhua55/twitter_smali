package com.twitter.android.eventtimelines;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import com.twitter.android.SearchResultsFragment;
import com.twitter.android.ov;
import com.twitter.android.sn;
import com.twitter.android.widget.ez;
import com.twitter.app.common.list.t;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.service.x;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class EventLandingFragment extends SearchResultsFragment implements g {
    private String a;
    private String ab;
    private TwitterScribeItem ac;
    private final i ad;
    private boolean ae;
    private int af;
    private int ag;
    private int ah;
    private h ai;

    public EventLandingFragment() {
        this.ad = new i();
        this.af = 0;
        this.ag = 0;
        this.ah = 0;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof h) {
            this.ai = (h) activity;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ov t = t();
        if (bundle != null) {
            this.a = bundle.getString("scribe_section");
            this.ab = bundle.getString("scribe_component");
            this.ac = (TwitterScribeItem) bundle.getParcelable("scribe_item");
            this.af = bundle.getInt("count");
        } else {
            this.a = t.f("scribe_section");
            this.ab = t.f("scribe_component");
            this.ac = (TwitterScribeItem) t.h("scribe_item");
        }
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b(this.B)).c(this.a)).d(this.ab)).a(6));
        this.I = new sn(this, aD());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("scribe_section", this.a);
        bundle.putString("scribe_component", this.ab);
        bundle.putParcelable("scribe_item", this.ac);
        bundle.putInt("count", this.af);
    }

    protected String P() {
        return this.a;
    }

    protected void a(Context context) {
        if (ah()) {
            super.a(context);
        } else {
            u();
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969366).f(tVar.d() ? 2130969064 : 2130969367);
    }

    protected boolean p() {
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        FragmentActivity activity = getActivity();
        if (activity instanceof ez) {
            ((ez) activity).a(false);
        }
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (this.ai == null || !this.ai.A()) {
            return false;
        }
        this.ad.a(absListView, i, z, this.P);
        this.ai.a(this.ad);
        this.ad.d();
        return super.a(absListView, i, i2, i3, z);
    }

    public boolean a(AbsListView absListView, int i) {
        if (this.ai == null || !this.ai.A()) {
            return false;
        }
        this.ad.a(i);
        this.ai.a(this.ad);
        this.ad.d();
        if (i == 0) {
            ListView listView = ap().a;
            View childAt = listView.getChildAt(0);
            if (childAt != null) {
                this.ag = listView.getFirstVisiblePosition();
                this.ah = childAt.getTop();
            }
        }
        return super.a(absListView, i);
    }

    public void a() {
        super.a();
        if (this.ae && this.af > 0) {
            g();
            this.ae = false;
        }
    }

    protected void d() {
        super.d();
        this.ad.d();
        this.ad.b(0);
    }

    public void e() {
        this.ae = true;
        super.e();
    }

    public void e(int i) {
        if (this.ag != 0) {
            i = this.ah;
        }
        ap().a(this.ag, i);
    }

    protected List<TwitterScribeItem> r() {
        return n.b(this.ac);
    }
}
