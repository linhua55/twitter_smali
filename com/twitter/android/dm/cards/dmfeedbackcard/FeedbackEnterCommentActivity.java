package com.twitter.android.dm.cards.dmfeedbackcard;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.twitter.android.revenue.card.h;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.library.customerservice.network.FeedbackRequestParams;
import com.twitter.library.customerservice.network.c;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.caw;

/* compiled from: Twttr */
public class FeedbackEnterCommentActivity extends TwitterFragmentActivity {
    private TwitterButton a;
    private View b;
    private EditText c;
    private FeedbackRequestParams d;
    private l e;
    private boolean f;
    private String g;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968809);
        tVar.a(false);
        tVar.c(true);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("feedback_associated_user_name_key");
        this.g = intent.getStringExtra("feedback_scribe_component");
        this.d = (FeedbackRequestParams) intent.getParcelableExtra("feedback_request_params");
        aj.d(caw.a("score", this.d.d()), -1);
        this.e = l.a(this.d.a());
        this.e.a(this.g, "comment_compose", "impression");
        setTitle(2131362674);
        this.a = (TwitterButton) findViewById(2131952449);
        this.a.setText(getResources().getString(2131362686, new Object[]{stringExtra}));
        this.a.setEnabled(false);
        this.a.setOnClickListener(new e(this));
        String stringExtra2 = intent.getStringExtra("feedback_associated_score_description_key");
        this.c = (EditText) findViewById(2131952448);
        this.c.setTypeface(h.b);
        this.c.setHint(getResources().getString(2131362675, new Object[]{stringExtra, stringExtra2}));
        this.c.addTextChangedListener(new f(this));
        this.b = findViewById(2131952447);
        this.b.setOnClickListener(new g(this));
    }

    public void c() {
        String f = f();
        if (f.length() <= 10000) {
            this.e.a(this.g, "comment_compose", "submit");
            this.d.a(f);
            x cVar = new c((Context) this, ab(), this.d, f);
            this.f = true;
            this.a.setEnabled(false);
            this.c.setEnabled(false);
            b(cVar, 1);
            return;
        }
        new Builder(this).setTitle(2131362677).setMessage(2131362678).setNegativeButton(2131363218, new h(this)).create().show();
    }

    protected void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar = (aa) xVar.l().b();
        if (i != 1) {
            return;
        }
        if (aaVar == null || aaVar.b()) {
            a(false);
            return;
        }
        this.f = false;
        this.a.setEnabled(j());
        this.c.setEnabled(true);
        Toast.makeText(this, 2131362687, 0).show();
    }

    public void onBackPressed() {
        if (i()) {
            this.b.setEnabled(false);
            this.a.setEnabled(false);
            e();
            return;
        }
        a(true);
    }

    private void e() {
        AlertDialog create = new Builder(this).setTitle(2131362679).setMessage(2131361844).setPositiveButton(2131362419, new j(this)).setNegativeButton(2131362041, new i(this)).create();
        create.setOnDismissListener(new k(this));
        create.show();
    }

    private void a(boolean z) {
        if (z) {
            this.e.a(this.g, "comment_compose", "dismiss");
            setResult(0);
        }
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
        }
        finish();
    }

    private String f() {
        return this.c.getText().toString().trim();
    }

    private boolean i() {
        return !TextUtils.isEmpty(f());
    }

    private boolean j() {
        return !this.f && i();
    }
}
