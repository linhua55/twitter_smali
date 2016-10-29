package com.twitter.android;

import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextWatcher;
import android.util.Patterns;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import defpackage.ber;

/* compiled from: Twttr */
public class ChangeEmailActivity extends TwitterFragmentActivity implements OnClickListener {
    public boolean a;
    public x b;
    private EditText c;
    private EditText d;
    private Session e;

    public ChangeEmailActivity() {
        this.a = false;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968670);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Button button = (Button) findViewById(2131952068);
        button.setOnClickListener(this);
        String stringExtra = getIntent().getStringExtra("ChangeEmailActivity_account_name");
        if (aj.a((CharSequence) stringExtra)) {
            throw new IllegalStateException("ChangeEmailActivity requires a target account");
        }
        this.e = aa().b(stringExtra);
        TextWatcher bjVar = new bj(this, button);
        this.c = (EditText) findViewById(2131952065);
        this.c.addTextChangedListener(bjVar);
        this.c.requestFocus();
        this.d = (EditText) findViewById(2131952066);
        this.d.addTextChangedListener(bjVar);
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (xVar.N() == null || this.e.g() == xVar.N().c) {
            switch (i) {
                case mx.View_android_theme /*0*/:
                    int i2;
                    aa aaVar = (aa) xVar.l().b();
                    if (aaVar == null || !aaVar.b()) {
                        i2 = 2131363625;
                    } else {
                        i2 = 2131363626;
                        this.c.setText(BuildConfig.VERSION_NAME);
                        this.d.setText(BuildConfig.VERSION_NAME);
                    }
                    Toast.makeText(this, i2, 0).show();
                default:
                    throw new IllegalStateException("Unrecognized request type in completion handler.");
            }
        }
    }

    public void onClick(View view) {
        x ber = new ber(this, new ab(this.e), this.d.getText().toString(), null, this.c.getText().toString());
        ber.h(2);
        b(ber, 0);
        if (this.a) {
            this.b = ber;
        }
    }

    boolean a() {
        CharSequence text = this.c.getText();
        return aj.b(text) && Patterns.EMAIL_ADDRESS.matcher(text).matches();
    }

    boolean b() {
        return aj.b(this.d.getText());
    }
}
