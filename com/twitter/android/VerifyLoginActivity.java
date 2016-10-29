package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.bg;
import com.twitter.library.client.bk;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.account.LoginVerificationRequiredResponse;
import defpackage.bbu;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class VerifyLoginActivity extends TwitterFragmentActivity implements OnClickListener {
    String a;
    private ProgressDialogFragment b;
    private LoginVerificationRequiredResponse c;
    private Handler d;
    private Button e;
    private Button f;
    private TextView g;
    private EditText h;
    private int i;
    private long j;
    private String k;
    private String l;
    private Session m;
    private final bk n;

    public VerifyLoginActivity() {
        this.n = new xy(this);
    }

    public t a(Bundle bundle, t tVar) {
        this.c = (LoginVerificationRequiredResponse) getIntent().getParcelableExtra("login_verification_required_response");
        this.i = this.c.c;
        tVar.a(false);
        tVar.c(false);
        tVar.b(false);
        if (this.i == 2) {
            tVar.d(2130969515);
        } else {
            tVar.d(2130969516);
        }
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.d = new Handler();
        this.h = (EditText) findViewById(2131953358);
        Button button = (Button) findViewById(2131953360);
        this.f = button;
        this.g = (TextView) findViewById(2131953357);
        this.e = (Button) findViewById(2131953359);
        this.h.addTextChangedListener(new xw(this, button));
        button.setOnClickListener(this);
        if (this.e != null) {
            this.e.setOnClickListener(this);
        }
        if (this.i == 1) {
            f();
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:sms_verification:::impression"));
        } else {
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:push_verification:::impression"));
        }
        TextView textView = (TextView) findViewById(2131953361);
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        textView.setOnClickListener(this);
        this.j = 2000;
        Intent intent = getIntent();
        this.k = intent.getStringExtra(UsernameError.USERNAME_ERROR_FIELD);
        bg aa = aa();
        if (bundle != null) {
            this.a = bundle.getString("reqId");
            aa.a(this.a, this.n);
            this.l = bundle.getString("session_id");
            return;
        }
        this.l = intent.getStringExtra("session_id");
    }

    public void onResume() {
        super.onResume();
        bg aa = aa();
        this.m = aa.c(this.l);
        if (this.m == null) {
            this.m = aa.a(this.k);
            this.l = this.m.c();
        }
        this.j = 2000;
        if (this.i == 2) {
            this.d.postDelayed(new xx(), this.j);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("reqId", this.a);
        bundle.putString("session_id", this.l);
    }

    protected void onDestroy() {
        super.onDestroy();
        aa().e(this.a);
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953360) {
            e();
            if (this.i == 1) {
                bbu.a(new TwitterScribeLog(ab().g()).b("native_login:sms_verification:login_code::send"));
                return;
            }
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:push_verification:backup_code::send"));
        } else if (id == 2131953359) {
            f();
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:push_verification::enter_code_button:click"));
        } else if (id == 2131953361) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131364324))));
        }
    }

    public void onBackPressed() {
        c();
        super.onBackPressed();
    }

    public boolean a(ac acVar) {
        if (acVar.a() == k.home) {
            c();
        }
        return super.a(acVar);
    }

    private void c() {
        if (this.i == 1) {
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:sms_verification::back_button:click"));
        } else {
            bbu.a(new TwitterScribeLog(ab().g()).b("native_login:push_verification::back_button:click"));
        }
        if (this.m != null) {
            this.m.a(LoginStatus.LOGGED_OUT);
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    private void e() {
        this.b = ProgressDialogFragment.a(2131364139);
        this.b.a(getSupportFragmentManager());
        this.a = aa().a(this.m, this.c.a, this.c.b, this.h.getText().toString(), this.n);
    }

    private void f() {
        if (!(this.e == null || this.g == null)) {
            this.e.setVisibility(8);
            this.g.setVisibility(0);
        }
        this.h.setVisibility(0);
        this.f.setVisibility(0);
    }

    private void a(String str, int i, int i2) {
        if (i2 == 88) {
            bbu.a(new TwitterScribeLog(ab().g()).b(str + "::rate_limit"));
        }
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ab().g()).b(str + "::failure")).f(String.valueOf(i))).d(String.valueOf(i2)));
    }
}
