package com.twitter.app.common.base;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.app.AppCompatDelegate;
import com.twitter.app.common.util.a;
import com.twitter.app.common.util.b;
import com.twitter.app.common.util.t;
import com.twitter.app.common.util.w;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.cvo;
import defpackage.dbg;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class BaseFragmentActivity extends AppCompatActivity implements b, p, t {
    static final /* synthetic */ boolean F;
    private final dbg a;
    private final b b;
    private boolean c;
    private boolean d;
    private boolean e;
    private Map<String, Object> f;

    static {
        F = !BaseFragmentActivity.class.desiredAssertionStatus();
    }

    public BaseFragmentActivity() {
        this.a = new dbg();
        this.b = new b();
    }

    @CallSuper
    protected void onCreate(Bundle bundle) {
        this.f = (Map) ObjectUtils.a(getLastCustomNonConfigurationInstance());
        if (this.f == null) {
            this.f = new HashMap();
        }
        this.b.a((Activity) this, bundle);
        super.onCreate(bundle);
    }

    @CallSuper
    protected void onNewIntent(Intent intent) {
        this.b.a((Activity) this, intent);
        super.onNewIntent(intent);
    }

    @CallSuper
    protected void onStart() {
        this.b.a((Activity) this);
        super.onStart();
        this.c = true;
    }

    @CallSuper
    protected void onResume() {
        this.b.b((Activity) this);
        super.onResume();
        this.d = true;
    }

    @CallSuper
    protected void onPause() {
        this.d = false;
        super.onPause();
        this.b.c(this);
    }

    @CallSuper
    protected void onStop() {
        this.c = false;
        super.onStop();
        this.b.d(this);
    }

    @CallSuper
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.b.b(this, bundle);
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        getResources().updateConfiguration(configuration, Resources.getSystem().getDisplayMetrics());
        super.onConfigurationChanged(configuration);
        this.b.a((Activity) this, configuration);
    }

    @CallSuper
    protected void onDestroy() {
        this.a.K_();
        this.e = true;
        super.onDestroy();
        this.b.e(this);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (!this.b.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    public boolean l_() {
        return this.c && !isFinishing();
    }

    public boolean m_() {
        return this.d;
    }

    public boolean isDestroyed() {
        return this.e;
    }

    public void a(a aVar) {
        this.b.a(aVar);
    }

    public void b(a aVar) {
        this.b.b(aVar);
    }

    public void a(int i, w wVar) {
        this.b.a(i, wVar);
    }

    public final Object onRetainCustomNonConfigurationInstance() {
        p_();
        return this.f;
    }

    public Object a(String str, Object obj) {
        if (F || this.f != null) {
            return obj != null ? this.f.put(str, obj) : this.f.remove(str);
        } else {
            throw new AssertionError();
        }
    }

    public <T> T a_(String str) {
        if (F || this.f != null) {
            return ObjectUtils.a(this.f.get(str));
        }
        throw new AssertionError();
    }

    @CallSuper
    protected void p_() {
    }

    public final void a(j<?> jVar) {
        cvo.a(this.a, jVar);
    }

    public AppCompatDelegate H() {
        return getDelegate();
    }
}
