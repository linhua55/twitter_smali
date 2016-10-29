package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bex;
import defpackage.bgm;
import defpackage.bgr;
import defpackage.bgs;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class PhoneOwnershipActivity extends TwitterFragmentActivity implements lu, lw {
    private ProgressDialogFragment a;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969174);
        tVar.c(true);
        tVar.a(false);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Session ab = ab();
        if (ab != null && ab.j() == null) {
            az.a((Context) this).a(bex.a((Context) this, ab), null);
        }
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(2131951923, new PhoneOwnershipBeginFragment()).commit();
        }
    }

    public void onBackPressed() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(2131951923);
        if (findFragmentById != null) {
            if (findFragmentById instanceof PhoneOwnershipBeginFragment) {
                bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_phone::back:click"));
            } else if (findFragmentById instanceof PhoneOwnershipCompleteFragment) {
                bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code::back:click"));
            }
        }
        super.onBackPressed();
    }

    public void a(String str) {
        if (this.a == null) {
            this.a = ProgressDialogFragment.a(2131363605);
            this.a.setRetainInstance(true);
            this.a.a(getSupportFragmentManager());
        }
        b(new bgr(this, ab(), str), 0);
    }

    public void a(String str, String str2) {
        if (this.a == null) {
            this.a = ProgressDialogFragment.a(2131364138);
            this.a.setRetainInstance(true);
            this.a.a(getSupportFragmentManager());
        }
        b(new bgs(this, ab(), str).a(str2), 2);
    }

    public void b(String str) {
        b(new bgr(this, ab(), str), 1);
    }

    private void a(int[] iArr, boolean z) {
        String str;
        int i;
        if (z) {
            str = "resend_code";
        } else {
            str = "verify_begin";
        }
        if (CollectionUtils.a(iArr, 285)) {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_phone:" + str + "::failure"));
            i = 2131363279;
        } else if (CollectionUtils.a(iArr, 295)) {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_phone:" + str + "::rate_limit"));
            i = 2131363832;
        } else {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_phone:" + str + "::error"));
            i = 2131363280;
        }
        Toast.makeText(this, i, 0).show();
    }

    private void a(int[] iArr) {
        int i;
        if (CollectionUtils.a(iArr, 294)) {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:verify_complete::error"));
            i = 2131363831;
        } else if (CollectionUtils.a(iArr, 295)) {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:verify_complete::rate_limit"));
            i = 2131363832;
        } else {
            bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:verify_complete::failure"));
            i = 2131363830;
        }
        Toast.makeText(this, i, 0).show();
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar = (aa) xVar.l().b();
        if (this.a != null) {
            this.a.dismiss();
            this.a = null;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (aaVar.b()) {
                    bgr bgr = (bgr) xVar;
                    bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_phone:verify_begin::success"));
                    a(bgr.b(), bgr.h());
                    return;
                }
                a(((bgm) xVar).e(), false);
            case WireMessage.WIRE_CHAT /*1*/:
                TextView textView = (TextView) findViewById(2131953039);
                if (textView != null) {
                    textView.setText(2131363289);
                    textView.setEnabled(true);
                }
                if (aaVar.b()) {
                    bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:resend_code::success"));
                    return;
                }
                a(((bgm) xVar).e(), true);
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!aaVar.b()) {
                    a(((bgm) xVar).e());
                } else if (((bgs) xVar).h()) {
                    bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:verify_complete::success"));
                    Toast.makeText(this, 2131363301, 0).show();
                    finish();
                } else {
                    bbu.a(new TwitterScribeLog(ab().g()).b("unlock_account", "enter_code:verify_complete::error"));
                    Toast.makeText(this, 2131363831, 0).show();
                }
            default:
        }
    }

    private void a(String str, boolean z) {
        Fragment phoneOwnershipCompleteFragment = new PhoneOwnershipCompleteFragment();
        phoneOwnershipCompleteFragment.a(new h().b("phone_number", str).a("is_numeric", z).c());
        getSupportFragmentManager().beginTransaction().replace(2131951923, phoneOwnershipCompleteFragment).addToBackStack(null).commitAllowingStateLoss();
    }
}
