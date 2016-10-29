package com.twitter.android.profilecompletionmodule;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.android.interestpicker.x;
import com.twitter.android.twitterflows.TwitterFlowsActivity;
import com.twitter.android.twitterflows.b;
import com.twitter.android.twitterflows.c;
import com.twitter.android.twitterflows.i;
import com.twitter.app.common.base.m;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.o;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.library.client.l;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import flow.Flow.Direction;
import flow.f;
import flow.g;
import flow.k;
import java.util.Map;

/* compiled from: Twttr */
public class ProfileCompletionFlowActivity extends TwitterFlowsActivity implements m {
    private final e a;
    private final b b;
    private a c;
    private ProfileCompletionModulePendingChanges d;
    private FrameLayout e;
    private Map<String, a> f;

    public ProfileCompletionFlowActivity() {
        this.a = new f(this);
        this.b = new c();
    }

    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    public static Intent a(Context context, String str) {
        return new Intent(context, ProfileCompletionFlowActivity.class).putExtra("intent_extra_scribe_page", str);
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        if (bundle != null) {
            this.d = (ProfileCompletionModulePendingChanges) bundle.getParcelable("pending_changes");
        } else {
            this.d = new ProfileCompletionModulePendingChanges();
        }
        Session c = bg.a().c();
        long g = c.g();
        String stringExtra = getIntent().getStringExtra("intent_extra_scribe_page");
        o U = U();
        y yVar = (y) V();
        a[] aVarArr = new a[]{yVar.e(), yVar.f(), yVar.c(), yVar.d(), yVar.g(), yVar.h()};
        r d = r.d();
        for (Object obj : aVarArr) {
            obj.a(getApplicationContext());
            obj.a(this.a);
            obj.a(this.d);
            obj.a(stringExtra);
            obj.a(g);
            obj.a(this.b);
            U.a(obj);
            d.b(obj.aF_(), obj);
        }
        this.f = (Map) d.q();
        setContentView(2130969236);
        this.e = (FrameLayout) findViewById(2131953136);
        new l(this, c.e()).a().a("profile_overlay", true).apply();
        a(bundle);
    }

    protected y a(t tVar) {
        Session c = com.twitter.app.common.app.l.p().n().c();
        return b.a().a(new g((TwitterUser) e.a(c.f()), x.a(new l(getApplicationContext(), (String) e.a(c.e()))), tVar)).a();
    }

    protected com.twitter.android.twitterflows.d c() {
        return new ae();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("pending_changes", this.d);
    }

    public void onBackPressed() {
        if (this.c != null) {
            this.c.q();
        }
        super.onBackPressed();
    }

    public void a(f fVar, g gVar) {
        flow.t tVar;
        LayoutInflater cloneInContext;
        k kVar = fVar.a;
        View childAt = this.e.getChildAt(0);
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
        flow.t e2 = kVar2.e();
        i iVar = (i) kVar2.d();
        this.c = (a) this.f.get(iVar.b());
        e.a(this.c);
        int c = iVar.c();
        if (c > 0) {
            cloneInContext = getLayoutInflater().cloneInContext(new ContextThemeWrapper((Context) this, c));
        } else {
            cloneInContext = getLayoutInflater();
        }
        View inflate = cloneInContext.inflate(iVar.a(), this.e, false);
        BaseProfileStepScreen baseProfileStepScreen = (BaseProfileStepScreen) inflate;
        baseProfileStepScreen.setPresenter(this.c);
        this.c.a(baseProfileStepScreen);
        if (fVar.c == Direction.REPLACE && tVar != null) {
            tVar.b(inflate);
        } else if (fVar.c == Direction.FORWARD) {
            e2.b(inflate);
            e();
        } else if (fVar.c == Direction.BACKWARD) {
            e();
        }
        a(this.e, childAt, inflate, fVar.c, gVar);
    }

    private void e() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            com.twitter.util.ui.r.b(this, currentFocus, false);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.c != null) {
            this.c.a(i, i2, intent);
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (this.c != null) {
            this.c.a(dialogInterface, i, i2);
        }
    }
}
