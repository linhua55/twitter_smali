package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import com.twitter.android.FlowData.SignupState;
import com.twitter.android.FlowPresenter.Direction;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.client.bm;
import com.twitter.android.dialog.PhoneVerificationDialogFragmentActivity;
import com.twitter.android.smartfollow.SmartFollowFlowActivity;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.android.util.bi;
import com.twitter.android.util.y;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bey;
import defpackage.bgp;
import defpackage.bgq;
import defpackage.bnf;
import defpackage.bng;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class FlowActivity extends TwitterFragmentActivity implements OnClickListener, gc, kn, lh, lx, qj, xv {
    private FlowPresenter a;
    private ProgressDialogFragment b;
    private am c;
    private TwitterButton d;
    private TwitterButton e;
    private y f;
    private View g;
    private View h;
    private AbsFragment i;
    private final m j;

    public FlowActivity() {
        this.j = new fy(this);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        tVar.a(0);
        tVar.d(2130968827);
        tVar.c(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        if (this.a == null) {
            this.a = new gd(this);
        }
        this.f = new y(this);
        if (d.a("signup_js_instrumentation_enabled")) {
            this.f.a((WebView) findViewById(2131952640), bundle);
        }
        this.g = findViewById(2131952482);
        this.h = findViewById(2131952024);
        if (bundle != null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            this.a.b(bundle);
            this.i = (AbsFragment) supportFragmentManager.findFragmentById(2131951923);
        } else {
            Intent intent = getIntent();
            boolean booleanExtra = intent.getBooleanExtra("phone100_signup_first_step_password", false);
            boolean booleanExtra2 = intent.getBooleanExtra("phone100_signup_first_step_add_phone", false);
            List arrayList = new ArrayList();
            FlowData flowData = (FlowData) intent.getParcelableExtra("flow_data");
            if (flowData == null) {
                flowData = new FlowData();
            }
            if (booleanExtra) {
                arrayList.add(new Flow$PasswordEntryStep());
            } else if (booleanExtra2) {
                arrayList.add(new Flow$AddPhoneStep());
            } else {
                arrayList.add(new Flow$NameEntryStep());
            }
            this.a.a(arrayList, flowData);
        }
        if (this.g != null) {
            this.d = (TwitterButton) findViewById(2131952009);
            this.e = (TwitterButton) findViewById(bcx.skip);
            this.e.setOnClickListener(this);
            this.d.setOnClickListener(this);
        }
        this.c = aq.a(this);
        this.c.j();
        qh.a((Activity) this);
    }

    protected void onStart() {
        super.onStart();
        z();
        this.a.a(Direction.Forward);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.a(bundle);
        this.f.a(bundle);
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131952009) {
            b();
        } else if (id == bcx.skip) {
            c();
        }
    }

    private void z() {
        FlowData b = this.a.b();
        if (b.j() == SignupState.SIGN_UP_COMPLETE && aj.a(b.b()) && !b.i()) {
            Session c = aa().c();
            az.a((Context) this).a(new bey((Context) this, c, new w(c.h())), new fz(b));
        }
    }

    public final void a(Flow$Options flow$Options) {
        int i = 0;
        if (this.g != null) {
            if (flow$Options.e) {
                this.g.setVisibility(0);
                if (this.e != null) {
                    if (flow$Options.b) {
                        this.e.setText(flow$Options.c);
                        i(true);
                    } else {
                        i(false);
                    }
                }
                if (this.d != null) {
                    this.d.setVisibility(flow$Options.a ? 0 : 8);
                }
            } else {
                this.g.setVisibility(8);
            }
        }
        if (this.h != null) {
            View view = this.h;
            if (!flow$Options.f) {
                i = 8;
            }
            view.setVisibility(i);
        }
        b(this.a.f());
    }

    public void a(boolean z) {
    }

    public void a(int i) {
        if (this.e != null) {
            this.e.setText(i);
            i(true);
            this.a.a(i, true);
        }
    }

    public boolean t_() {
        return this.d.isEnabled();
    }

    private void i(boolean z) {
        this.e.setVisibility(z ? 0 : 8);
    }

    public void b() {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "form", A(), null, "submit"));
        this.a.d();
    }

    public void f() {
        this.a.a(new Flow$EmailSignupStep(), null);
    }

    public void b(boolean z) {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "form", A(), "settings", "click"));
        startActivity(new Intent(this, AdvancedDiscoSettingsActivity.class).putExtra("extra_is_signup_process", z));
    }

    public void a(String str) {
        this.a.b().b(str);
    }

    public void c(boolean z) {
        FlowData b = this.a.b();
        b.f(null);
        String b2 = b.b();
        if (aj.b((CharSequence) b2)) {
            b(2131363802);
            az.a((Context) this).a(new bnf(getApplicationContext(), ab(), b2), z ? 3 : 1, new qi(this, b.h()));
            return;
        }
        this.a.a(new gb(null, null, getString(2131363791), null, null, null));
    }

    public void b(String str) {
        b(2131363314);
        FlowData b = this.a.b();
        az.a((Context) this).a(new bng(getApplicationContext(), ab(), b.b(), str), 2, new qi(this, b.h()));
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "phone_verification", A(), "complete", "attempt"));
    }

    public void c() {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "form", A(), null, "skip"));
        this.a.e();
    }

    public void u_() {
        this.a.b(Direction.Forward);
    }

    public void onBackPressed() {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "form", A(), null, "back"));
        this.a.a();
    }

    public void o() {
        this.a.a();
    }

    public void a(Flow$Step flow$Step, Direction direction, Bundle bundle) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (this.i == null || !this.i.getTag().equals(flow$Step.c())) {
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            if (this.i != null) {
                if (direction == Direction.Forward) {
                    beginTransaction.detach(this.i);
                } else {
                    beginTransaction.remove(this.i);
                }
            }
            Fragment a = flow$Step.a(getSupportFragmentManager());
            if (a != null) {
                beginTransaction.attach(a);
            } else {
                Fragment a2 = flow$Step.a(new h(bundle));
                beginTransaction.add(2131951923, a2, flow$Step.c());
                flow$Step.a((AbsFragment) a2);
                a = a2;
            }
            beginTransaction.commitAllowingStateLoss();
            supportFragmentManager.executePendingTransactions();
            bbu.a(new TwitterScribeLog(ab().g()).b(flow$Step.c, "form", A(), null, "impression"));
            this.i = (AbsFragment) a;
            return;
        }
        flow$Step.a(this.i);
    }

    public void h() {
        finish();
    }

    public void a(gb gbVar) {
        this.a.a(gbVar);
    }

    public void c(String str) {
        this.a.b().a(str);
    }

    public void i() {
        boolean k = this.a.b().k();
        boolean l = this.a.b().l();
        if (!k) {
            startActivity(SmartFollowFlowActivity.a((Context) this));
        } else if (ContactsUploadService.a((Context) this, "welcome", l)) {
            startActivity(SmartFollowFlowActivity.a((Context) this));
        } else {
            startActivity(SmartNuxContactsUploadHelperActivity.a(this));
        }
    }

    public void a(SignupState signupState) {
        this.a.b().a(signupState);
    }

    public boolean j() {
        return !this.a.b().g();
    }

    public String T_() {
        return this.a.c();
    }

    private String A() {
        return qh.a(this.a.b().h());
    }

    public void l() {
    }

    public void m() {
    }

    public void U_() {
        this.a.b().f(null);
        bm.a((Context) this).a();
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "phone_verification", A(), "manual_entry", "click"));
        this.a.b(Direction.Forward);
    }

    public void p() {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "phone_verification", A(), "resend", "click"));
        w();
    }

    public void d(String str) {
    }

    public void a(String str, int i) {
        if (i == 0) {
            this.a.b().f(str);
            bm.a((Context) this).a();
            this.a.b(Direction.Forward);
        }
    }

    public String q() {
        return aq.a(this).a(this.a.b().b());
    }

    public void r() {
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "form", A(), "use_phone_instead", "click"));
        this.a.a(new Flow$PhoneSignupStep(), null);
    }

    public void e(String str) {
        this.a.b().c(str);
    }

    public void s() {
        FlowData b = this.a.b();
        String d = b.d();
        if (aj.b((CharSequence) d)) {
            b.b(true);
            a(null, d);
            return;
        }
        gb gbVar = new gb(null, getString(2131363785), null, null, null, null);
        b.c(null);
        this.a.a(gbVar);
    }

    public void t() {
        FlowData b = this.a.b();
        String b2 = b.b();
        if (aj.b((CharSequence) b2)) {
            b.b(false);
            a(b2, null);
            return;
        }
        gb gbVar = new gb(null, null, getString(2131363791), null, null, null);
        b.b(null);
        this.a.a(gbVar);
    }

    private void a(String str, String str2) {
        b(2131363782);
        String a = qh.a();
        FlowData b = this.a.b();
        b.d(a);
        aa().a(b.a(), null, str2, a, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, new qi(this, b.h()), str, this.f.a());
    }

    protected void u() {
        FlowData b = this.a.b();
        Intent putExtra = new Intent(this, LoginActivity.class).putExtra("password", b.e());
        if (b.g()) {
            putExtra.putExtra("screen_name", b.d());
        } else {
            putExtra.putExtra("screen_name", b.b());
        }
        startActivity(putExtra);
        finish();
    }

    public void b(int i) {
        if (this.b == null) {
            this.b = ProgressDialogFragment.a(i);
            this.b.setRetainInstance(true);
            this.b.a(getSupportFragmentManager(), null);
        }
    }

    public void v() {
        if (this.b != null) {
            this.b.dismissAllowingStateLoss();
            this.b = null;
        }
    }

    public void d(boolean z) {
        FlowData b = this.a.b();
        String b2 = b.b();
        if (aj.b((CharSequence) b2)) {
            b(2131363802);
            x a = bgp.a((Context) this, ab(), b2);
            if (this.c.a()) {
                a.g();
            }
            az.a((Context) this).a(a, z ? 5 : 4, new qi(this, b.h()));
            return;
        }
        this.a.a(new gb(null, null, getString(2131363791), null, null, null));
    }

    public void f(String str) {
        FlowData b = this.a.b();
        CharSequence b2 = b.b();
        if (aj.b(b2)) {
            b(2131363802);
            x a = bgq.a(this, ab(), b2, str, false);
            if (this.c.a()) {
                a.g();
            }
            az.a((Context) this).a(a, 6, new qi(this, b.h()));
        }
        bbu.a(new TwitterScribeLog(ab().g()).b(T_(), "phone_verification", A(), "complete", "attempt"));
    }

    public void w() {
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) new ec(1).a(2131363304)).c(2131427349)).i().a(this.j);
        promptDialogFragment.setRetainInstance(true);
        promptDialogFragment.a(getSupportFragmentManager());
    }

    public void x() {
        FlowData b = this.a.b();
        b.b((Context) this);
        b.a((Context) this);
    }

    public void g(String str) {
        setResult(-1, new Intent().putExtra("AbsFragmentActivity_account_name", str));
    }

    public void e(boolean z) {
        this.a.b().d(z);
    }

    public void f(boolean z) {
        this.a.b().e(z);
    }

    public void g(boolean z) {
        this.a.a(z);
    }

    public void h(String str) {
        this.a.b().d(str);
    }

    public void a(State state, Level level) {
        a(new ValidationState(state, level));
    }

    public void a(ValidationState validationState) {
        this.a.a(validationState);
        b(validationState);
    }

    public ValidationState e() {
        return this.a.f();
    }

    private void b(ValidationState validationState) {
        if (bi.a(this).b() || validationState.b == Level.LOCAL) {
            this.d.setEnabled(validationState.a());
        } else {
            this.d.setEnabled(true);
        }
    }

    public void y() {
        startActivityForResult(new Intent(this, PhoneVerificationDialogFragmentActivity.class).putExtra(PhoneVerificationDialogFragmentActivity.b, true).putExtra(PhoneVerificationDialogFragmentActivity.c, true), 1);
        bbu.a(new TwitterScribeLog(ab().g()).b("signup", "phone100", "sspc", null, "begin"));
    }

    public void i(String str) {
        this.a.b().e(str);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            FlowData b = this.a.b();
            b.f(true);
            b.a((Context) this);
            bbu.a(new TwitterScribeLog(ab().g()).b("signup", "phone100", "sspc", null, "finish"));
        }
    }
}
