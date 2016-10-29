package com.twitter.android;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.widget.bl;
import com.twitter.library.util.ao;

/* compiled from: Twttr */
class rd extends bl<rc> {
    private final ql b;

    rd(Context context, rc rcVar) {
        super(rcVar, 2);
        this.b = new ql(context.getString(2131362741), null);
    }

    protected Object a() {
        return null;
    }

    protected Object b() {
        return this.b;
    }

    protected View a(View view, ViewGroup viewGroup) {
        return null;
    }

    protected View b(View view, ViewGroup viewGroup) {
        return qm.a(2130969382, view, viewGroup, this.b, ao.a);
    }
}
