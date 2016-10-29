package com.twitter.app.drafts;

import apq;
import apu;
import com.twitter.app.common.app.n;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.b;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.model.drafts.d;
import defpackage.bdl;

/* compiled from: Twttr */
public class DraftsFragment extends TwitterListFragment<d, bdl<d>> {
    protected /* synthetic */ a b(t tVar) {
        return a(tVar);
    }

    protected /* synthetic */ b d(t tVar) {
        return c(tVar);
    }

    protected o a(t tVar) {
        return c.a().a(n.s()).a(new apq(j.a(C()))).a();
    }

    protected r c(t tVar) {
        j a = j.a(C());
        v b = new v().c(a.b).b(a.a);
        a((com.twitter.app.common.list.t) b);
        return ((o) am()).a(new apu((BaseFragmentActivity) getActivity(), b, tVar));
    }
}
