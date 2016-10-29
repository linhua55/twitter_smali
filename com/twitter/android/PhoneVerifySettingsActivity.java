package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.android.client.bm;
import com.twitter.android.client.bn;
import com.twitter.android.settings.AccountActivity;
import com.twitter.android.util.aq;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.ae;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.bgq;
import defpackage.bpo;

/* compiled from: Twttr */
public class PhoneVerifySettingsActivity extends PhoneVerifyBaseActivity implements bn, m {
    private Session c;
    private String d;
    private boolean e;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.c = aa().b(intent.getStringExtra("account_name"));
        this.d = intent.getStringExtra("phone");
        this.e = intent.getBooleanExtra("update_phone", false);
    }

    public void onResume() {
        super.onResume();
        bm.a((Context) this).a((bn) this);
    }

    public void onPause() {
        super.onPause();
        bm.a((Context) this).b();
    }

    public g i() {
        return new h().a("settings_add_phone", !this.e).a("settings_update_phone", this.e).c();
    }

    protected void f() {
        super.f();
        c("::impression");
    }

    protected void h() {
        super.h();
        c("::impression");
    }

    public void l() {
    }

    public void m() {
    }

    public void U_() {
        bm.a((Context) this).a();
        c(":manual_entry:click");
        f();
    }

    public void p() {
        ((ec) ((ec) ((ec) new ec(0).a(2131363308)).d(2131363309)).f(2131362041)).i().a(getSupportFragmentManager());
        c(":resend:click");
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i != 0) {
            return;
        }
        if (i2 == -1) {
            b(bgp.a((Context) this, this.c, af_()), 1);
            c(":resend:accept");
            e("begin:attempt");
            return;
        }
        c(":resend:cancel");
    }

    public void d(String str) {
        b(str);
    }

    public void a(String str, int i) {
    }

    protected String af_() {
        return this.d;
    }

    public String q() {
        return aq.a(this).a(this.d);
    }

    public void a(String str) {
        b(str);
    }

    private void b(String str) {
        b(2131363802);
        b(bgq.a(this, this.c, af_(), str, false, this.e), 2);
        e("complete:attempt");
    }

    private void c(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b("phone_association:" + r() + ":" + str));
    }

    private void e(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b("phone_association:" + r() + ":device_registration:" + str));
    }

    private String r() {
        if (this.a == 0) {
            return "waiting_screen";
        }
        return "pin_entry";
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1) {
            int i2;
            j();
            int[] e = ((bgp) xVar).e();
            if (((aa) xVar.l().b()).b()) {
                i2 = 2131363728;
                e("begin:success");
            } else if (e != null && CollectionUtils.a(e, 285)) {
                i2 = 2131363716;
                e("begin:registered");
            } else if (e == null || !CollectionUtils.a(e, 299)) {
                i2 = 2131363727;
                e("begin:failure");
            } else {
                i2 = 2131363717;
                e("begin:rate_limit");
            }
            Toast.makeText(this, i2, 1).show();
        } else if (i == 2) {
            j();
            if (((aa) xVar.l().b()).b()) {
                ae.a(this).a(true, true);
                ab N = xVar.N();
                if (N != null) {
                    this.J.a(new bpo((Context) this, N, N.c, N.e));
                }
                startActivity(new Intent(this, AccountActivity.class).putExtra("phone_association", af_()).putExtra("extra_account_id", N.c).putExtra("update_phone", this.e).setFlags(67108864));
                if (getIntent().getBooleanExtra("umf_flow", false)) {
                    setResult(-1);
                    finish();
                }
                e("complete:success");
                return;
            }
            e();
            Toast.makeText(this, 2131363321, 1).show();
            e("complete:pin_invalid");
        }
    }
}
