package com.twitter.android.av.monetization;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import com.twitter.android.client.au;
import com.twitter.app.common.app.n;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import defpackage.ur;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;

/* compiled from: Twttr */
public class MonetizationCategorySelectorActivity extends TwitterFragmentActivity {
    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        tVar.d(0);
        tVar.a(false);
        tVar.a(0);
        tVar.b(false);
        return tVar;
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        super.a(layoutInflater, bundle);
        au a = new au().a(2130968983).b(2131952702).a(new LinearLayoutManager(getBaseContext()));
        p pVar = (p) V();
        return new r(layoutInflater, a, pVar.d(), pVar.c());
    }

    protected p a(t tVar) {
        Collection integerArrayListExtra = getIntent().getIntegerArrayListExtra("selected_categories");
        return a.a().a(n.s()).a(new ur(integerArrayListExtra != null ? new HashSet(integerArrayListExtra) : new HashSet())).a();
    }

    public void onBackPressed() {
        setResult(-1, new Intent().putIntegerArrayListExtra("selected_categories", new ArrayList(((p) V()).c())));
        super.onBackPressed();
    }
}
