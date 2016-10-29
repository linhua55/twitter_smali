package com.twitter.android.client;

import android.os.Bundle;
import android.view.LayoutInflater;
import bdl;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.refresh.widget.a;

/* compiled from: Twttr */
public class az<T, A extends bdl<T>> extends k<T, A> {
    public static <T, A extends bdl<T>> az<T, A> a(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        return new az(layoutInflater, tVar, bundle);
    }

    protected az(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        super(layoutInflater, tVar, bundle);
    }

    public a d() {
        a d = super.d();
        if (d.b != -2147483648L || h() <= 1) {
            return d;
        }
        int i = d.a + 1;
        return new a(i, this.a.getItemIdAtPosition(i), d.c);
    }
}
