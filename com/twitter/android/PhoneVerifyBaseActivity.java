package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.t;
import com.twitter.library.client.AbsFragment;
import defpackage.bbn;

/* compiled from: Twttr */
public abstract class PhoneVerifyBaseActivity extends TwitterFragmentActivity implements kn, lx {
    protected int a;
    protected AbsFragment b;
    private ProgressDialogFragment c;

    protected abstract String af_();

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969178);
        tVar.a(false);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(2131363317);
        this.a = getIntent().getIntExtra("liveFragment", 0);
        if (bundle != null) {
            Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag("progress_dialog_tag");
            if (findFragmentByTag instanceof ProgressDialogFragment) {
                this.c = (ProgressDialogFragment) findFragmentByTag;
            }
        } else if (this.a == 0) {
            h();
        } else if (this.a == 1) {
            f();
        }
    }

    public void onBackPressed() {
        if (r() <= 1) {
            super.onBackPressed();
        }
    }

    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.a = getIntent().getIntExtra("liveFragment", 0);
        if (this.a == 1) {
            f();
        }
    }

    public void o() {
        onBackPressed();
    }

    public void e() {
        if (this.a == 1) {
            ((ManualEntryPinFragment) this.b).f();
        }
    }

    private int r() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int backStackEntryCount = supportFragmentManager.getBackStackEntryCount();
        if (backStackEntryCount > 0) {
            String name = supportFragmentManager.getBackStackEntryAt(backStackEntryCount - 1).getName();
            if (name.equals("manual")) {
                l();
                supportFragmentManager.popBackStackImmediate();
                if (backStackEntryCount > 1) {
                    this.a = 0;
                    this.b = (AbsFragment) supportFragmentManager.findFragmentByTag("waiting");
                }
            } else if (name.equals("waiting")) {
                m();
                supportFragmentManager.popBackStackImmediate();
            }
        } else {
            bbn.a(new IllegalStateException("stackCount should not be 0"));
        }
        return backStackEntryCount;
    }

    protected void f() {
        this.a = 1;
        this.b = new ManualEntryPinFragment();
        this.b.a(i());
        getSupportFragmentManager().beginTransaction().add(2131951923, this.b, "manual").addToBackStack("manual").commit();
    }

    protected void h() {
        this.a = 0;
        this.b = new PinWaitingFragment();
        this.b.a(i());
        getSupportFragmentManager().beginTransaction().add(2131951923, this.b, "waiting").addToBackStack("waiting").commit();
    }

    protected g i() {
        return g.a;
    }

    public void b(int i) {
        if (this.c == null) {
            this.c = ProgressDialogFragment.a(i);
            this.c.setRetainInstance(true);
            this.c.a(getSupportFragmentManager(), "progress_dialog_tag");
        }
    }

    public void j() {
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
    }

    public void a(boolean z) {
    }

    public void a(int i) {
    }

    public boolean t_() {
        return false;
    }

    public void b() {
    }

    public void c() {
    }

    public void u_() {
    }
}
