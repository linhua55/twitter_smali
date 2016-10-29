package com.twitter.android.people;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.android.people.adapters.aa;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.viewbinders.aj;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;

/* compiled from: Twttr */
public class al extends k<i, aa> {
    private final bb f;

    protected al(Context context, LayoutInflater layoutInflater, t tVar, com.twitter.app.common.inject.t tVar2, v vVar, Activity activity, bb bbVar, ap apVar) {
        super(layoutInflater, tVar, (Bundle) tVar2.a("ViewHost"));
        this.f = bbVar;
        this.a.setDivider(null);
        a(new aa(context, this.f, apVar.a));
        vVar.a(new am(this));
        this.b.setOnClickListener(new an(this, vVar));
        for (aj a : apVar.a) {
            p().a(a);
        }
        a(new ao(this));
    }

    public void aD_() {
        super.aD_();
        this.f.a();
    }

    private void c(int i) {
        if (i == 0) {
            this.f.a(this.a.getLastVisiblePosition(), h());
            if (w()) {
                this.f.c();
            }
        }
    }

    private boolean w() {
        return y() && x() == this.a.getHeight();
    }

    private int x() {
        return this.a.getChildAt(this.a.getChildCount() - 1).getBottom();
    }

    private boolean y() {
        return this.a.getLastVisiblePosition() == h() + -1;
    }
}
