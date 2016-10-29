package com.twitter.library.client.navigation;

import android.content.Intent;
import android.support.annotation.StringRes;
import android.view.View;
import com.twitter.internal.android.widget.e;
import com.twitter.library.client.at;

/* compiled from: Twttr */
public class v implements e, ac {
    final /* synthetic */ r a;
    private final at b;

    public v(r rVar, at atVar) {
        this.a = rVar;
        this.b = atVar;
    }

    public ac f(boolean z) {
        return this;
    }

    public Intent m() {
        return null;
    }

    public int a() {
        return this.b.c();
    }

    public ac e(boolean z) {
        return this;
    }

    public ac g(@StringRes int i) {
        return this;
    }

    public View d() {
        return null;
    }

    public void setBadgeMode(int i) {
        boolean z = i == 2;
        if (z != this.b.h) {
            this.b.h = z;
            r.a(this.a).notifyDataSetChanged();
        }
    }

    public void setBadgeNumber(int i) {
        if (this.b.i != i) {
            this.b.i = i;
            r.a(this.a).notifyDataSetChanged();
        }
    }
}
