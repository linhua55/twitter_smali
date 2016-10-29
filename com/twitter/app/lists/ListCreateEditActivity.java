package com.twitter.app.lists;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bcx;
import defpackage.blo;
import java.util.regex.Pattern;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ListCreateEditActivity extends TwitterFragmentActivity implements OnCheckedChangeListener, m {
    public static final Pattern a;
    private long b;
    private TextView c;
    private TextView d;
    private CheckBox e;
    private String f;
    private String g;
    private boolean h;

    static {
        a = Pattern.compile("\\b(\\p{L})+([\\p{L}0-9_-])*");
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968723);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        this.c = (TextView) findViewById(bcx.name);
        this.d = (TextView) findViewById(2131952079);
        this.e = (CheckBox) findViewById(2131952270);
        Intent intent = getIntent();
        if (intent.hasExtra("list_id")) {
            this.b = intent.getLongExtra("list_id", -1);
            this.f = intent.getStringExtra("name");
            this.g = intent.getStringExtra("description");
            this.h = intent.getBooleanExtra("is_private", false);
            this.c.setText(this.f);
            this.d.setText(this.g);
            this.e.setChecked(this.h);
            setTitle(2131362912);
        } else {
            this.f = BuildConfig.VERSION_NAME;
            this.g = BuildConfig.VERSION_NAME;
            this.h = false;
            setTitle(2131362335);
        }
        TextWatcher aVar = new a(this);
        this.c.addTextChangedListener(aVar);
        this.d.addTextChangedListener(aVar);
        this.e.setOnCheckedChangeListener(this);
        this.c.setFilters(new InputFilter[]{new LengthFilter(25)});
    }

    public boolean a(w wVar) {
        wVar.a(2132017197);
        return true;
    }

    public int b(w wVar) {
        bca a = wVar.j().a(2131953439);
        boolean z = e() && f();
        a.c(z);
        return 2;
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!xVar.U()) {
                    Toast.makeText(this, 2131362334, 1).show();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!xVar.U()) {
                    Toast.makeText(this, 2131362337, 1).show();
                }
            default:
        }
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953439) {
            return super.a(acVar);
        }
        String replace = this.c.getText().toString().trim().replace(" ", "-");
        if (replace.length() == 0) {
            Toast.makeText(this, 2131362338, 0).show();
            return true;
        } else if (a.matcher(replace).matches()) {
            this.c.setText(replace);
            if (this.b <= 0) {
                b(blo.a(getApplicationContext(), aa().c(), aa().c().g(), replace, c(), this.d.getText().toString()), 1);
                bbu.a(new TwitterScribeLog(ab().g()).b("me:lists:list:new_list:save"));
            } else if (!e()) {
                return true;
            } else {
                b(blo.a(getApplicationContext(), aa().c(), this.b, aa().c().g(), replace, c(), this.d.getText().toString()), 2);
            }
            i();
            return true;
        } else {
            Toast.makeText(this, 2131362339, 1).show();
            return true;
        }
    }

    public void onBackPressed() {
        if (e()) {
            a(1);
            return;
        }
        super.onBackPressed();
        j();
    }

    protected void o() {
        if (e()) {
            a(2);
            return;
        }
        super.o();
        j();
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Y().h();
    }

    private void a(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                r.b(this, this.c, false);
                ec ecVar = (ec) ((ec) ((ec) new ec(i).b(2131361844)).d(2131362419)).f(2131362041);
                if (this.b > 0) {
                    ecVar.a(2131362912);
                } else {
                    ecVar.a(2131362335);
                }
                ecVar.i().a(getSupportFragmentManager());
            default:
        }
    }

    private boolean c() {
        return this.e.isChecked();
    }

    private boolean e() {
        if (this.c.getText().toString().trim().equals(this.f) && this.d.getText().toString().trim().equals(this.g) && this.h == c()) {
            return false;
        }
        return true;
    }

    private boolean f() {
        return aj.b(this.c.getText());
    }

    private void i() {
        Intent intent = new Intent();
        String trim = this.c.getText().toString().trim();
        intent.putExtra("name", trim);
        String stringExtra = getIntent().getStringExtra("full_name");
        if (stringExtra != null) {
            int lastIndexOf = stringExtra.lastIndexOf(47);
            if (lastIndexOf > 0) {
                intent.putExtra("full_name", stringExtra.substring(0, lastIndexOf + 1) + trim);
            }
        }
        intent.putExtra("description", this.d.getText().toString().trim());
        intent.putExtra("is_private", c());
        setResult(-1, intent);
        finish();
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    j();
                    finish();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    super.o();
                    j();
                }
            default:
        }
    }

    private void j() {
        if (this.b <= 0) {
            bbu.a(new TwitterScribeLog(ab().g()).b("me:lists:list:new_list:cancel"));
        }
    }
}
