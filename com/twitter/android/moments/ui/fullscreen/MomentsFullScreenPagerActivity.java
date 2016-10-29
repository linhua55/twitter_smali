package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.ViewGroup;
import com.twitter.android.moments.data.ae;
import com.twitter.android.moments.data.ao;
import com.twitter.android.moments.data.aq;
import com.twitter.android.moments.data.ay;
import com.twitter.android.moments.data.bo;
import com.twitter.android.moments.data.r;
import com.twitter.android.moments.ui.animation.MomentsActivityTransition;
import com.twitter.android.moments.ui.animation.m;
import com.twitter.android.moments.ui.b;
import com.twitter.android.sn;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.d;
import com.twitter.library.provider.di;
import com.twitter.ui.widget.touchintercept.TouchInterceptingFrameLayout;
import com.twitter.util.collection.x;
import com.twitter.util.object.e;
import defpackage.acx;
import defpackage.acy;
import defpackage.afo;
import defpackage.bmf;
import defpackage.byi;
import defpackage.cqj;
import defpackage.cql;
import defpackage.crm;
import defpackage.cun;
import defpackage.cvn;
import defpackage.cym;
import defpackage.dbd;

/* compiled from: Twttr */
public class MomentsFullScreenPagerActivity extends TwitterFragmentActivity {
    private bt a;
    private ViewGroup b;
    private ViewGroup c;
    private crm d;
    private an e;
    private b f;
    private ay g;
    private bo h;
    private acx i;

    public static Intent a(Context context, long j) {
        Intent intent = new Intent(context, MomentsFullScreenPagerActivity.class);
        intent.putExtra("extra_moment_id", j);
        return intent;
    }

    public static Intent b(Context context, long j) {
        return a(context, j).putExtra("extra_should_resume_user", true);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969021);
        tVar.d(true);
        return super.a(bundle, tVar);
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.e = new an(this);
        if (bundle == null) {
            setRequestedOrientation(1);
        }
        this.b = (ViewGroup) findViewById(2131952770);
        this.c = (ViewGroup) findViewById(2131952769);
        if (cql.a(getIntent()) && bundle == null) {
            cqj a = MomentsActivityTransition.a(this, getIntent(), this.c);
            this.d = new crm(this, this.b, a);
        }
        Session ab = ab();
        long g = ab.g();
        di a2 = di.a((Context) this, g);
        byi byi = new byi(this, a2, g);
        sn aqVar = new aq(c(), null, byi, new cvn(dbd.d()), cym.a());
        TouchInterceptingFrameLayout touchInterceptingFrameLayout = (TouchInterceptingFrameLayout) findViewById(2131952424);
        Intent intent = getIntent();
        if (intent.hasExtra("extra_moment_id")) {
            x a3;
            long longExtra = intent.getLongExtra("extra_moment_id", -1);
            bmf bmf = new bmf(getApplication(), ab);
            this.g = ay.a(bmf);
            this.h = bo.a(this.g, bmf, a2);
            ae.a(byi, longExtra);
            ao.a(byi, longExtra);
            r rVar = new r();
            this.f = new b(this);
            bn bnVar = new bn();
            this.i = acy.a((Context) this);
            b a4 = b.a(this, byi);
            TouchInterceptingFrameLayout touchInterceptingFrameLayout2 = touchInterceptingFrameLayout;
            sn snVar = aqVar;
            Bundle bundle2 = bundle;
            this.a = new bt(this, touchInterceptingFrameLayout2, snVar, aa(), g, a2, this, longExtra, bnVar, this.f, rVar, bundle2, this.d, this.h, this.i, new afo(this), a4, this.e, ao.a((FragmentActivity) this));
            if (!intent.hasExtra("extra_initial_page_number")) {
                if (intent.getBooleanExtra("extra_should_resume_user", false)) {
                    a3 = x.a();
                    this.a.a(a3);
                    m.a((Context) this).a();
                    return;
                }
            }
            a3 = x.a(Integer.valueOf(intent.getIntExtra("extra_initial_page_number", 0)));
            this.a.a(a3);
            m.a((Context) this).a();
            return;
        }
        throw new IllegalArgumentException("Starting full screen pager requires a capsule");
    }

    public void onBackPressed() {
        if (!this.a.a()) {
            super.onBackPressed();
        }
    }

    private Fragment c() {
        return getSupportFragmentManager().findFragmentById(2131952778);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.a.b(z);
    }

    protected void onResume() {
        super.onResume();
        this.a.d();
        if (this.g != null) {
            this.g.b();
        }
    }

    protected void onPause() {
        super.onPause();
        this.a.e();
        if (this.g != null) {
            this.g.a();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        this.a.a(keyEvent);
        return super.dispatchKeyEvent(keyEvent);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.a(bundle);
    }

    protected void onDestroy() {
        this.a.a(isChangingConfigurations());
        cun.a(this.h);
        cun.a(this.i);
        super.onDestroy();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2989) {
            return;
        }
        if (i2 == 3 || i2 == 2) {
            ((an) e.a(this.e)).a(((Long) this.a.c().c(Long.valueOf(getIntent().getLongExtra("extra_moment_id", 0)))).longValue());
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.a.a(configuration);
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 2131034172);
    }
}
