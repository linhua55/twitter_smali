package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import ard;
import com.twitter.android.timeline.q;
import com.twitter.android.widget.ScrollingHeaderListFragment;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.p;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;
import com.twitter.refresh.widget.RefreshableListView;
import defpackage.arf;
import defpackage.ark;
import defpackage.aru;
import defpackage.bdl;
import vv;

/* compiled from: Twttr */
public abstract class TweetListFragment<T, A extends bdl<T>> extends ScrollingHeaderListFragment<T, A> implements kr<View, Tweet> {
    protected Tweet H;
    protected sn I;
    protected tj J;
    protected int K;
    protected TwitterScribeItem L;
    protected boolean M;

    public TweetListFragment() {
        this.I = null;
        this.J = null;
        this.K = -1;
        this.L = null;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.H != null) {
            bundle.putParcelable("state_delete_key", this.H);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.H = (Tweet) bundle.getParcelable("state_delete_key");
        }
        this.M = C().a("en_act", true);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        ap().a((p) this);
        return a;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Context activity = getActivity();
        k ap = ap();
        if ((this.U || aT().d()) && this.M) {
            if (this.I == null) {
                this.I = M();
            }
            this.J = new tj(this, this.I, ap.a, ViewConfiguration.get(activity).getScaledTouchSlop(), Q_());
            ap.a(this.J);
        }
        if ((ap.a instanceof RefreshableListView) && ar()) {
            String str = "timeline:list_layout_duration:" + this.K;
            String str2 = "timeline:list_layout_count:" + this.K;
            ard a = ard.a(str, ark.n, aru.b(), true, 3);
            arf a2 = arf.a(str2, aru.b(), this.Z.c().g(), ark.n, 3);
            a.i();
            a2.i();
            ((RefreshableListView) ap.a).setViewLayoutListener(new q(a, a2));
        }
    }

    protected sn M() {
        return new sn(this, aD());
    }

    boolean Q_() {
        return false;
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
    }

    public boolean a(AbsListView absListView, int i) {
        super.a(absListView, i);
        o(i);
        if (i == 2 || i == 0) {
            boolean z;
            if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            f(z);
        }
        return false;
    }

    protected void g() {
        super.g();
        AsyncOperation vvVar = new vv(this.T, aT().g());
        vvVar.a(new vp(this));
        az.a(this.T).a(vvVar);
    }
}
