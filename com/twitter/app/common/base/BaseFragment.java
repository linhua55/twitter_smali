package com.twitter.app.common.base;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.app.common.util.l;
import com.twitter.app.common.util.m;
import com.twitter.app.common.util.u;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.bbn;
import defpackage.cvo;
import defpackage.dbg;
import rx.an;

/* compiled from: Twttr */
public class BaseFragment extends Fragment implements p, u {
    private static final Object a;
    protected Context T;
    private final dbg b;
    private final m c;
    private final Handler d;
    private String e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private Runnable n;

    public BaseFragment() {
        this.b = new dbg();
        this.c = new m();
        this.d = new Handler(Looper.getMainLooper());
    }

    static {
        a = new Object();
    }

    public g o() {
        return g.c(getArguments());
    }

    public void a(g gVar) {
        setArguments(gVar.b);
    }

    @CallSuper
    public void onCreate(Bundle bundle) {
        this.c.a(this, bundle);
        super.onCreate(bundle);
        this.T = getActivity().getApplicationContext();
        g o = o();
        this.i = o.q();
        this.j = o.p();
        boolean z = this.k || (bundle != null && bundle.getBoolean("state_explicit_focus_on_resume"));
        this.k = z;
        if (this.i && this.k) {
            throw new IllegalStateException("The fragment is configured to call focus() implicitly.");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = a(layoutInflater, bundle);
        if (!(a == null || viewGroup == null)) {
            LayoutParams a2 = r.a(getContext(), viewGroup);
            if (a2 != null) {
                a2.width = -1;
                a2.height = -1;
                a.setLayoutParams(a2);
            }
        }
        return a;
    }

    protected View a(LayoutInflater layoutInflater, Bundle bundle) {
        return null;
    }

    @CallSuper
    public void onStart() {
        this.c.a(this);
        super.onStart();
        this.f = true;
    }

    public final void onResume() {
        this.c.b(this);
        super.onResume();
        this.g = true;
        if (this.i || this.k) {
            g();
        }
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c.a(this, configuration);
    }

    public final void onPause() {
        boolean z = false;
        this.g = false;
        boolean z2 = this.l;
        h();
        if (!this.i && z2) {
            z = true;
        }
        this.k = z;
        super.onPause();
        this.c.e(this);
    }

    @CallSuper
    public void onStop() {
        this.f = false;
        super.onStop();
        this.c.f(this);
    }

    @CallSuper
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("state_explicit_focus_on_resume", this.k);
        this.c.b(this, bundle);
    }

    @CallSuper
    public void onDestroy() {
        a("SENTINEL", null);
        this.b.K_();
        this.h = true;
        super.onDestroy();
        this.c.g(this);
    }

    public final boolean ad() {
        return getActivity() != null;
    }

    public final boolean ae() {
        return this.i;
    }

    public boolean l_() {
        return this.f;
    }

    public boolean m_() {
        return this.g;
    }

    public boolean isDestroyed() {
        return this.h;
    }

    public void b(l lVar) {
        this.c.a(lVar);
    }

    public void a(l lVar) {
        this.c.b(lVar);
    }

    public final void af() {
        if (this.i) {
            throw new IllegalStateException("The fragment is configured to call focus() implicitly.");
        }
        g();
    }

    private void g() {
        if (!this.l) {
            if (this.g) {
                this.k = false;
                a();
                if (this.n == null) {
                    this.n = new f(this);
                }
                if (this.j > 0) {
                    this.d.postDelayed(this.n, this.j);
                    return;
                } else {
                    this.n.run();
                    return;
                }
            }
            this.k = true;
        }
    }

    @CallSuper
    protected void a() {
        this.c.c(this);
        this.l = true;
    }

    @CallSuper
    protected void d() {
        this.m = true;
    }

    public final void ag() {
        if (this.i) {
            throw new IllegalStateException("The fragment is configured to call unfocus() implicitly.");
        }
        h();
    }

    private void h() {
        if (this.l) {
            if (!this.m) {
                this.d.removeCallbacks(this.n);
            }
            e();
        }
        this.k = false;
    }

    @CallSuper
    protected void e() {
        this.m = false;
        this.l = false;
        this.c.d(this);
    }

    public final boolean ah() {
        return this.l;
    }

    public final boolean ai() {
        return this.m;
    }

    public Object a(String str, Object obj) {
        return i().a(e(str), obj);
    }

    public <T> T a_(String str) {
        return i().a_(e(str));
    }

    String e(String str) {
        if (this.e == null) {
            this.e = (String) e.b(getTag(), getClass().getSimpleName());
            if (a("SENTINEL", a) != null) {
                bbn.a(new IllegalStateException("The fragment does not have a unique identity in the host activity. Assign a unique tag to this fragment."));
            }
        }
        return this.e + "_" + str;
    }

    public final void a(an anVar) {
        this.b.a(anVar);
    }

    public final void a(j<?> jVar) {
        cvo.a(this.b, jVar);
    }

    private p i() {
        FragmentActivity activity = getActivity();
        if (activity instanceof p) {
            return (p) activity;
        }
        if (activity == null) {
            throw new IllegalStateException("The fragment is not attached.");
        }
        throw new IllegalStateException("The parent activity does not implement Retainer.");
    }
}
