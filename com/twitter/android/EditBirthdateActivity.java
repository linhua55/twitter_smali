package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import android.widget.Toast;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.model.profile.b;
import com.twitter.util.ab;
import defpackage.bbu;
import defpackage.vl;
import defpackage.vm;
import defpackage.vn;
import defpackage.vo;
import defpackage.vp;
import defpackage.vq;
import defpackage.vr;
import defpackage.vs;
import defpackage.vu;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EditBirthdateActivity extends TwitterFragmentActivity implements OnDateChangedListener, m, vn, vo {
    private vp a;
    private vl b;
    private Visibility c;
    private Visibility d;
    private boolean e;
    private boolean f;
    private long g;
    private boolean h;
    private ExtendedProfile i;
    private TwitterScribeAssociation j;

    public void b(Bundle bundle, t tVar) {
        boolean z = false;
        this.g = getIntent().getLongExtra("created_at", 0);
        this.h = getIntent().getBooleanExtra("is_user_verified", false);
        if (bundle == null) {
            this.i = (ExtendedProfile) ab.a(getIntent(), "birthdate_extended_profile", ExtendedProfile.a);
        } else {
            this.i = (ExtendedProfile) ab.a(bundle, "birthdate_extended_profile", ExtendedProfile.a);
            this.e = bundle.getBoolean("changes_made");
            this.f = bundle.getBoolean("birthdate_show");
        }
        vs b = new vu().a((Context) this).a(new em(this)).b(new el(this)).c(new ek(this)).b();
        this.b = new vl(new vm(getWindow().getDecorView()), this, this);
        this.a = new vq(this.b, b);
        a(!this.f);
        if (this.f || this.i == null || !this.i.a()) {
            z = true;
        }
        b(z);
        l();
        if (this.i == null || !this.i.a()) {
            this.b.c(4);
        }
        this.j = (TwitterScribeAssociation) new TwitterScribeAssociation().b("edit_profile");
        m();
        setTitle(2131362041);
    }

    private void a(boolean z) {
        if (z && this.i != null && this.i.a()) {
            this.a.a(this.i.c, this.i.d, this.i.e);
        } else {
            this.a.a();
        }
    }

    private void l() {
        this.a.b();
    }

    private void b(boolean z) {
        this.a.a(this.g, z);
        this.f = z;
    }

    private void m() {
        if (this.i == null || !this.i.a()) {
            this.a.a((OnDateChangedListener) this, this.h);
            return;
        }
        this.d = this.i.f;
        this.c = this.i.g;
        this.a.a(this.d, this.c, this.i.e, this.i.d, this.i.c, this);
        this.c = this.a.a(this.i.e, this.i.d, this.i.c, this.c);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968786);
        tVar.a(true);
        tVar.b(12);
        return tVar;
    }

    public boolean a(w wVar) {
        wVar.a(2132017197);
        return true;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        Object r = r();
        String str = "birthdate_extended_profile";
        if (!r.a()) {
            r = this.i;
        }
        ab.a(bundle, str, r, ExtendedProfile.a);
        bundle.putSerializable("changes_made", Boolean.valueOf(this.e));
        bundle.putSerializable("birthdate_show", Boolean.valueOf(this.f));
        super.onSaveInstanceState(bundle);
    }

    public void onBackPressed() {
        if (this.e) {
            a();
        } else {
            super.onBackPressed();
        }
    }

    public boolean a(ac acVar) {
        String str = null;
        int a = acVar.a();
        if (a == 2131953439) {
            if (s()) {
                Intent intent = new Intent();
                ab.a(intent, "birthdate_extended_profile", r(), ExtendedProfile.a);
                setResult(-1, intent);
                TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(ab().g()).b(TwitterScribeLog.a(this.j, null, "confirm_change_birthday", "ok"));
                if (this.i != null) {
                    str = String.valueOf(this.i.b);
                }
                bbu.a(twitterScribeLog.j(str));
                finish();
            } else {
                Toast.makeText(this, 2131362594, 0).show();
            }
        } else if (a == k.home) {
            if (this.e) {
                a();
            } else {
                finish();
            }
        }
        return true;
    }

    private ExtendedProfile r() {
        return (ExtendedProfile) new b().a(this.i != null ? this.i.i : null).a(this.d).b(this.c).a(this.b.a()).b(this.b.b() + 1).c(this.b.c()).q();
    }

    protected void a() {
        ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131362590)).b(2131361844)).d(2131362419)).f(2131362041)).i().a(getSupportFragmentManager());
    }

    private boolean s() {
        return (this.d == null || this.c == null) ? false : true;
    }

    public void c() {
        ((ec) ((ec) ((ec) new ec(2).b(2131362593)).d(2131363218)).f(2131362041)).i().a(getSupportFragmentManager());
    }

    public void L_() {
        this.e = true;
        this.b.d();
    }

    public void e() {
        this.e = true;
        this.b.e();
    }

    public void f() {
        ((ec) ((ec) ((ec) new ec(3).b(2131362591)).d(2131362589)).f(2131362592)).i().a(getSupportFragmentManager());
    }

    public void M_() {
        vr.a((Context) this);
    }

    public void i() {
        this.e = true;
        this.b.d();
    }

    public void j() {
        this.e = true;
        this.b.e();
    }

    public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
        this.e = true;
        this.c = this.a.a(i, i2, i3, this.c);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        String str = null;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    setResult(0);
                    TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(ab().g()).b(TwitterScribeLog.a(this.j, null, "confirm_change_birthday", "cancel"));
                    if (this.i != null) {
                        str = String.valueOf(this.i.b);
                    }
                    bbu.a(twitterScribeLog.j(str));
                    finish();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    setResult(2);
                    finish();
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    this.b.b(0);
                    this.b.a(8);
                    this.f = true;
                }
            default:
        }
    }
}
