package com.twitter.app.drafts;

import android.os.Bundle;
import android.view.LayoutInflater;
import aoo;
import ape;
import com.twitter.android.composer.aw;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.k;
import com.twitter.model.drafts.d;
import rx.an;

/* compiled from: Twttr */
public class s extends k<d, k> implements com.twitter.app.common.di.d {
    private final an f;

    public s(LayoutInflater layoutInflater, v vVar, t tVar, m mVar, ape<aw> ape_com_twitter_android_composer_aw, aoo aoo, p pVar) {
        super(layoutInflater, vVar, (Bundle) tVar.a("ViewHost"));
        a(new k(layoutInflater.getContext(), layoutInflater));
        this.a.setOnItemClickListener(new t(this, vVar, ape_com_twitter_android_composer_aw, pVar, aoo));
        this.f = mVar.a().c(new u(this));
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.VIEW) {
            this.f.K_();
            a(null);
        }
    }
}
