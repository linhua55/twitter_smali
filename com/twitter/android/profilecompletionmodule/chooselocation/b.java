package com.twitter.android.profilecompletionmodule.chooselocation;

import android.os.Parcelable;
import android.text.Editable;
import android.widget.ArrayAdapter;
import com.twitter.android.LocationState;
import com.twitter.android.if;
import com.twitter.android.ig;
import com.twitter.android.ih;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profilecompletionmodule.ah;
import com.twitter.android.twitterflows.d;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class b extends a<a, ChooseLocationState, ChooseLocationScreen> implements ig {
    protected if b;
    protected String c;
    protected LocationState d;

    public /* synthetic */ Parcelable c() {
        return t();
    }

    public b(a aVar, ChooseLocationState chooseLocationState) {
        a(aVar);
        if (chooseLocationState == null) {
            this.d = aVar.a;
            this.c = aVar.b.q;
            return;
        }
        this.d = chooseLocationState.a;
        this.c = chooseLocationState.b;
    }

    public String aF_() {
        return "presenter_choose_location";
    }

    public ChooseLocationState t() {
        if (this.b != null) {
            this.d.b = this.b.c();
            this.d.a = this.b.d();
        }
        return new ChooseLocationState(this.d, this.c);
    }

    protected void m() {
        super.m();
        ChooseLocationScreen chooseLocationScreen = (ChooseLocationScreen) d();
        v();
        this.b.a(this.d);
        this.b.a(((a) b()).b.q);
        this.b.a(this);
        chooseLocationScreen.setAdapter(z());
        if (aj.b(this.c)) {
            chooseLocationScreen.setLocation(this.c);
        }
        chooseLocationScreen.a();
        b(this.c);
    }

    protected String n() {
        return "location_screen";
    }

    protected void b(String str) {
        this.c = str;
        u();
    }

    protected void u() {
        if (w()) {
            k();
        } else {
            l();
        }
    }

    protected void v() {
        if (this.b == null) {
            this.b = new ih(h(), i(), j());
        }
    }

    protected boolean w() {
        v();
        return ((ChooseLocationScreen) d()).a(this.b.b()) || this.b.e();
    }

    protected ArrayAdapter<TwitterPlace> z() {
        return this.b.a();
    }

    protected void a(Editable editable) {
        b(editable.toString());
        this.b.a(editable);
    }

    protected void c(String str) {
        this.b.c(str);
    }

    protected void a(int i, String str) {
        this.b.a(i, str, this.a, this.a);
        TwitterPlace c = this.b.c();
        String str2 = c != null ? c.d : null;
        b(str2);
        ((ChooseLocationScreen) d()).setLocation(str2);
    }

    protected void d(String str) {
        this.b.c(str);
    }

    public void r() {
        f().b(null);
        f().a(null);
        super.r();
    }

    public void s() {
        if (w()) {
            TwitterPlace c = this.b.c();
            f().a(c);
            f().b(c != null ? c.d : this.c);
        }
        super.s();
    }

    protected d o() {
        return A();
    }

    protected d p() {
        return A();
    }

    protected d A() {
        TwitterUser twitterUser = ((a) b()).b;
        if (f().g() || ((!aj.a(twitterUser.e) && !twitterUser.g()) || !aj.a(twitterUser.q) || !twitterUser.s || !aj.a(twitterUser.g))) {
            return new ah();
        }
        return null;
    }

    public void x() {
        ((ChooseLocationScreen) d()).b();
    }

    public void y() {
    }

    public void a(InjectionScope injectionScope) {
        super.a(injectionScope);
        if (injectionScope == InjectionScope.VIEW && this.b != null) {
            this.b.a(null);
            this.b = null;
        }
    }
}
