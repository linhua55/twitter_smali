package com.twitter.app.common.inject;

import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.di.c;
import com.twitter.app.common.di.f;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class InjectedFragment extends BaseFragment {
    private o a;
    private a b;
    private b c;
    private v d;
    private Bundle e;

    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t a = t.a(bundle);
        this.b = (a) a_("retained_component");
        if (this.b == null) {
            this.b = b(a);
            a("retained_component", (Object) this.b);
        }
        this.c = d(a);
        this.a = new o((BaseFragment) this);
    }

    protected a b(t tVar) {
        return null;
    }

    protected b d(t tVar) {
        return null;
    }

    public void onDestroy() {
        if (this.c != null) {
            f.a(this.c);
        }
        FragmentActivity activity = getActivity();
        Object obj = (activity == null || !activity.isChangingConfigurations()) ? null : 1;
        if (obj == null && this.b != null) {
            c.a(this.b);
        }
        super.onDestroy();
    }

    public final boolean aj() {
        return this.d != null;
    }

    public final v ak() {
        if (this.d != null) {
            return this.d;
        }
        throw new IllegalStateException("The view host is not available.");
    }

    protected v b(LayoutInflater layoutInflater, Bundle bundle) {
        return null;
    }

    @CallSuper
    protected void a(v vVar) {
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        Bundle bundle2;
        if (this.d != null) {
            al().b(this.d);
            this.d = null;
        }
        if (bundle != null) {
            bundle2 = (Bundle) t.a(bundle).a((String) e.a(bundle.getString("view_host_id")));
        } else {
            bundle2 = this.e;
        }
        if (this.c != null) {
            this.d = this.c.c();
        }
        if (this.d == null) {
            this.d = b(layoutInflater, bundle2);
        }
        if (this.d == null) {
            return null;
        }
        a(this.d);
        al().a(this.d);
        return this.d.aO_();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.d != null) {
            String aF_ = this.d.aF_();
            bundle.putString("view_host_id", aF_);
            this.e = (Bundle) t.a(bundle).a(aF_);
        }
    }

    public o al() {
        return (o) e.a(this.a);
    }

    public <RC extends a> RC am() {
        return (a) ObjectUtils.a(e.a(this.b));
    }
}
