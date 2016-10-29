package com.twitter.android.people.adapters.viewbinders;

import android.support.annotation.FractionRes;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.m;
import com.twitter.android.people.adapters.y;
import com.twitter.android.people.bb;
import com.twitter.android.yj;
import com.twitter.app.common.util.StateSaver;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserSocialView;
import com.twitter.model.people.am;
import com.twitter.util.aj;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class ar extends h<am, at, y> {
    private static final ReferenceList<UserSocialView> c;
    private final bb d;

    static {
        c = ReferenceList.a();
    }

    public ar(FriendshipCache friendshipCache, yj yjVar, bb bbVar, StateSaver<h<am, at, y>> stateSaver) {
        super(bbVar, new as(friendshipCache, yjVar), stateSaver);
        c.b();
        this.d = bbVar;
    }

    public boolean a(i iVar) {
        return iVar instanceof y;
    }

    public void a(View view, y yVar) {
        super.a(view, (m) yVar);
        ((at) ((k) ObjectUtils.a(view.getTag())).a).a(yVar);
    }

    protected void a(am amVar, y yVar) {
        this.d.a(yVar.b(), yVar, amVar, amVar);
    }

    protected void a(am amVar, y yVar, boolean z) {
        this.d.a(yVar.b(), yVar, amVar, amVar, z);
    }

    protected void a(ViewPager viewPager, y yVar) {
        int i;
        int i2 = 0;
        for (am amVar : yVar.a) {
            if (aj.b(amVar.b)) {
                i = i2 + 1;
            } else {
                i = i2;
            }
            i2 = i;
        }
        if (i2 == yVar.a.size() || i2 == 0) {
            i = 1;
        } else {
            i = yVar.a.size();
        }
        viewPager.setOffscreenPageLimit(i);
    }

    protected int b() {
        return 2130969164;
    }

    @FractionRes
    protected int d() {
        return 2131820545;
    }

    public String aF_() {
        return "STATE_USER_CAROUSEL_VIEW_BINDER";
    }
}
