package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;

/* compiled from: Twttr */
public class CategoriesActivity extends TwitterFragmentActivity {
    private boolean a;

    public t a(Bundle bundle, t tVar) {
        boolean z = false;
        this.a = getIntent().getBooleanExtra("onboarding", false);
        if (!this.a) {
            z = true;
        }
        tVar.a(z);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(getString(2131361979));
        if (bundle == null) {
            Fragment categoriesFragment = new CategoriesFragment();
            categoriesFragment.a(((j) j.a(getIntent()).h(false)).b());
            getSupportFragmentManager().beginTransaction().add(2131951923, categoriesFragment).commit();
        }
    }

    public boolean a(w wVar) {
        boolean a = super.a(wVar);
        if (!this.a) {
            return a;
        }
        wVar.a(2132017155);
        return true;
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953416) {
            return super.a(acVar);
        }
        finish();
        return true;
    }
}
