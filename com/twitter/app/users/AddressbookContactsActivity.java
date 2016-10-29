package com.twitter.app.users;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.Toast;
import com.twitter.android.people.bb;
import com.twitter.app.common.base.t;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.buc;
import defpackage.cby;

/* compiled from: Twttr */
public class AddressbookContactsActivity extends FollowActivity {
    private boolean d;

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.c(4);
        a.d(true);
        return a;
    }

    protected l a(Bundle bundle) {
        return (l) new m().a("people_discovery").a(2130968828).d(true).q();
    }

    public void b(Bundle bundle, t tVar) {
        if (m()) {
            super.b(bundle, tVar);
            boolean z = bundle != null && bundle.getBoolean("has_scribed_people_discovery_all_contacts_impression");
            this.d = z;
            new cby(new l(this, (String) e.a(bg.a().c().e()))).a(true);
            i();
            return;
        }
        finish();
    }

    protected UsersFragment c() {
        return new AddressbookContactsFragment();
    }

    protected void onResume() {
        super.onResume();
        if (!m()) {
            finish();
        }
    }

    public void e() {
        super.e();
        int aF = this.a.aF();
        if (!this.d && aF > 0) {
            bbu.a(bb.a(ab().g()).a("all_contacts", BuildConfig.VERSION_NAME, "impression").a((long) aF));
            this.d = true;
        }
    }

    protected boolean f() {
        return true;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("has_scribed_people_discovery_all_contacts_impression", this.d);
    }

    protected void i() {
        setTitle(2131362315);
    }

    protected BroadcastReceiver j() {
        return new a(this);
    }

    protected IntentFilter l() {
        IntentFilter l = super.l();
        l.addAction("live_sync_opt_in_failure_broadcast");
        return l;
    }

    private boolean m() {
        return buc.a(this) && !buc.b(this, e.a(bg.a().c().e()));
    }

    private void u() {
        Toast.makeText(this, 2131361874, 0).show();
        finish();
    }
}
