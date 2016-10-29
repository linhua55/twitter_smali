package com.twitter.android;

import com.twitter.library.provider.ck;
import com.twitter.library.provider.cl;
import com.twitter.util.object.g;
import defpackage.ccd;

/* compiled from: Twttr */
class o implements g<bu> {
    final /* synthetic */ ActivityFragment a;

    o(ActivityFragment activityFragment) {
        this.a = activityFragment;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public bu a() {
        String str = ActivityFragment.j(this.a) ? "type=? AND event IN (2, 3)" : "type=?";
        long g = ActivityFragment.k(this.a).g();
        return new u(this.a.getActivity(), ck.a(cl.a, g), ccd.a, str, new String[]{String.valueOf(ActivityFragment.l(this.a))}, null, g);
    }
}
