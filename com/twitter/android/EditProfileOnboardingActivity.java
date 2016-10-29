package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.twitter.android.client.bv;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.t;
import com.twitter.library.client.av;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bbn;
import defpackage.bcx;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EditProfileOnboardingActivity extends BaseEditProfileActivity implements OnClickListener {
    private TextView m;
    private EditText n;
    private int o;
    private String p;
    private FollowFlowController q;
    private boolean r;
    private OnGlobalLayoutListener s;
    private ScrollView t;

    public t a(Bundle bundle, t tVar) {
        this.q = (FollowFlowController) (bundle == null ? getIntent().getParcelableExtra("flow_controller") : bundle.getParcelable("flow_controller"));
        if (this.q == null) {
            this.q = new FollowFlowController(null);
        }
        tVar.d(this.q.f());
        tVar.b(10);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        if (this.q.e()) {
            z();
        } else {
            A();
        }
        super.b(bundle, tVar);
        if (this.q.e()) {
            a(bundle);
        } else {
            b(bundle);
        }
        y();
    }

    private void y() {
        ((TwitterButton) findViewById(bcx.skip)).setOnClickListener(this);
        TwitterButton twitterButton = (TwitterButton) findViewById(2131952009);
        twitterButton.setOnClickListener(this);
        twitterButton.setText(2131362617);
    }

    private void a(TwitterUser twitterUser) {
        if (twitterUser.g() || twitterUser.e == null) {
            this.j.a(null);
            this.j.setDefaultDrawableColor(getResources().getColor(2131886263));
        }
    }

    private void z() {
        bm.a(getLayoutInflater().inflate(2130968795, (FrameLayout) findViewById(2131951923)), getString(2131362624), getString(2131362619));
    }

    private void a(Bundle bundle) {
        TwitterUser B = B();
        if (B != null) {
            ((TextView) findViewById(bcx.name)).setText(B.d);
            ((TextView) findViewById(k.username)).setText('@' + B.k);
        }
        if (bundle != null) {
            this.r = bundle.getBoolean("avatar_added");
        }
        if (!(this.r || B == null)) {
            a(B);
        }
        findViewById(2131952009).setEnabled(this.r);
    }

    private void A() {
        PromptView promptView = (PromptView) getLayoutInflater().inflate(2130968794, (RelativeLayout) findViewById(2131951923)).findViewById(bcx.header);
        setTitle(getString(2131362624));
        promptView.setTitle(2131362618);
        X().d();
    }

    private void b(Bundle bundle) {
        this.n = (EditText) findViewById(bcx.name);
        this.m = (TextView) findViewById(2131952251);
        this.o = this.m.getCurrentTextColor();
        TwitterUser B = B();
        if (B != null) {
            this.l = B.g;
            this.p = B.d;
        }
        if (bundle == null) {
            this.k.setText(this.l);
            this.n.setText(this.p);
        } else {
            this.r = bundle.getBoolean("avatar_added");
        }
        if (!(this.r || B == null)) {
            a(B);
        }
        a(160 - this.k.getText().length());
        this.k.addTextChangedListener(new eq(this));
        this.n.setSelection(this.n.length());
        this.n.addTextChangedListener(new er(this));
        this.t = (ScrollView) findViewById(2131951949);
        E();
    }

    private TwitterUser B() {
        TwitterUser f = ab().f();
        av a = bv.a(ab());
        if (a == null || f == null) {
            return f;
        }
        return a.a(f);
    }

    private void a(int i) {
        CharSequence num = Integer.toString(i);
        if (this.q.e()) {
            this.m.setText(num + "/" + getString(2131364351));
        } else {
            this.m.setText(num);
        }
    }

    protected TwitterScribeAssociation a() {
        return (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b(this.q.g())).c("edit_profile");
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_controller", this.q);
        bundle.putBoolean("avatar_added", this.r);
    }

    protected void a(Intent intent) {
        this.q.b((Activity) this);
    }

    protected String i() {
        return this.n.getText().toString();
    }

    protected String j() {
        TwitterUser f = ab().f();
        return f != null ? f.h : BuildConfig.VERSION_NAME;
    }

    protected String y_() {
        TwitterUser f = ab().f();
        return f != null ? f.q : BuildConfig.VERSION_NAME;
    }

    protected boolean r() {
        return false;
    }

    void w() {
        int length = 160 - this.k.getText().length();
        Button button = (Button) findViewById(2131952009);
        this.m.setTextColor(length < 10 ? getResources().getColor(2131886285) : this.o);
        a(length);
        if (length < 0) {
            button.setEnabled(false);
            return;
        }
        boolean z = this.r || s();
        button.setEnabled(z);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        super.a(dialogInterface, i, i2);
        long g = ab().g();
        String g2 = this.q.g();
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == 1 || i2 == 0) {
                    a(g, g2 + ":edit_profile::avatar:edit");
                    this.r = true;
                }
                if (this.q.e()) {
                    findViewById(2131952009).setEnabled(true);
                } else {
                    w();
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -1) {
                    setResult(0);
                    a(g, g2 + ":edit_profile:::cancel");
                    this.q.b((Activity) this);
                }
            default:
        }
    }

    public void a(DialogInterface dialogInterface, int i) {
    }

    public void onBackPressed() {
        a(ab().g(), this.q.g(), "edit_profile", BuildConfig.VERSION_NAME, "back_button", "click");
        if (this.q.i()) {
            super.onBackPressed();
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == bcx.skip) {
            a(ab().g(), this.q.g(), "edit_profile:::skip");
            if (p()) {
                x();
            } else {
                this.q.b((Activity) this);
            }
        } else if (id == 2131952009) {
            a(ab().g(), this.q.g(), "edit_profile:::next");
            C();
        }
    }

    protected void x() {
        ((ec) ((ec) ((ec) ((ec) new ec(4).a(2131362606)).b(2131361844)).d(2131362419)).f(2131362041)).i().a(getSupportFragmentManager());
    }

    private static boolean a(EditText editText, String str) {
        return !aj.a(str, editText != null ? editText.getText().toString() : null);
    }

    protected boolean s() {
        return q() || a(this.n, this.p);
    }

    private void C() {
        long g = ab().g();
        String g2 = this.q.g();
        if (this.r) {
            a(g, g2 + ":edit_profile::avatar:add");
        } else {
            a(g, g2 + ":edit_profile::avatar:egg");
        }
        if (p()) {
            x_();
        } else {
            this.q.b((Activity) this);
        }
    }

    protected void onStop() {
        if (isFinishing()) {
            FollowFlowController.b((Context) this);
        } else if (this.q != null) {
            this.q.a((Context) this);
        }
        super.onStop();
    }

    private void E() {
        this.s = new es(this);
        if (this.t != null) {
            this.t.getViewTreeObserver().addOnGlobalLayoutListener(this.s);
        }
    }

    protected void onDestroy() {
        if (this.t != null) {
            this.t.getViewTreeObserver().removeGlobalOnLayoutListener(this.s);
        } else if (!this.q.e()) {
            bbn.a(new NullPointerException("Edit profile scroll view is null."));
        }
        super.onDestroy();
    }

    protected void onStart() {
        super.onStart();
        FollowFlowController.b((Context) this);
    }

    void t() {
        if (this.d == null && this.h != null && !this.h.g() && this.h.e != null) {
            this.j.a(this.h);
        }
    }
}
