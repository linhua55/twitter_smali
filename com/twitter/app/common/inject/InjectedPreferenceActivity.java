package com.twitter.app.common.inject;

import android.os.Bundle;
import android.support.annotation.CallSuper;
import com.twitter.app.common.base.BasePreferenceActivity;
import com.twitter.app.common.di.c;
import com.twitter.app.common.di.f;

/* compiled from: Twttr */
public class InjectedPreferenceActivity extends BasePreferenceActivity {
    private o a;
    private a b;
    private b c;

    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t a = t.a(bundle);
        this.b = (a) a_("retained_component");
        if (this.b == null) {
            this.b = a(a);
            a("retained_component", this.b);
        }
        this.c = b(a);
        this.a = new o(this);
    }

    protected a a(t tVar) {
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
}
