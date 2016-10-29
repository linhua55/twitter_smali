package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.util.al;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import com.twitter.internal.network.k;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.ber;

/* compiled from: Twttr */
public class ChangePasswordActivity extends TwitterFragmentActivity implements TextWatcher, OnClickListener, OnFocusChangeListener {
    public boolean a;
    public x b;
    private TwitterEditText c;
    private TwitterEditText d;
    private TwitterEditText e;
    private Button f;
    private Session g;

    public ChangePasswordActivity() {
        this.a = false;
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (xVar.N() == null || this.g.g() == xVar.N().c) {
            String str;
            int i2;
            aa aaVar = (aa) xVar.l().b();
            k g = aaVar.g();
            Object obj = null;
            if (g != null) {
                obj = g.b;
            }
            int[] a = an.a(aaVar.c);
            if (!"OK".equals(obj)) {
                int i3 = (a == null || a.length == 0) ? 0 : a[0];
                switch (i3) {
                    case mx.AppCompatTheme_popupMenuStyle /*60*/:
                        str = "settings:change_password::change_password:mismatch";
                        i2 = 2131363236;
                        break;
                    case mx.AppCompatTheme_editTextColor /*62*/:
                        str = "settings:change_password::change_password:minimum_length";
                        i2 = 2131363789;
                        break;
                    case 114:
                        str = "settings:change_password::change_password:wrong_old";
                        i2 = 2131363232;
                        break;
                    case 238:
                        str = "settings:change_password::change_password:weak";
                        i2 = 2131363230;
                        break;
                    default:
                        str = "settings:change_password::change_password:failure";
                        i2 = 2131363229;
                        break;
                }
            }
            this.d.setText(BuildConfig.VERSION_NAME);
            this.c.setText(BuildConfig.VERSION_NAME);
            this.e.setText(BuildConfig.VERSION_NAME);
            str = "settings:change_password::change_password:success";
            i2 = 2131363233;
            Toast.makeText(getBaseContext(), i2, 0).show();
            bbu.a(new TwitterScribeLog(xVar.N().c).b(str));
        }
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968671);
        tVar.a(false);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        String a = new bk(getIntent()).a();
        if (aj.a((CharSequence) a)) {
            throw new IllegalStateException("ChangePasswordActivity requires a target account");
        }
        this.g = aa().b(a);
        bbu.a(new TwitterScribeLog(this.g.g()).b("settings:change_password:::impression"));
        this.c = (TwitterEditText) findViewById(2131952069);
        this.d = (TwitterEditText) findViewById(2131952070);
        this.e = (TwitterEditText) findViewById(2131952071);
        this.f = (Button) findViewById(2131952072);
        this.f.setOnClickListener(this);
        this.c.addTextChangedListener(this);
        this.d.addTextChangedListener(this);
        this.e.addTextChangedListener(this);
        this.c.setOnFocusChangeListener(this);
        this.d.setOnFocusChangeListener(this);
        this.e.setOnFocusChangeListener(this);
        ((TextView) findViewById(2131952073)).setOnClickListener(this);
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131952072) {
            bbu.a(new TwitterScribeLog(this.g.g()).b("settings:change_password::change_password:click"));
            e();
        } else if (id == 2131952073) {
            bbu.a(new TwitterScribeLog(this.g.g()).b("settings:change_password::forgot_password:click"));
            if (d.a("native_pw_reset_from_change_pw_enabled")) {
                Intent intent = new Intent(this, PasswordResetActivity.class);
                String e = this.g.e();
                if (e != null) {
                    intent.putExtra("account_id", e);
                }
                startActivity(intent);
                finish();
                return;
            }
            al.a(this, BuildConfig.VERSION_NAME, 2131364348);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.d.getText()) {
            if (b(this.d.getText().toString())) {
                this.d.setError(2131363789);
            } else {
                this.d.e();
            }
        } else if (editable == this.e.getText()) {
            if (b(this.e.getText().toString())) {
                this.e.setError(2131363789);
            } else {
                this.e.e();
            }
        }
        this.f.setEnabled(c());
    }

    public void onFocusChange(View view, boolean z) {
        int id = view.getId();
        if (id == 2131952071) {
            if (!z && aj.b(this.e.getText())) {
                if (b(this.e.getText().toString()) || this.e.length() < 6) {
                    this.e.setError(2131363789);
                }
            }
        } else if (id != 2131952070 || z || !aj.b(this.d.getText())) {
        } else {
            if (b(this.d.getText().toString()) || this.d.length() < 6) {
                this.d.setError(2131363789);
            }
        }
    }

    private boolean c() {
        return this.c.length() > 0 && this.d.length() > 0 && this.e.length() > 0 && this.e.length() == this.d.length() && this.d.length() >= 6 && !b(this.d.getText().toString());
    }

    private boolean b(String str) {
        return str.contains(" ");
    }

    private void a(String str, String str2) {
        x ber = new ber(this, new ab(this.g), str2, str, null);
        ber.h(1);
        b(ber, 0);
        if (this.a) {
            this.b = ber;
        }
    }

    private boolean a(String str, String str2, String str3) {
        if (b(str)) {
            this.d.setError(2131363789);
            return false;
        } else if (!str.equals(str2)) {
            this.e.setError(2131363236);
            return false;
        } else if (!str.equals(str3)) {
            return true;
        } else {
            this.d.setError(2131363133);
            return false;
        }
    }

    private void e() {
        r.b(this, this.e, false);
        String obj = this.c.getText().toString();
        String obj2 = this.d.getText().toString();
        if (a(obj2, this.e.getText().toString(), obj)) {
            a(obj2, obj);
        }
    }
}
