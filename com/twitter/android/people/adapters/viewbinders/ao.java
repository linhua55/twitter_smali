package com.twitter.android.people.adapters.viewbinders;

import android.support.v4.view.ViewPager;
import com.twitter.android.people.adapters.aq;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.w;
import com.twitter.android.people.bb;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.core.as;

/* compiled from: Twttr */
public class ao extends h<as, aq, w> {
    public ao(bb bbVar, StateSaver<h<as, aq, w>> stateSaver) {
        super(bbVar, new ap(), stateSaver);
    }

    public boolean a(i iVar) {
        return iVar instanceof w;
    }

    protected void a(ViewPager viewPager, w wVar) {
        viewPager.setOffscreenPageLimit(wVar.a.size());
    }

    public String aF_() {
        return "STATE_TWEET_CAROUSEL_VIEW_BINDER";
    }
}
