package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import com.twitter.android.client.bm;
import com.twitter.android.client.bn;
import com.twitter.android.util.aq;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.ae;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bgp;
import defpackage.bgq;
import defpackage.bpo;

/* compiled from: Twttr */
public class PhoneVerifyNuxActivity extends PhoneVerifyBaseActivity implements OnClickListener, bn, m {
    private FollowFlowController c;
    private Session d;
    private String e;

    public t a(Bundle bundle, t tVar) {
        this.c = (FollowFlowController) (bundle == null ? getIntent().getParcelableExtra("flow_controller") : bundle.getParcelable("flow_controller"));
        tVar.a(false);
        tVar.a(0);
        tVar.d(this.c.f());
        tVar.b(10);
        if (this.c == null) {
            this.c = new FollowFlowController(null);
        }
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.d = aa().b(getIntent().getStringExtra("account_name"));
        if (bundle == null) {
            bbu.a(new TwitterScribeLog(ab().g()).b(this.c.g(), "enter_phone_verify", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"));
        }
        findViewById(bcx.skip).setVisibility(8);
        Button button = (Button) findViewById(2131952009);
        button.setText(2131363317);
        button.setEnabled(false);
        button.setOnClickListener(this);
        super.b(bundle, tVar);
    }

    public void onResume() {
        super.onResume();
        bm.a((Context) this).a((bn) this);
    }

    public void onPause() {
        super.onPause();
        bm.a((Context) this).b();
    }

    protected void f() {
        this.a = 1;
        this.b = new ManualEntryPinFragment();
        this.b.a(new h().a("nux_flow", true).a("is_seamful_design_enabled", this.c.e()).c());
        getSupportFragmentManager().beginTransaction().add(2131951923, this.b, "manual").addToBackStack("manual").commit();
    }

    protected void h() {
    }

    public void l() {
    }

    public void m() {
    }

    public void U_() {
    }

    public void p() {
        ((ec) ((ec) ((ec) new ec(0).a(2131363308)).d(2131363309)).f(2131362041)).i().a(getSupportFragmentManager());
        b("resend:click");
    }

    public void d(String str) {
        findViewById(2131952009).setEnabled(true);
        this.e = str;
    }

    public void a(String str, int i) {
    }

    protected String af_() {
        return this.c.a();
    }

    public String q() {
        return aq.a(this).a(af_());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_controller", this.c);
    }

    public void onBackPressed() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.c.g(), "enter_phone_verify", BuildConfig.VERSION_NAME, "back_button:click"));
        if (this.c.i()) {
            super.onBackPressed();
        }
    }

    protected void onStop() {
        if (isFinishing()) {
            FollowFlowController.b((Context) this);
        } else if (this.c != null) {
            this.c.a((Context) this);
        }
        super.onStop();
    }

    protected void onStart() {
        super.onStart();
        FollowFlowController.b((Context) this);
    }

    private void r() {
        if (aj.a(af_())) {
            c("complete:failure");
            return;
        }
        b(bgq.a(this, this.d, af_(), this.e, false), 2);
        c("complete:attempt");
    }

    public void onClick(View view) {
        if (view.getId() == 2131952009) {
            bbu.a(new TwitterScribeLog(ab().g()).b(this.c.g(), "enter_phone_verify", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "submit"));
            r();
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i != 0) {
            return;
        }
        if (i2 == -1) {
            String af_ = af_();
            if (aj.b((CharSequence) af_)) {
                b(2131363802);
                b(bgp.a((Context) this, this.d, af_), 1);
                c("begin:attempt");
                b("resend:accept");
                return;
            }
            b("resend:failure");
            return;
        }
        b("resend:cancel");
    }

    public void a(String str) {
        this.e = str;
        r();
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.c.g(), "enter_phone_verify", BuildConfig.VERSION_NAME, str));
    }

    private void c(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.c.g(), "enter_phone_verify", "device_registration", str));
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1) {
            int i2;
            j();
            int[] e = ((bgp) xVar).e();
            if (((aa) xVar.l().b()).b()) {
                i2 = 2131363728;
                c("begin:success");
            } else if (e != null && CollectionUtils.a(e, 285)) {
                i2 = 2131363716;
                c("begin:registered");
            } else if (e == null || !CollectionUtils.a(e, 299)) {
                i2 = 2131363727;
                c("begin:failure");
            } else {
                i2 = 2131363717;
                c("begin:rate_limit");
            }
            Toast.makeText(this, i2, 1).show();
        } else if (i != 2) {
        } else {
            if (((aa) xVar.l().b()).b()) {
                ae.a(this).a(true, true);
                ab N = xVar.N();
                if (N != null) {
                    this.J.a(new bpo((Context) this, N, N.c, N.e));
                }
                c("complete:success");
                this.c.b((Activity) this);
                return;
            }
            e();
            Button button = (Button) findViewById(2131952009);
            if (button != null) {
                button.setEnabled(false);
            }
            Toast.makeText(this, 2131363321, 1).show();
            c("complete:pin_invalid");
        }
    }
}
