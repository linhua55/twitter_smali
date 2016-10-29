package com.twitter.app.common.inject;

import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.view.LayoutInflater;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.di.c;
import com.twitter.app.common.di.f;
import com.twitter.app.common.util.t;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class InjectedFragmentActivity extends BaseFragmentActivity {
    private o a;
    private a b;
    private b c;
    private v d;

    @CallSuper
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t a = t.a(bundle);
        this.b = (a) a_("retained_component");
        if (this.b == null) {
            this.b = c(a);
            a("retained_component", (Object) this.b);
        }
        this.c = b(a);
        this.a = new o((t) this);
        this.d = a(getLayoutInflater(), (Bundle) a.a("ViewHost"));
        if (this.d != null) {
            a(this.d);
            b(this.d);
            this.a.a(this.d);
        }
    }

    protected a c(t tVar) {
        return null;
    }

    protected b b(t tVar) {
        return null;
    }

    protected void onDestroy() {
        if (this.c != null) {
            f.a(this.c);
        }
        if (!(this.b == null || isChangingConfigurations())) {
            c.a(this.b);
        }
        super.onDestroy();
    }

    public o U() {
        return (o) e.a(this.a);
    }

    protected <RC extends a> RC V() {
        return (a) ObjectUtils.a(e.a(this.b));
    }

    public <AC extends b> AC W() {
        return (b) ObjectUtils.a(e.a(this.c));
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        return null;
    }

    @CallSuper
    protected void a(v vVar) {
    }

    public void b(v vVar) {
        this.d = vVar;
        setContentView(vVar != null ? vVar.aO_() : null);
    }
}
