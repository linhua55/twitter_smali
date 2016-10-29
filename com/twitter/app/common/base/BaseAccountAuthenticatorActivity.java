package com.twitter.app.common.base;

import android.accounts.AccountAuthenticatorActivity;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import com.twitter.android.ld;
import com.twitter.app.common.util.a;
import com.twitter.app.common.util.b;
import com.twitter.app.common.util.t;
import com.twitter.app.common.util.w;
import com.twitter.util.object.ObjectUtils;
import defpackage.dbg;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class BaseAccountAuthenticatorActivity extends AccountAuthenticatorActivity implements ld, p, t {
    static final /* synthetic */ boolean b;
    private final dbg a;
    private final b c;
    private boolean d;
    private boolean e;
    private boolean f;
    private Map<String, Object> g;

    static {
        b = !BaseAccountAuthenticatorActivity.class.desiredAssertionStatus();
    }

    public BaseAccountAuthenticatorActivity() {
        this.a = new dbg();
        this.c = new b();
    }

    @CallSuper
    protected void onCreate(Bundle bundle) {
        this.g = (Map) ObjectUtils.a(getLastNonConfigurationInstance());
        if (this.g == null) {
            this.g = new HashMap();
        }
        this.c.a((Activity) this, bundle);
        super.onCreate(bundle);
    }

    @CallSuper
    protected void onNewIntent(Intent intent) {
        this.c.a((Activity) this, intent);
        super.onNewIntent(intent);
    }

    @CallSuper
    protected void onStart() {
        this.c.a((Activity) this);
        super.onStart();
        this.d = true;
    }

    @CallSuper
    protected void onResume() {
        this.c.b((Activity) this);
        super.onResume();
        this.e = true;
    }

    @CallSuper
    protected void onPause() {
        this.e = false;
        super.onPause();
        this.c.c(this);
    }

    @CallSuper
    protected void onStop() {
        this.d = false;
        super.onStop();
        this.c.d(this);
    }

    @CallSuper
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.c.b(this, bundle);
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c.a((Activity) this, configuration);
    }

    @CallSuper
    protected void onDestroy() {
        this.a.K_();
        this.f = true;
        super.onDestroy();
        this.c.e(this);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (!this.c.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    public boolean l_() {
        return this.d && !isFinishing();
    }

    public boolean m_() {
        return this.e;
    }

    public boolean isDestroyed() {
        return this.f;
    }

    public void a(a aVar) {
        this.c.a(aVar);
    }

    public void b(a aVar) {
        this.c.b(aVar);
    }

    public void a(int i, w wVar) {
        this.c.a(i, wVar);
    }

    public final Object onRetainNonConfigurationInstance() {
        c();
        return this.g;
    }

    public Object a(String str, Object obj) {
        if (b || this.g != null) {
            return obj != null ? this.g.put(str, obj) : this.g.remove(str);
        } else {
            throw new AssertionError();
        }
    }

    public <T> T a_(String str) {
        if (b || this.g != null) {
            return ObjectUtils.a(this.g.get(str));
        }
        throw new AssertionError();
    }

    @CallSuper
    protected void c() {
    }

    @CallSuper
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }
}
