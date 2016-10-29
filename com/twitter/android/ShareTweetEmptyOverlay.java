package com.twitter.android;

import android.support.v4.app.Fragment;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.l;
import com.twitter.android.dialog.p;
import com.twitter.app.common.base.d;
import com.twitter.library.util.aq;
import com.twitter.model.core.as;

/* compiled from: Twttr */
public class ShareTweetEmptyOverlay extends TakeoverDialogFragment {
    public /* synthetic */ p e() {
        return a();
    }

    public /* synthetic */ l f() {
        return a();
    }

    public /* synthetic */ d g() {
        return a();
    }

    public qe a() {
        return qe.a(getArguments());
    }

    public static void a(as asVar, Fragment fragment) {
        ((qg) ((qg) ((qg) ((qg) new qg(0).a(asVar)).b(2131363772)).c(2131363771)).a(2130839666)).i().a(fragment.getFragmentManager());
    }

    protected void b() {
        super.b();
        a(new String[]{"messages:share_tweet_no_followers::impression"});
    }

    protected void c() {
        super.c();
        getActivity().finish();
        a(new String[]{"messages:share_tweet_no_followers::cancel"});
    }

    protected void d() {
        super.d();
        aq.a(getActivity(), a().a(), false);
        a(new String[]{"messages:share_tweet_no_followers::share_tweet"});
    }
}
