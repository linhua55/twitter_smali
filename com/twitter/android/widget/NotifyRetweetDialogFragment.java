package com.twitter.android.widget;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.d;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class NotifyRetweetDialogFragment extends RetweetDialogFragment {
    public /* synthetic */ ee b() {
        return a();
    }

    public /* synthetic */ ea c() {
        return a();
    }

    public /* synthetic */ d g() {
        return a();
    }

    public db a() {
        return db.a(getArguments());
    }

    public static NotifyRetweetDialogFragment a(int i, long j, Tweet tweet, boolean z, boolean z2, Intent intent, Context context) {
        return (NotifyRetweetDialogFragment) ((dd) ((dd) RetweetDialogFragment.a((ef) new dd(i), j, tweet, z, z2, false, context)).a(intent)).i();
    }

    protected void a(long j, Tweet tweet, boolean z) {
        getActivity().startService(a().a());
        a(0, j, tweet, z);
    }
}
