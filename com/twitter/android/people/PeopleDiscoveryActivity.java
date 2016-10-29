package com.twitter.android.people;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.ListFragmentActivity;
import com.twitter.android.ic;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class PeopleDiscoveryActivity extends ListFragmentActivity {
    private bd a;

    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        tVar.d(2130969161);
        tVar.b(14);
        tVar.a(0);
        tVar.b(false);
        tVar.d(true);
        return tVar;
    }

    public void b(Bundle bundle, com.twitter.app.common.base.t tVar) {
        super.b(bundle, tVar);
        this.a = ((bh) V()).c();
        this.a.a(N());
    }

    protected bh a(t tVar) {
        return k.a().a(new bf()).a();
    }

    public boolean a(ac acVar) {
        if (2131953426 != acVar.a()) {
            return super.a(acVar);
        }
        this.a.a();
        return true;
    }

    protected CharSequence a(Intent intent) {
        CharSequence a = a(intent, "title");
        if (!c() || aj.a(a)) {
            return getString(2131363241);
        }
        return a;
    }

    protected CharSequence b(Intent intent) {
        return c() ? a(intent, "subtitle") : null;
    }

    protected ic a(Intent intent, com.twitter.app.common.base.t tVar) {
        return new ic(new PeopleDiscoveryListFragment());
    }

    private boolean c() {
        return getIntent().getBooleanExtra("is_internal", false);
    }

    private static String a(Intent intent, String str) {
        Uri data = intent.getData();
        if (data != null) {
            return data.getQueryParameter(str);
        }
        return null;
    }
}
