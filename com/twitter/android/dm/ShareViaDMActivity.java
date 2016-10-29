package com.twitter.android.dm;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.view.View;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.l;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.util.ui.r;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
public class ShareViaDMActivity extends TwitterFragmentActivity implements l, m {
    private boolean a;
    private as b;
    private List<TwitterUser> c;
    @StringRes
    private int d;
    private String e;
    private boolean f;
    private String g;
    private ShareViaDMComposeFragment h;

    public void a(Bundle bundle, d dVar) {
        v vVar = new v(getIntent());
        this.a = bundle != null;
        this.b = vVar.i();
        this.c = vVar.j();
        this.g = vVar.c();
        this.f = vVar.k();
        this.e = vVar.l();
        this.d = vVar.m();
        c();
    }

    public void a(DialogInterface dialogInterface, int i) {
        if (!isChangingConfigurations()) {
            b("dismiss");
            c();
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (-1 == i2) {
            h.a(this, true);
            b("accept");
            c();
        } else if (-2 == i2) {
            h.a(this, false);
            b("not_now");
            c();
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (1 == i) {
            if (i2 == -1 && intent != null) {
                if (PermissionRequestActivity.a(intent)) {
                    h.a(this, true);
                    b("accept");
                } else {
                    h.a(this, false);
                    b("not_now");
                }
            }
            c();
        }
    }

    private void c() {
        if (!isFinishing()) {
            if (this.a) {
                Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag("share_via_dm_fragment");
                if (findFragmentByTag instanceof ShareViaDMComposeFragment) {
                    this.h = (ShareViaDMComposeFragment) findFragmentByTag;
                    return;
                } else {
                    e();
                    return;
                }
            }
            e();
        }
    }

    private void e() {
        this.h = new ShareViaDMComposeFragment();
        this.h.a(((w) new w().a(this.b).a(this.c).a(this.g)).c(this.f).b(this.e).a(this.d).d());
        getSupportFragmentManager().beginTransaction().replace(2131952424, this.h, "share_via_dm_fragment").commit();
        Y().h();
    }

    protected void v_() {
    }

    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(2131034171, 2131034172);
        if (this.h != null) {
            this.h.A();
        }
    }

    protected void o() {
        onBackPressed();
        f();
    }

    private void f() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            r.b(this, currentFocus, false);
        }
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969388);
        tVar.b(12);
        tVar.b(false);
        tVar.a(false);
        return tVar;
    }

    public boolean a(w wVar) {
        return true;
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b("messages", "import_addressbook", "contacts_permission_gate", null, str));
    }
}
