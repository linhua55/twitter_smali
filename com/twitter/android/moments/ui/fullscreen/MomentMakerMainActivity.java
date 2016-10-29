package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.inject.v;
import defpackage.acx;
import defpackage.acy;
import defpackage.cun;

/* compiled from: Twttr */
public class MomentMakerMainActivity extends TwitterFragmentActivity {
    private acx a;
    private de b;

    public t a(Bundle bundle, t tVar) {
        tVar.d(true);
        tVar.d(0);
        return super.a(bundle, tVar);
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        long longExtra = getIntent().getLongExtra("moment_id", 0);
        String stringExtra = getIntent().getStringExtra("page_id");
        this.a = acy.a((Context) this);
        this.b = de.a(this, this.a, longExtra, stringExtra);
        return this.b;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.a != null) {
            cun.a(this.a);
        }
    }

    public void onBackPressed() {
        if (this.b == null || !this.b.d()) {
            super.onBackPressed();
        }
    }
}
