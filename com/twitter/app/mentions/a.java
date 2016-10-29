package com.twitter.app.mentions;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class a {
    private final Context a;
    private final boolean b;

    public a(Context context, boolean z) {
        this.a = context;
        this.b = z;
    }

    public TwitterListFragment a(j jVar) {
        return (TwitterListFragment) Fragment.instantiate(this.a, a(jVar, this.b).getName(), jVar.e());
    }

    static Class a(j jVar, boolean z) {
        ((j) ((j) jVar.a("type", z ? 24 : 5)).b(2131362646)).c(2131362647);
        return MentionsTimelineFragment.class;
    }
}
