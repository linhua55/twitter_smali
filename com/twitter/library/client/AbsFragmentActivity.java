package com.twitter.library.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v4.app.Fragment;
import android.support.v4.app.NavUtils;
import com.twitter.app.common.inject.InjectedFragmentActivity;
import com.twitter.app.common.util.s;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.navigation.ModernDrawerView;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.af;
import com.twitter.library.client.navigation.r;
import com.twitter.library.client.navigation.w;
import com.twitter.library.client.navigation.x;
import com.twitter.library.client.navigation.y;
import com.twitter.library.client.navigation.z;
import com.twitter.util.ab;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class AbsFragmentActivity extends InjectedFragmentActivity implements x, y {
    protected long I;
    protected az J;
    private final bf a;
    private bg b;
    private ao c;
    private z d;
    private Intent e;
    private d f;
    private boolean g;

    public abstract void a(Bundle bundle, d dVar);

    protected abstract void o();

    protected abstract void v_();

    public AbsFragmentActivity() {
        this.a = new c(this);
        this.d = z.a;
    }

    long V_() {
        return this.I;
    }

    @CallSuper
    protected void onCreate(Bundle bundle) {
        this.b = bg.a();
        this.J = az.a((Context) this);
        super.onCreate(bundle);
        this.c = ao.a((s) this, this.J);
        this.c.a(new b(this));
        if (b(getIntent())) {
            d dVar;
            d g = g(bundle);
            if (g == null) {
                dVar = new d();
            } else {
                dVar = g;
            }
            dVar.g = true;
            this.f = dVar;
            if (dVar.h != 0) {
                setContentView(dVar.h);
            }
            if (!dVar.i || this.b.c().d()) {
                if (bundle != null) {
                    this.e = (Intent) bundle.getParcelable("ancestor_root_intent");
                }
                a(dVar);
                a(bundle, dVar);
                if (!this.d.a()) {
                    a(dVar);
                }
                if (this.d.a((y) this)) {
                    this.d.a((x) this);
                    return;
                }
                return;
            }
            v_();
            return;
        }
        o();
    }

    private void a(d dVar) {
        ModernDrawerView modernDrawerView = (ModernDrawerView) findViewById(bcx.drawer);
        ToolBar toolBar = (ToolBar) findViewById(bcx.toolbar);
        w rVar = toolBar != null ? modernDrawerView != null ? new r(modernDrawerView, toolBar, dVar.j, this) : new af(toolBar, dVar.j, this) : null;
        this.d = z.a(rVar);
    }

    protected void onStart() {
        super.onStart();
        this.c.c(this.I);
    }

    protected void onDestroy() {
        this.c.a(null);
        super.onDestroy();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getWindow().setFormat(1);
    }

    public ToolBar X() {
        return Y().d();
    }

    public final z Y() {
        return this.d;
    }

    private boolean b(ac acVar) {
        if (acVar.m() == null) {
            return false;
        }
        startActivity(acVar.m());
        return true;
    }

    public boolean a(w wVar) {
        return false;
    }

    public int b(w wVar) {
        return 2;
    }

    public final void c(w wVar) {
    }

    public boolean a(ac acVar) {
        if (acVar.a() != bcx.home) {
            return b(acVar);
        }
        o();
        return true;
    }

    protected void a(Activity activity, Intent intent) {
        intent.addFlags(67108864);
        d(intent);
        activity.finish();
    }

    protected void k_() {
        a((Activity) this, NavUtils.getParentActivityIntent(this));
    }

    protected void onResume() {
        super.onResume();
        if (!this.f.i || this.b.c().d()) {
            aa().a(this.a);
        } else {
            v_();
        }
    }

    protected void onPause() {
        aa().b(this.a);
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("ancestor_root_intent", this.e);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (b(intent)) {
            setIntent(intent);
        }
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        if (!Y().a(charSequence)) {
            super.onTitleChanged(charSequence, i);
        }
    }

    public void onBackPressed() {
        if (this.g) {
            this.g = false;
        }
        Z();
    }

    void Z() {
        if (m_()) {
            super.onBackPressed();
        }
    }

    protected bg aa() {
        return this.b;
    }

    protected final Session ab() {
        return this.b.c();
    }

    protected final boolean b(com.twitter.library.service.x xVar, int i) {
        if (!this.c.a(this.I, xVar, i, 0)) {
            return false;
        }
        c(xVar, i);
        return true;
    }

    @CallSuper
    protected void c(com.twitter.library.service.x xVar, int i) {
    }

    @CallSuper
    protected void a(com.twitter.library.service.x xVar, int i) {
    }

    public final Intent ac() {
        return this.e;
    }

    public final void c(Intent intent) {
        this.e = intent;
    }

    protected Intent B_() {
        if (this.f.k) {
            return getIntent();
        }
        return this.e;
    }

    private Intent a(Intent intent) {
        intent.setExtrasClassLoader(getClass().getClassLoader());
        intent.putExtra("intent.extra.ANCESTOR", B_());
        return intent;
    }

    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(a(intent), i);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        super.startActivityFromFragment(fragment, a(intent), i);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(a(intent), i, bundle);
    }

    public d g(Bundle bundle) {
        return null;
    }

    public void d(Intent intent) {
        super.startActivityForResult(intent, -1, null);
    }

    private boolean b(Intent intent) {
        if (ab.a(intent)) {
            if (intent.hasExtra("intent.extra.ANCESTOR")) {
                this.e = (Intent) intent.getParcelableExtra("intent.extra.ANCESTOR");
                intent.removeExtra("intent.extra.ANCESTOR");
            }
            this.g = false;
            String stringExtra = intent.getStringExtra("AbsFragmentActivity_account_name");
            if (stringExtra != null) {
                bg aa = aa();
                if (!stringExtra.equals(aa.c().e())) {
                    aa.d(stringExtra);
                    this.g = true;
                }
                intent.removeExtra("AbsFragmentActivity_account_name");
            }
            return true;
        }
        intent.replaceExtras((Bundle) null);
        return false;
    }
}
