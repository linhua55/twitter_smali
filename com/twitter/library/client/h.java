package com.twitter.library.client;

import android.os.Handler;
import android.os.Looper;
import android.widget.Switch;
import bcz;
import com.twitter.internal.android.widget.ToolBar;
import defpackage.bby;
import defpackage.bcx;

/* compiled from: Twttr */
class h implements g {
    protected Switch a;
    final /* synthetic */ AbsPreferenceActivity b;
    private final Handler c;

    h(AbsPreferenceActivity absPreferenceActivity, bby bby, ToolBar toolBar) {
        this.b = absPreferenceActivity;
        this.c = new Handler(Looper.getMainLooper());
        bby.a(bcz.pref_toolbar, toolBar);
        this.a = (Switch) toolBar.a(bcx.pref_switch).d();
        this.a.setChecked(absPreferenceActivity.m());
        this.a.setOnCheckedChangeListener(new i(this, absPreferenceActivity));
    }

    public void a(boolean z) {
        this.b.getPreferenceScreen().setEnabled(z);
        this.a.setChecked(z);
    }

    protected void c(boolean z) {
        this.c.post(new j(this, z));
    }

    public boolean a() {
        return this.a.isChecked();
    }

    public void b(boolean z) {
        this.a.setEnabled(z);
    }
}
