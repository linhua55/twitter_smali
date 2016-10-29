package com.twitter.app.users;

import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.addressbook.a;
import com.twitter.android.addressbook.c;
import com.twitter.android.hy;
import com.twitter.android.mx;
import com.twitter.android.people.bb;
import com.twitter.android.xs;
import com.twitter.app.common.list.r;
import com.twitter.app.common.list.t;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import defpackage.bbu;
import defpackage.cni;

/* compiled from: Twttr */
public class AddressbookContactsFragment extends InjectableUsersFragment<d> implements c, e {
    private bb E;
    private boolean F;
    private boolean G;

    public /* synthetic */ o t() {
        return r();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.F = bundle.getBoolean("state_has_scribed_impression");
        }
        this.E = bb.a(aT().g());
        a((r) new b(this));
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.a(2131361880);
        tVar.b(2131361879);
        tVar.f(2130968620);
    }

    public void a() {
        super.a();
        ((xs) az()).notifyDataSetChanged();
    }

    public d r() {
        return new d(getActivity(), this.m, this.Y, this, this, this);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("state_has_scribed_impression", this.F);
    }

    public void a(int i) {
        if (!this.F) {
            bbu.a(this.E.a("active_contacts", BuildConfig.VERSION_NAME, "impression").a((long) i));
            this.F = true;
        }
    }

    String c(int i) {
        return "people:address_book:active_contacts";
    }

    String e(int i) {
        return "people:address_book:active_contacts";
    }

    void f(int i) {
        if (i == 0) {
            this.E.b();
        }
    }

    public void b() {
        g_(3);
    }

    hy g(@DrawableRes int i) {
        return new hy(getContext(), i, this, this.m, w(), aM(), aN(), "people:address_book:all_contacts", new c(this));
    }

    protected void a(x xVar, int i, int i2) {
        boolean z = true;
        super.a(xVar, i, i2);
        switch (i) {
            case mx.TweetView_mediaTagIcon /*27*/:
                if (((aa) xVar.l().b()).b()) {
                    this.G = true;
                }
                a aVar = (a) ((d) this.a).c();
                if (this.G) {
                    z = false;
                }
                aVar.a(z);
            default:
        }
    }

    TwitterScribeLog a(long j, int i, cni cni, String str, String str2, int i2) {
        return (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(M().g()).b(j, cni, str, b(i, i2)).b(str2)).a(aD());
    }

    private int b(int i, int i2) {
        int a = ((a) ((d) this.a).c()).a(i);
        if (i2 == 39) {
            return a - ((a) ((d) this.a).c()).getCount();
        }
        return a;
    }
}
