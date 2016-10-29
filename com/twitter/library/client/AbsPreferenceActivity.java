package com.twitter.library.client;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.twitter.app.common.base.BasePreferenceActivity;
import com.twitter.app.common.util.s;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.service.x;
import defpackage.bby;
import defpackage.bca;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class AbsPreferenceActivity extends BasePreferenceActivity {
    protected long I;
    protected az J;
    private bg a;
    private ao b;
    private ToolBar c;
    private g d;

    public bg k() {
        return this.a;
    }

    protected final Session l() {
        return this.a.c();
    }

    protected void onCreate(Bundle bundle) {
        this.a = bg.a();
        this.J = az.a((Context) this);
        super.onCreate(bundle);
        this.b = ao.a((s) this, this.J);
        this.b.a(new e(this));
    }

    protected void onStart() {
        super.onStart();
        this.b.c(this.I);
    }

    protected void onDestroy() {
        this.b.a(null);
        super.onDestroy();
    }

    public final void setContentView(int i) {
        super.setContentView(i);
        c();
    }

    public final void setContentView(View view) {
        super.setContentView(view);
        c();
    }

    public final void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        c();
    }

    protected final boolean b(x xVar, int i) {
        if (!this.b.a(this.I, xVar, i, 0)) {
            return false;
        }
        c(xVar, i);
        return true;
    }

    @CallSuper
    protected void c(x xVar, int i) {
    }

    @CallSuper
    protected void a(x xVar, int i) {
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        if (this.c != null) {
            this.c.setTitle(charSequence);
        } else {
            super.onTitleChanged(charSequence, i);
        }
    }

    private void c() {
        ToolBar toolBar = (ToolBar) findViewById(bcx.toolbar);
        if (toolBar != null) {
            bby bby = new bby(this);
            if (h()) {
                if (VERSION.SDK_INT >= 17) {
                    this.d = new k(this, bby, toolBar);
                } else {
                    this.d = new h(this, bby, toolBar);
                }
            }
            boolean a = a(bby, toolBar);
            if (this.d != null || a) {
                this.c = toolBar;
                toolBar.setOnToolBarItemSelectedListener(new f(this));
                a = a(toolBar);
                if (this.d != null || a) {
                    toolBar.setVisibility(0);
                    return;
                } else {
                    toolBar.setVisibility(8);
                    return;
                }
            }
            toolBar.setVisibility(8);
        }
    }

    protected boolean a(bby bby, ToolBar toolBar) {
        return true;
    }

    protected boolean a(ToolBar toolBar) {
        return true;
    }

    protected boolean a(bca bca) {
        if (bca.a() == bcx.home) {
            finish();
        }
        return true;
    }

    protected boolean h() {
        return false;
    }

    protected boolean m() {
        return false;
    }

    protected boolean n() {
        if (this.d != null) {
            return this.d.a();
        }
        return getPreferenceScreen().isEnabled();
    }

    protected void c(boolean z) {
        a(z, false);
    }

    boolean a(boolean z, boolean z2) {
        if (this.d == null) {
            return true;
        }
        if (z2 && !a(z)) {
            return false;
        }
        this.d.a(z);
        return true;
    }

    protected boolean a(boolean z) {
        return true;
    }

    protected void d(boolean z) {
        if (this.d != null) {
            this.d.b(z);
        }
    }
}
