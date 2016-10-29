package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bex;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ChangeScreenNameActivity extends TwitterFragmentActivity implements TextWatcher, OnClickListener {
    int a;
    private bl b;
    private EditText c;
    private Button d;
    private TextView e;
    private Drawable f;
    private int g;
    private int h;
    private String i;
    private Session j;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968672);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.i = getIntent().getStringExtra("ChangeScreenNameActivity_account_name");
        this.j = aa().b(this.i);
        this.b = new bl(this);
        bbu.a(new TwitterScribeLog(this.j.g()).b("settings:update_username::update_username:impression"));
        Resources resources = getResources();
        this.f = resources.getDrawable(2130839338);
        this.h = resources.getColor(17170444);
        this.g = resources.getColor(2131886227);
        this.c = (EditText) findViewById(2131952074);
        this.c.setText(this.i);
        this.c.setSelection(this.i.length());
        this.c.addTextChangedListener(this);
        this.e = (TextView) findViewById(2131952075);
        this.d = (Button) findViewById(2131952076);
        this.d.setOnClickListener(this);
        this.j = bg.a().b(this.i);
        az.a((Context) this).a(bex.a((Context) this, this.j), null);
    }

    public void onClick(View view) {
        if (view.getId() == 2131952076) {
            bbu.a(new TwitterScribeLog(this.j.g()).b("settings:update_username::update_username:click"));
            e();
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        String obj = this.c.getText().toString();
        if (editable.toString().equals(obj) && this.i.equals(obj)) {
            c();
        } else {
            this.a = a(this.c, this.e, 5);
            int i = this.a;
            if (i == 2) {
                this.b.a(3);
            } else if (i == 3) {
                a(this.c, this.e, getString(2131363541));
            } else {
                this.b.removeMessages(3);
            }
        }
        a();
    }

    void a() {
        boolean z = true;
        Button button = this.d;
        if (this.a != 1) {
            z = false;
        }
        button.setEnabled(z);
    }

    private void c() {
        a(this.c, true);
        this.a = 1;
        a(this.c, this.e, null);
    }

    private int a(EditText editText, TextView textView, int i) {
        a(editText, false);
        a(editText, textView, null);
        int length = editText.length();
        if (length >= i) {
            return 2;
        }
        if (i <= 1 || length >= i) {
            return 0;
        }
        return 3;
    }

    void a(EditText editText, boolean z) {
        Drawable drawable;
        Drawable[] compoundDrawables = editText.getCompoundDrawables();
        if (compoundDrawables == null) {
            drawable = null;
        } else {
            drawable = compoundDrawables[0];
        }
        if (z) {
            editText.setCompoundDrawablesWithIntrinsicBounds(drawable, null, this.f, null);
        } else {
            editText.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
        }
    }

    void a(EditText editText, TextView textView, String str) {
        if (str != null) {
            editText.setTextColor(this.g);
            textView.setText(str);
            textView.setVisibility(0);
            return;
        }
        editText.setTextColor(this.h);
        textView.setVisibility(8);
    }

    private boolean a(String str, String str2) {
        return !str.equals(str2);
    }

    private void e() {
        r.b(this, this.c, false);
        String obj = this.c.getText().toString();
        if (a(obj, this.i)) {
            b(bex.a(this, this.j, this.j.j(), false, obj), 2);
        } else {
            Toast.makeText(getBaseContext(), 2131363134, 0).show();
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                aaVar = (aa) xVar.l().b();
                if (aaVar.b()) {
                    a(this.c, true);
                    this.a = 1;
                    a(this.c, this.e, null);
                } else {
                    a(this.c, false);
                    this.a = 0;
                    a(this.c, this.e, aaVar.e());
                }
                a();
            case WireMessage.WIRE_CONTROL /*2*/:
                aaVar = (aa) xVar.l().b();
                if (aaVar != null && aaVar.c.getString("OLD_SCREEN_NAME") != null) {
                    int i2;
                    String str;
                    if (xVar.U()) {
                        i2 = 2131363540;
                        str = "settings:update_username::update_username:success";
                        MainActivity.a((Activity) this, null);
                    } else {
                        str = "settings:update_username::update_username:failure";
                        i2 = 2131363539;
                    }
                    Toast.makeText(getBaseContext(), i2, 0).show();
                    bbu.a(new TwitterScribeLog(this.j.g()).b(str));
                }
            default:
        }
    }
}
