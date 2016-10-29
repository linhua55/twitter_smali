package com.twitter.android.profilecompletionmodule.addbirthday;

import android.content.DialogInterface;
import android.os.Parcelable;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profilecompletionmodule.ag;
import com.twitter.android.twitterflows.d;
import com.twitter.android.widget.ec;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import vl;
import vp;
import vq;
import vu;

/* compiled from: Twttr */
public class b extends a<a, AddBirthdayState, AddBirthdayScreen> implements OnDateChangedListener {
    protected ExtendedProfile b;
    protected int c;
    protected int d;
    protected int e;
    protected Visibility f;
    protected Visibility g;
    protected vp h;

    public /* synthetic */ Parcelable c() {
        return t();
    }

    public b(a aVar, AddBirthdayState addBirthdayState) {
        a(aVar);
        if (addBirthdayState == null) {
            this.b = aVar.a;
        } else {
            this.b = addBirthdayState.a;
        }
        a(this.b);
    }

    public String aF_() {
        return "presenter_add_birthday";
    }

    protected void a(ExtendedProfile extendedProfile) {
        if (extendedProfile != null) {
            this.c = extendedProfile.c;
            this.d = extendedProfile.d;
            this.e = extendedProfile.e;
            this.f = extendedProfile.g;
            this.g = extendedProfile.f;
            return;
        }
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = Visibility.e;
        this.g = Visibility.e;
    }

    public AddBirthdayState t() {
        return new AddBirthdayState(u());
    }

    protected ExtendedProfile u() {
        long j = 0;
        com.twitter.model.profile.b a = new com.twitter.model.profile.b().a(this.b != null ? this.b.b : 0).a(this.b != null ? this.b.i : null);
        if (this.b != null) {
            j = this.b.h;
        }
        return (ExtendedProfile) a.b(j).a(this.g).b(this.f).a(this.c).b(this.d).c(this.e).q();
    }

    protected void m() {
        super.m();
        ExtendedProfile u = u();
        boolean a = u.a();
        this.h = new vq(((AddBirthdayScreen) d()).getBirthdateForm(), new vu().a(h()).a(new e(this)).b(new d(this)).c(new c(this)).b());
        a(a);
        b(!a);
        w();
        x();
        c(u);
        b(u);
    }

    protected String n() {
        return "birthday_screen";
    }

    protected void v() {
        b(u());
    }

    protected void b(ExtendedProfile extendedProfile) {
        if (extendedProfile.equals(((a) b()).a) || !extendedProfile.a()) {
            l();
        } else {
            k();
        }
    }

    protected void a(boolean z) {
        if (z) {
            this.h.a(this.c, this.d, this.e);
        } else {
            this.h.a();
        }
    }

    protected void b(boolean z) {
        this.h.a(((a) b()).b, z);
    }

    protected void w() {
        this.h.b();
    }

    protected void x() {
        ((AddBirthdayScreen) d()).getBirthdateForm().c(8);
    }

    protected void c(ExtendedProfile extendedProfile) {
        if (extendedProfile.a()) {
            this.h.a(this.g, this.f, this.e, this.d, this.c, this);
            this.f = this.h.a(this.e, this.d, this.c, this.f);
            return;
        }
        this.h.a(this, ((a) b()).c);
    }

    protected void y() {
    }

    protected void z() {
        a("birthday_year_visibility", "click");
        ((AddBirthdayScreen) d()).getBirthdateForm().d();
    }

    protected void A() {
        a("birthday_date_visibility", "click");
        ((AddBirthdayScreen) d()).getBirthdateForm().e();
    }

    protected void B() {
        a("birthday_field", "click");
        e().a(((ec) ((ec) ((ec) new ec(1).b(2131362591)).d(2131362589)).f(2131362592)).i());
    }

    protected void C() {
        a("birthday_description", "click");
        e().a();
    }

    public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
        this.c = i3;
        this.d = i2 + 1;
        this.e = i;
        v();
        this.f = this.h.a(i, i2, i3, this.f);
    }

    protected d o() {
        return new ag();
    }

    protected d p() {
        return new ag();
    }

    protected void r() {
        this.b = ((a) b()).a;
        f().a(null);
        a(this.b);
        super.r();
    }

    protected void s() {
        ExtendedProfile u = u();
        this.b = u;
        f().a(u);
        super.s();
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        super.a(dialogInterface, i, i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (i2 == -1) {
                    vl birthdateForm = ((AddBirthdayScreen) d()).getBirthdateForm();
                    birthdateForm.a(8);
                    birthdateForm.b(0);
                }
            default:
        }
    }
}
