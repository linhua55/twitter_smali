package com.twitter.android.smartfollow.interestsearch;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.twitter.android.interestpicker.aw;
import com.twitter.android.interestpicker.f;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.ab;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public class InterestSearchActivity extends TwitterFragmentActivity {
    private InterestSearchFragment a;
    private String b;

    public t a(Bundle bundle, t tVar) {
        tVar.c(true);
        tVar.b(false);
        tVar.a(false);
        tVar.d(2130968935);
        return tVar;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017166);
        return true;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        setTitle(2131362832);
        long longExtra = getIntent().getLongExtra("extra_parent_id", -1);
        this.b = (String) e.a(getIntent().getStringExtra("extra_scribe_page"));
        if (bundle == null) {
            this.a = new InterestSearchFragment();
            this.a.a(new f().a(longExtra).a(this.b).a());
            getSupportFragmentManager().beginTransaction().add(2131951923, this.a).commit();
        } else {
            this.a = (InterestSearchFragment) getSupportFragmentManager().findFragmentById(2131951923);
        }
        a("impression", false);
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953437) {
            return super.a(acVar);
        }
        c();
        Intent intent = new Intent();
        ab.a(intent, "extra_search_terms", this.a.c(), s.a(aw.e));
        setResult(-1, intent);
        a("done", true);
        finish();
        return true;
    }

    private void c() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            r.b(this, currentFocus, false);
        }
    }

    public void onBackPressed() {
        c();
        a("back", true);
        super.onBackPressed();
    }

    public void o() {
        c();
        a("back", true);
        super.onBackPressed();
    }

    private void a(String str, boolean z) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(this.b, "smart_follow_flow", "interest_picker_search", null, str);
        if (z) {
            bbw.a(f.b(this.a.c()));
        }
        bbu.a(bbw);
    }
}
