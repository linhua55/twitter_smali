package com.twitter.android.people;

import com.twitter.android.people.adapters.aa;
import com.twitter.android.people.adapters.i;
import com.twitter.app.common.app.n;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.b;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.util.ao;
import java.util.Map;

/* compiled from: Twttr */
public class PeopleDiscoveryListFragment extends TwitterListFragment<i, aa> {
    protected /* synthetic */ a b(t tVar) {
        return a(tVar);
    }

    protected /* synthetic */ b d(t tVar) {
        return c(tVar);
    }

    protected aj a(t tVar) {
        return d.a().a(n.s()).a(new aa(m())).a();
    }

    protected void a(com.twitter.app.common.list.t tVar) {
        super.a(tVar);
        tVar.b(false);
        tVar.a(2131363240);
        tVar.b(2131363239);
        tVar.f(2130968669);
    }

    protected ak c(t tVar) {
        com.twitter.app.common.list.t tVar2 = new com.twitter.app.common.list.t();
        a(tVar2);
        return ((aj) am()).a(new ar((BaseFragmentActivity) getActivity(), tVar2, tVar));
    }

    public void onStart() {
        super.onStart();
        v n = n();
        if (n.b()) {
            n.a();
        }
    }

    private Map<String, String> m() {
        return ao.b(getActivity().getIntent().getData());
    }

    private v n() {
        return ((aj) am()).c();
    }
}
