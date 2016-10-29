package com.twitter.android.smartfollow.interestsearch;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import bdo;
import chd;
import com.twitter.android.interestpicker.ap;
import com.twitter.android.interestpicker.ar;
import com.twitter.android.interestpicker.aw;
import com.twitter.android.interestpicker.ay;
import com.twitter.android.interestpicker.f;
import com.twitter.android.interestpicker.h;
import com.twitter.android.interestpicker.m;
import com.twitter.android.interestpicker.q;
import com.twitter.android.interestpicker.r;
import com.twitter.android.util.CategoryListItem;
import com.twitter.app.common.base.g;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.internal.android.widget.FlowLayoutManager;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.ab;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
public class InterestSearchFragment extends AbsFragment implements ar, r {
    protected m a;
    private ap b;
    private List<aw> c;
    private long d;
    private String e;

    public InterestSearchFragment() {
        this.a = new m(this);
        this.c = n.g();
        this.d = -1;
    }

    protected /* synthetic */ a b(t tVar) {
        return a(tVar);
    }

    public /* synthetic */ g o() {
        return b();
    }

    public e b() {
        return e.a(getArguments());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j jVar = (j) am();
        e b = b();
        this.b = jVar.c();
        this.e = b.b();
        this.d = b.a();
        if (bundle != null) {
            List list = (List) ab.a(bundle, "state_search_terms", s.a(aw.e));
            if (list != null) {
                this.c = list;
            }
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130968936, null, false);
        PopupEditText popupEditText = (PopupEditText) e.a(inflate.findViewById(2131952638));
        RecyclerView recyclerView = (RecyclerView) e.a(inflate.findViewById(2131952636));
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131690078);
        recyclerView.setLayoutManager(new FlowLayoutManager());
        recyclerView.addItemDecoration(new bdo(new q(0, dimensionPixelSize, 0, dimensionPixelSize)));
        this.a.a(new chd((Iterable) ObjectUtils.a(this.c)));
        recyclerView.setAdapter(this.a);
        this.b.a(this);
        this.b.a(popupEditText);
        this.b.b(this.e);
        return inflate;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ab.a(bundle, "state_search_terms", this.c, s.a(aw.e));
    }

    protected j a(t tVar) {
        return a.a().a(com.twitter.app.common.app.n.s()).a();
    }

    public void a(h hVar) {
        if (hVar instanceof aw) {
            aw awVar = (aw) hVar;
            a(awVar.g ? "select" : "deselect", awVar);
        }
    }

    public void a(CategoryListItem categoryListItem) {
        c(categoryListItem.a());
    }

    public void b(String str) {
        c(str);
    }

    public List<aw> c() {
        n d = n.d();
        for (h hVar : this.c) {
            if ((hVar instanceof aw) && ((aw) hVar).g) {
                d.c((aw) hVar);
            }
        }
        return (List) d.q();
    }

    private void c(String str) {
        aw awVar = (aw) ((ay) ((ay) new ay().a(str)).b(this.d)).a(2).a(true).c(true).q();
        this.c = f.a(this.c, (h) awVar);
        this.a.a(new chd((Iterable) ObjectUtils.a(this.c)));
        a("select", awVar);
    }

    private void a(String str, aw awVar) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(this.e, "smart_follow_flow", "interest_picker_search", null, str)).a(f.a(awVar, this.c.indexOf(awVar))));
    }
}
