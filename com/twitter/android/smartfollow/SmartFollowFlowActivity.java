package com.twitter.android.smartfollow;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.android.twitterflows.TwitterFlowsActivity;
import com.twitter.android.twitterflows.a;
import com.twitter.android.twitterflows.b;
import com.twitter.android.twitterflows.c;
import com.twitter.android.twitterflows.j;
import com.twitter.app.common.app.l;
import com.twitter.app.common.inject.o;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.model.stratostore.SourceLocation;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import flow.Flow.Direction;
import flow.f;
import flow.g;
import flow.k;
import java.util.Map;

/* compiled from: Twttr */
public class SmartFollowFlowActivity extends TwitterFlowsActivity {
    private final m a;
    private final b b;
    private b c;
    private SmartFollowFlowData d;
    private a e;
    private FrameLayout f;
    private Map<String, b> g;

    public SmartFollowFlowActivity() {
        this.a = new n(this);
        this.b = new c();
    }

    protected /* synthetic */ com.twitter.app.common.inject.a c(t tVar) {
        return a(tVar);
    }

    public static Intent a(Context context) {
        return new g().a("welcome").a(true).a(0).b("signup").a(SourceLocation.Nux).a(context);
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        com.twitter.app.common.base.t a = super.a(bundle, tVar);
        a.c(true);
        a.d(2130969401);
        return a;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        if (bundle != null) {
            this.d = (SmartFollowFlowData) bundle.getParcelable("flow_data");
        } else {
            this.d = new SmartFollowFlowData();
        }
        long g = bg.a().c().g();
        g a = g.a(getIntent());
        if (a.e() == 0) {
            this.e = new af();
        } else {
            this.e = new ai();
        }
        o U = U();
        ab abVar = (ab) V();
        b[] bVarArr = new b[]{abVar.c(), abVar.d(), abVar.e(), abVar.h(), abVar.f(), abVar.g()};
        r d = r.d();
        for (Object obj : bVarArr) {
            obj.a(this.a);
            obj.a(this.d);
            obj.a(a.a());
            obj.a(g);
            obj.a(this.b);
            obj.a(getApplicationContext());
            obj.a(a.c());
            obj.b(a.b());
            U.a(obj);
            d.b(obj.aF_(), obj);
        }
        this.g = (Map) d.q();
        this.d.a(a.d());
        this.f = (FrameLayout) findViewById(2131953136);
        a(bundle);
    }

    protected ab a(t tVar) {
        return c.a().a(l.p()).a(new o(tVar, g.a(getIntent()).e())).a();
    }

    protected com.twitter.android.twitterflows.d c() {
        return this.e.b();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_data", this.d);
    }

    public void onPause() {
        if (this.c != null) {
            this.c.o();
        }
        super.onPause();
    }

    public void onBackPressed() {
        if (this.c != null) {
            this.c.r();
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.c != null) {
            this.c.a(i, i2, intent);
        }
    }

    public void a(f fVar, g gVar) {
        if (!Q().a() || bg.a().c().d()) {
            flow.t tVar;
            k kVar = fVar.a;
            View childAt = this.f.getChildAt(0);
            if (kVar != null) {
                flow.t e = kVar.e();
                if ((fVar.c == Direction.BACKWARD || fVar.c == Direction.REPLACE) && childAt != null) {
                    e.a(childAt);
                }
                tVar = e;
            } else {
                tVar = null;
            }
            k kVar2 = fVar.b;
            j jVar = (j) kVar2.d();
            this.c = (b) this.g.get(jVar.b());
            e.a(this.c);
            this.c.a(jVar);
            View inflate = getLayoutInflater().inflate(jVar.a(), this.f, false);
            ((BaseSmartFollowScreen) inflate).setPresenter(this.c);
            if (fVar.c == Direction.REPLACE && tVar != null) {
                tVar.b(inflate);
            } else if (fVar.c == Direction.FORWARD) {
                kVar2.e().b(inflate);
                e();
            } else if (fVar.c == Direction.BACKWARD) {
                e();
            }
            a(this.f, childAt, inflate, fVar.c, gVar);
            return;
        }
        v_();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.c != null) {
            this.c.a(i, strArr, iArr);
        }
    }

    private void e() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            com.twitter.util.ui.r.b(this, currentFocus, false);
        }
    }

    protected void v_() {
        if (this.c != null) {
            this.c.a(null, "logout");
        }
        super.v_();
    }
}
