package com.twitter.android.av.monetization;

import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import com.twitter.android.client.at;
import com.twitter.android.client.au;
import com.twitter.android.client.av;
import com.twitter.model.av.MonetizationCategory;
import defpackage.cgu;
import java.util.Set;
import rx.an;
import rx.o;

/* compiled from: Twttr */
public class r extends at<MonetizationCategory, MonetizationCategorySelectorListItemView> {
    @VisibleForTesting
    an a;

    public r(LayoutInflater layoutInflater, au auVar, o<cgu<MonetizationCategory>> oVar, Set<Integer> set) {
        this(layoutInflater, auVar, (o) oVar, new q(layoutInflater, set));
    }

    r(LayoutInflater layoutInflater, au auVar, o<cgu<MonetizationCategory>> oVar, q qVar) {
        super(layoutInflater, auVar);
        a((av) qVar);
        this.a = oVar.c(new s(this));
    }

    public void ap_() {
        super.ap_();
        this.a.K_();
    }
}
