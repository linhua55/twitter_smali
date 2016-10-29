package com.twitter.android;

import android.os.Bundle;
import android.view.ViewParent;
import com.twitter.android.widget.PipView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.view.r;

/* compiled from: Twttr */
class pa extends r {
    final /* synthetic */ int a;
    final /* synthetic */ GroupedRowView b;
    final /* synthetic */ PipView c;
    final /* synthetic */ oz d;

    pa(oz ozVar, ViewParent viewParent, int i, int i2, GroupedRowView groupedRowView, PipView pipView) {
        this.d = ozVar;
        this.a = i2;
        this.b = groupedRowView;
        this.c = pipView;
        super(viewParent, i);
    }

    public void onPageSelected(int i) {
        if (this.d.f != null) {
            Bundle bundle = new Bundle(2);
            bundle.putInt("position", this.a);
            bundle.putInt("page", i);
            this.d.f.a(this.b, null, bundle);
        }
        this.c.setPipOnPosition(i);
        super.onPageSelected(i);
    }
}
