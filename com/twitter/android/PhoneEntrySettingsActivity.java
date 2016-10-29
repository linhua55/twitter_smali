package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.android.client.bm;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bgp;
import defpackage.bon;
import defpackage.bpn;
import defpackage.chs;
import java.util.List;

/* compiled from: Twttr */
public class PhoneEntrySettingsActivity extends PhoneEntryBaseActivity {
    private String f;
    private Session g;
    private Long h;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.f = getIntent().getStringExtra("account_name");
        this.g = aa().b(this.f);
        this.h = Long.valueOf(this.g.g());
        findViewById(bcx.skip).setVisibility(8);
        if (bundle == null) {
            i();
        }
    }

    private void i() {
        if (getIntent().getBooleanExtra("verify_phone", false)) {
            b(new bon(this, this.g, true, false), 3);
        }
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.b(false);
        return a;
    }

    public void o() {
        super.onBackPressed();
    }

    public void c() {
    }

    public void b() {
        String a = this.a.a(this.a.b(e()));
        if (a != null) {
            this.c.i().e();
            b(2131363802);
            b(bgp.a(this, this.g, a, this.d), 1);
        } else {
            this.c.i().setError(2131363276);
        }
        b("begin:attempt");
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(this.g.g()).b("phone_association:add_phone:device_registration:" + str));
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 3) {
            bon bon = (bon) xVar;
            if (bon.U()) {
                List<bpn> b = bon.e().b();
                if (b.isEmpty()) {
                    this.c.a(this.a.h(), true);
                } else {
                    for (bpn bpn : b) {
                        if (bpn.b().booleanValue()) {
                            Toast.makeText(this, 2131364137, 0).show();
                            finish();
                        } else {
                            c(bpn.a());
                        }
                    }
                }
                d("email_phone_info::success");
                return;
            }
            int[] b2 = bon.b();
            if (b2 == null || !CollectionUtils.a(b2, 88)) {
                d("email_phone_info::generic");
            } else {
                d("email_phone_info::rate_limit");
            }
        } else if (i == 1) {
            h();
            bgp bgp = (bgp) xVar;
            chs s = bgp.s();
            int[] e = bgp.e();
            if (s != null && bgp.U()) {
                bm.a((Context) this).a("add_phone");
                Intent putExtra = new Intent(this, PhoneVerifySettingsActivity.class).putExtra("liveFragment", 0).putExtra("phone", s.a).putExtra("account_name", this.f).putExtra("update_phone", this.d);
                if (getIntent().getBooleanExtra("umf_flow", false)) {
                    putExtra.putExtra("umf_flow", true);
                    startActivityForResult(putExtra, 2);
                } else {
                    startActivity(putExtra);
                }
                b("begin:success");
            } else if (e != null && CollectionUtils.a(e, 285)) {
                Toast.makeText(this, 2131363716, 1).show();
                b("begin:registered");
            } else if (e == null || !CollectionUtils.a(e, 299)) {
                Toast.makeText(this, 2131363265, 1).show();
                b("begin:failure");
            } else {
                Toast.makeText(this, 2131363717, 1).show();
                b("begin:rate_limit");
            }
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2 && i2 == -1) {
            finish();
        }
    }

    private void c(String str) {
        this.c.a(str);
    }

    private void d(String str) {
        bbu.a(new TwitterScribeLog(this.h.longValue()).b("settings:phone:" + str));
    }
}
