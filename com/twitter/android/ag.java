package com.twitter.android;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.widget.bl;
import com.twitter.library.util.ao;

/* compiled from: Twttr */
class ag extends bl<af> {
    private final ql b;
    private final ql c;

    ag(Context context, af afVar) {
        super(afVar, 3);
        this.b = new ql(context.getString(2131362330), null);
        this.c = new ql(context.getString(2131362740), null);
    }

    protected Object a() {
        return this.b;
    }

    protected Object b() {
        return this.c;
    }

    protected View a(View view, ViewGroup viewGroup) {
        return qm.a(2130969382, view, viewGroup, this.b, ao.a);
    }

    protected View b(View view, ViewGroup viewGroup) {
        return qm.a(2130969382, view, viewGroup, this.c, ao.a);
    }
}
