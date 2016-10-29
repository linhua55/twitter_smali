package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.Toast;
import com.twitter.app.common.base.t;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.chs;

/* compiled from: Twttr */
public class PhoneEntryNuxActivity extends PhoneEntryBaseActivity {
    private FollowFlowController f;

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.b(10);
        this.f = (FollowFlowController) (bundle == null ? getIntent().getParcelableExtra("flow_controller") : bundle.getParcelable("flow_controller"));
        if (this.f == null) {
            this.f = new FollowFlowController(null);
        }
        a.d(this.f.f());
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        if (bundle == null) {
            bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::impression"));
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_controller", this.f);
    }

    public void c() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::skip"));
        this.f.b((Activity) this);
    }

    public void b() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::submit"));
        CharSequence e = e();
        if (aj.b(e)) {
            String a = this.a.a(this.a.b(e));
            if (a != null) {
                this.c.i().e();
                bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::success"));
                b(2131363802);
                b(bgp.a((Context) this, ab(), a), 1);
                return;
            }
            bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::error"));
            this.c.i().setError(2131363276);
            return;
        }
        bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone:::unavailable"));
        this.c.i().setError(2131363265);
    }

    protected void onStop() {
        if (isFinishing()) {
            FollowFlowController.b((Context) this);
        } else if (this.f != null) {
            this.f.a((Context) this);
        }
        super.onStop();
    }

    protected void onStart() {
        super.onStart();
        FollowFlowController.b((Context) this);
    }

    public void onBackPressed() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone", BuildConfig.VERSION_NAME, "back_button:click"));
        if (this.f.i()) {
            super.onBackPressed();
        }
    }

    protected void onResume() {
        super.onResume();
        this.f.c("phone_verify");
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.f.g(), "enter_phone", "device_registration", "begin", str));
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1) {
            h();
            chs s = ((bgp) xVar).s();
            String str = s == null ? null : s.a;
            int[] e = ((bgp) xVar).e();
            if (xVar.U() && aj.b((CharSequence) str)) {
                b("success");
                this.f.a(str).b("phone_verify");
                this.f.b((Activity) this);
            } else if (e != null && CollectionUtils.a(e, 285)) {
                Toast.makeText(this, 2131363716, 1).show();
                b("registered");
            } else if (e == null || !CollectionUtils.a(e, 299)) {
                this.c.i().setError(2131363265);
                b("failure");
            } else {
                Toast.makeText(this, 2131363717, 1).show();
                b("rate_limit");
            }
        }
    }
}
