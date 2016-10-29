package com.twitter.android.people.adapters.viewbinders;

import android.support.annotation.FractionRes;
import com.twitter.android.people.adapters.a;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.o;
import com.twitter.android.people.bb;
import com.twitter.app.common.util.StateSaver;

/* compiled from: Twttr */
public class m extends h<String, a, o> {
    public m(bb bbVar, StateSaver<h<String, a, o>> stateSaver) {
        super(bbVar, new n(), stateSaver);
    }

    public boolean a(i iVar) {
        return iVar instanceof o;
    }

    @FractionRes
    protected int d() {
        return 2131820549;
    }

    public String aF_() {
        return "STATE_CATEGORY_CAROUSEL_VIEW_BINDER";
    }
}
