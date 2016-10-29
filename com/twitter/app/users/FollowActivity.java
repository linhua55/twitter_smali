package com.twitter.app.users;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.twitter.android.mx;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.t;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bcx;
import java.text.NumberFormat;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
public abstract class FollowActivity extends TwitterFragmentActivity implements OnClickListener, t, v {
    protected UsersFragment a;
    protected l b;
    protected boolean c;
    private int d;
    private int e;
    private BroadcastReceiver f;

    protected abstract l a(Bundle bundle);

    public FollowActivity() {
        this.c = true;
        this.d = 0;
        this.e = -1;
    }

    public t a(Bundle bundle, t tVar) {
        this.b = (l) e.a(a(bundle));
        tVar.a(false);
        tVar.a(0);
        tVar.d(this.b.e);
        tVar.b(10);
        if (this.b.f) {
            getTheme().applyStyle(2131559095, true);
        }
        return tVar;
    }

    public void onBackPressed() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.b.a, t(), BuildConfig.VERSION_NAME, "back_button:click"));
        if (this.b.g) {
            super.onBackPressed();
        }
    }

    public void s() {
        boolean z = true;
        Button button = (Button) findViewById(2131952009);
        button.setText(getString(2131362707, new Object[]{Integer.valueOf(this.a.U())}));
        if (this.a.U() <= 0) {
            z = false;
        }
        button.setEnabled(z);
    }

    public void b(Bundle bundle, t tVar) {
        UsersFragment a;
        if (bundle == null) {
            if (this.b.d) {
                setTitle(BuildConfig.VERSION_NAME);
            }
            a = a(b(getIntent()));
            getSupportFragmentManager().beginTransaction().add(2131951923, (Fragment) a).commit();
        } else {
            a = (UsersFragment) getSupportFragmentManager().findFragmentById(2131951923);
            a.a((v) this);
            a.a((t) this);
            this.d = bundle.getInt("page_count");
            this.e = bundle.getInt("page_total");
            this.c = bundle.getBoolean("should_show_loading_in_title");
        }
        this.a = a;
        m();
        findViewById(bcx.skip).setOnClickListener(this);
        Button button = (Button) findViewById(2131952009);
        button.setText(getResources().getString(2131362707, new Object[]{Integer.valueOf(this.a.U())}));
        button.setOnClickListener(this);
        button.setEnabled(false);
        s();
        if (!r()) {
            findViewById(2131952483).setVisibility(8);
        }
    }

    private void m() {
        BroadcastReceiver j = j();
        if (j != null) {
            this.f = j;
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f, l());
        }
    }

    protected BroadcastReceiver j() {
        if (this.b.c) {
            return new n(this);
        }
        return null;
    }

    protected IntentFilter l() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("upload_success_broadcast");
        if (this.b.c) {
            intentFilter.addAction("registration_success_broadcast");
        }
        return intentFilter;
    }

    protected boolean r() {
        return false;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("page_count", this.d);
        bundle.putInt("page_total", this.e);
        bundle.putBoolean("should_show_loading_in_title", this.c);
    }

    private void a(int i, int i2) {
        if (i2 != -1) {
            this.e = i2;
            if (i != -1) {
                this.d++;
            }
        }
    }

    public void e() {
        if (f()) {
            this.c = false;
        }
        i();
        Y().h();
        if (this.d == 1) {
            bbu.a(new TwitterScribeLog(ab().g()).b(this.b.a, "follow_friends:stream::results"));
        }
        if (this.a.aF() == 0 && this.b.c && v()) {
            bbu.a(new TwitterScribeLog(ab().g()).b(this.b.a, "follow_friends:::no_results"));
        }
    }

    protected boolean f() {
        return (!this.a.W() && this.e == -1) || v();
    }

    protected UsersFragment a(y yVar) {
        UsersFragment c = c();
        c.a((g) yVar);
        c.a((v) this);
        c.a((t) this);
        return c;
    }

    protected UsersFragment c() {
        return new UsersFragment();
    }

    protected y b(Intent intent) {
        return ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) aa.a(intent).h(false)).d(this.b.a)).b(2131362644)).h(1000)).g(28)).f(true)).d();
    }

    protected void i() {
        if (this.c) {
            if (this.e != -1 || this.a.W()) {
                setTitle(getString(2131362931, new Object[]{NumberFormat.getPercentInstance().format((double) u())}));
                return;
            }
            setTitle(2131362928);
        } else if (this.b.c) {
            setTitle(2131362708);
        } else if (this.b.d) {
            setTitle(getString(2131362834));
        }
    }

    private float u() {
        float f = (this.e <= 0 || this.a.Y()) ? 0.0f : ((float) this.d) / ((float) this.e);
        if (!this.a.W()) {
            return f;
        }
        int V = this.a.V();
        return (f / ((float) V)) + (((float) this.a.X()) / ((float) V));
    }

    private boolean v() {
        return u() >= 1.0f;
    }

    protected String t() {
        switch (this.a.t) {
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                return "follow_friends";
            case mx.TwitterButton_iconLayout /*19*/:
                return "who_to_follow";
            case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                return "follow_interest_suggestions";
            default:
                return BuildConfig.VERSION_NAME;
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.f != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f);
        }
    }

    public void onClick(View view) {
    }
}
