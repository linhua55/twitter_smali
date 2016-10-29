package com.twitter.android.widget;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.SelectionFragment;
import com.twitter.android.autocomplete.adapters.a;
import com.twitter.android.provider.m;
import com.twitter.util.ui.r;
import defpackage.cgu;
import defpackage.tq;
import sp;
import te;

/* compiled from: Twttr */
public class ComposerSelectionFragment extends SelectionFragment<tq, m> {
    y a;
    View b;

    public ComposerSelectionFragment() {
        super(new x(null));
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context activity = getActivity();
        this.g = new sp(activity, new te(activity, this.d.c(), "compose"));
        this.h = new a(activity);
    }

    protected View a(LayoutInflater layoutInflater) {
        View a = super.a(layoutInflater, 2130968715);
        this.b = a.findViewById(2131952261);
        this.b.findViewById(2131952263).setOnClickListener(new w(this));
        r.c(this.b);
        this.f.setEmptyView(a.findViewById(16908292));
        return a;
    }

    public void a(DraggableDrawerLayout draggableDrawerLayout) {
        draggableDrawerLayout.setDrawerDraggable(true);
        draggableDrawerLayout.setDraggableBelowUpPosition(false);
        draggableDrawerLayout.setDispatchDragToChildren(true);
        draggableDrawerLayout.setExtendDrawerInUpState(true);
        draggableDrawerLayout.setFullScreenHeaderView(this.b);
    }

    public boolean a(tq tqVar, long j, m mVar, int i) {
        String a = a.a(tqVar.b, mVar);
        this.e.clearFocus();
        if (this.a != null) {
            this.a.a(a, tqVar, i);
        }
        return true;
    }

    protected boolean q() {
        return false;
    }

    public void a(tq tqVar, cgu<m> cgu_com_twitter_android_provider_m) {
        super.a((Object) tqVar, (cgu) cgu_com_twitter_android_provider_m);
        if (this.a != null) {
            this.a.a(tqVar, cgu_com_twitter_android_provider_m);
        }
    }

    public void E_() {
        super.E_();
        if (this.a != null) {
            this.a.b();
        }
    }

    public void f() {
        this.e.requestFocus();
        r.b(getActivity(), this.e, true);
    }

    public void a(y yVar) {
        this.a = yVar;
    }

    public void a(tq tqVar) {
        if (this.e != null) {
            if (tqVar != null) {
                ((x) this.c).a(tqVar.b);
                a(tqVar.a, tqVar.a.length());
            } else {
                ((x) this.c).a(0);
                a(BuildConfig.VERSION_NAME, 0);
            }
            this.e.b();
        }
    }
}
