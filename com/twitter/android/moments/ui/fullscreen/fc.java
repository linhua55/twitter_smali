package com.twitter.android.moments.ui.fullscreen;

import ade;
import ahk;
import android.app.Activity;
import android.view.ViewGroup;
import bym;
import com.twitter.android.card.a;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.MomentPage;

/* compiled from: Twttr */
public class fc {
    private static final fe a;

    static {
        a = new ff();
    }

    public static fe a(Activity activity, ViewGroup viewGroup, Tweet tweet, MomentPage momentPage, a aVar) {
        if (tweet.J() && tweet.x != null) {
            return new fu(new fv((ViewGroup) viewGroup.findViewById(2131952782)), tweet.x);
        }
        if (bym.h() && momentPage.l() != null) {
            return new cv(new cx(activity, (ViewGroup) viewGroup.findViewById(2131952782), viewGroup.getResources(), new fd()), momentPage.f(), momentPage.l(), ade.a(activity, bg.a().c()));
        } else if (momentPage.k() != null) {
            return new hk(new ahk((ViewGroup) viewGroup.findViewById(2131952782)), aVar, momentPage.k());
        } else {
            return a;
        }
    }
}
