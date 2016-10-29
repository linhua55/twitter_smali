package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.util.aj;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class PhoneEntryBaseActivity extends TwitterFragmentActivity implements OnClickListener, kn, lh {
    protected am a;
    protected Button b;
    protected PhoneEntryFragment c;
    protected boolean d;
    protected String e;
    private ProgressDialogFragment f;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968828);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.e = getIntent().getStringExtra("current_phone");
        boolean z = getIntent().getBooleanExtra("update_phone", false) && aj.b(this.e);
        this.d = z;
        this.b = (Button) findViewById(2131952009);
        if (this.d) {
            setTitle(2131363750);
            this.b.setText(2131363750);
        } else {
            setTitle(2131363266);
            this.b.setText(2131361869);
        }
        findViewById(bcx.skip).setOnClickListener(this);
        a(true);
        this.b.setOnClickListener(this);
        this.a = aq.a(this);
        if (bundle == null) {
            Fragment phoneEntryFragment = new PhoneEntryFragment();
            h a = new h().a("is_from_umf", getIntent().getBooleanExtra("umf_flow", false)).a("nux_seamful_design_enabled", getIntent().getBooleanExtra("use_seamful_design", false)).a("is_settings_add_phone", getIntent().getBooleanExtra("add_phone", false)).a("should_prefill_phone", getIntent().getBooleanExtra("should_not_prefill_phone", false));
            if (this.d) {
                a.b("custom_header", getString(2131363729, new Object[]{this.e})).a("is_settings_change_phone", true);
            }
            phoneEntryFragment.a(a.c());
            getSupportFragmentManager().beginTransaction().add(2131951923, phoneEntryFragment).commit();
            this.c = phoneEntryFragment;
            return;
        }
        this.c = (PhoneEntryFragment) getSupportFragmentManager().findFragmentById(2131951923);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case bcx.skip /*2131952005*/:
                c();
            case 2131952009:
                b();
            default:
        }
    }

    public void a(boolean z) {
        this.b.setEnabled(z);
    }

    public void a(int i) {
    }

    public boolean t_() {
        return this.b.isEnabled();
    }

    public void u_() {
    }

    public void f() {
    }

    public void b(boolean z) {
        startActivity(new Intent(this, AdvancedDiscoSettingsActivity.class).putExtra("extra_is_signup_process", z));
    }

    public void a(String str) {
    }

    public void c(boolean z) {
    }

    protected String e() {
        return this.c.j();
    }

    protected void b(int i) {
        if (this.f == null) {
            this.f = ProgressDialogFragment.a(i);
            this.f.setRetainInstance(true);
            this.f.a(getSupportFragmentManager(), null);
        }
    }

    protected void h() {
        if (this.f != null) {
            this.f.dismissAllowingStateLoss();
            this.f = null;
        }
    }
}
