package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class PhoneMTFlowActivity extends TwitterFragmentActivity implements lo {
    public static String a;
    private boolean b;

    static {
        a = "extra_is_blocking";
    }

    public t a(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        boolean z = intent != null && intent.getBooleanExtra(a, false);
        this.b = z;
        tVar.d(2130969174);
        tVar.c(true);
        tVar.a(false);
        tVar.b(false);
        if (this.b) {
            tVar.b(10);
        }
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(2131951923, new PhoneMTEntryFragment()).commit();
        }
    }

    public void a(String str, boolean z) {
        Fragment phoneMTVerifyFragment = new PhoneMTVerifyFragment();
        phoneMTVerifyFragment.a(new h().b("verify_phone_number", str).a("is_verizon", z).c());
        getSupportFragmentManager().beginTransaction().replace(2131951923, phoneMTVerifyFragment).addToBackStack(null).commitAllowingStateLoss();
    }

    public void a() {
        bbu.a(new TwitterScribeLog(ab().g()).b("phone_loggedin_mt", null, null, null, "done"));
        setResult(-1);
        finish();
        Toast.makeText(this, 2131363277, 1).show();
    }

    public void onBackPressed() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(2131951923);
        if (findFragmentById != null) {
            if (findFragmentById instanceof PhoneMTEntryFragment) {
                bbu.a(new TwitterScribeLog(ab().g()).b("phone_loggedin_mt", "enter_phone::back:click"));
                if (this.b) {
                    return;
                }
            } else if (findFragmentById instanceof PhoneMTVerifyFragment) {
                bbu.a(new TwitterScribeLog(ab().g()).b("phone_loggedin_mt", "enter_code::back:click"));
            }
        }
        super.onBackPressed();
    }
}
