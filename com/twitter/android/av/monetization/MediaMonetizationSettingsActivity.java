package com.twitter.android.av.monetization;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.model.av.n;
import com.twitter.model.av.p;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class MediaMonetizationSettingsActivity extends TwitterFragmentActivity implements j {
    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    public boolean a(w wVar) {
        wVar.a(2132017175);
        d(wVar);
        return super.a(wVar);
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953459) {
            return super.a(acVar);
        }
        setResult(-1, ab.a(new Intent(), "media_monetization_metadata", ((h) V()).a().c(), n.a));
        finish();
        return true;
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        n nVar = new n(this, 0);
        h hVar = (h) V();
        return new i(getBaseContext(), layoutInflater, nVar, hVar.a(), this);
    }

    protected h a(t tVar) {
        n nVar = (n) ab.a(getIntent(), "media_monetization_metadata", n.a);
        return new h(nVar == null ? new p() : new p(nVar));
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        tVar.d(0);
        tVar.a(false);
        tVar.a(0);
        tVar.b(false);
        return tVar;
    }

    public void c() {
        d(Y().c());
    }

    private void d(w wVar) {
        if (wVar != null) {
            ac b = wVar.b(2131953459);
            if (b != null) {
                b.e(e());
            }
        }
    }

    private boolean e() {
        p a = ((h) V()).a();
        return (a.a() && a.b().isEmpty()) ? false : true;
    }
}
