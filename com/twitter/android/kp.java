package com.twitter.android;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class kp {
    private final Context a;
    private final boolean b;

    public kp(Context context, boolean z) {
        this.a = context;
        this.b = z;
    }

    public TwitterListFragment a(boolean z, j jVar) {
        return (TwitterListFragment) Fragment.instantiate(this.a, a(jVar, z, false, this.b).getName(), jVar.e());
    }

    static Class<? extends BaseFragment> a(j jVar, boolean z, boolean z2, boolean z3) {
        ((j) jVar.a("activity_type", z3 ? 3 : 0)).a("activity_mention_only", z);
        return z2 ? VitActivityFragment.class : ActivityFragment.class;
    }
}
