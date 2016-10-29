package com.twitter.android.smartfollow.interestpicker;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import cgu;
import com.twitter.android.interestpicker.ah;
import com.twitter.android.interestpicker.ap;
import com.twitter.android.interestpicker.aw;
import com.twitter.android.interestpicker.h;
import com.twitter.android.interestpicker.w;
import com.twitter.android.interestpicker.x;
import com.twitter.android.smartfollow.SmartFollowFlowData;
import com.twitter.android.smartfollow.b;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.model.json.stratostore.JsonInterestSelections;
import com.twitter.util.ab;
import com.twitter.util.al;
import com.twitter.util.serialization.s;
import java.util.List;
import java.util.Locale;
import te;
import zr;

/* compiled from: Twttr */
public class a extends b<InterestPickerState, InterestPickerScreen> implements w {
    private final x i;
    private final boolean j;

    public a(x xVar, int i) {
        this.j = zr.a(i);
        this.i = xVar;
        this.i.b(this.j);
        this.i.e();
    }

    public String aF_() {
        return "presenter_interest_picker";
    }

    public void a(InjectionScope injectionScope) {
        super.a(injectionScope);
        if (injectionScope == InjectionScope.RETAINED) {
            this.i.f();
        } else if (injectionScope == InjectionScope.VIEW) {
            this.i.a(null);
        }
    }

    protected void q() {
        super.q();
        ((InterestPickerScreen) b()).setInterestPickerV11Enabled(this.j);
        this.i.a(true);
        this.i.a(this);
        this.i.a((ah) b());
        this.i.a();
        this.i.c(h());
        Context g = g();
        Session c = bg.a().c();
        te teVar = new te(g, c, "welcome_flow");
        if (!this.j) {
            this.i.a(new ap(g, c, teVar));
        }
    }

    protected void u() {
        this.i.c();
    }

    public void b(long j) {
        d().a(j, h(), 1);
    }

    public void s() {
        this.i.a("skip");
        SmartFollowFlowData e = e();
        e.a(new String[0]);
        e.b(new String[0]);
        super.s();
    }

    public void t() {
        SmartFollowFlowData e = e();
        List a = this.i.a(1);
        e.a((String[]) a.toArray(new String[a.size()]));
        a = this.i.a(2);
        e.b((String[]) a.toArray(new String[a.size()]));
        this.i.a("selected");
        this.i.a(this.i.a(0));
        if (d.a("interest_persistence_request_enabled")) {
            v();
        }
        super.t();
    }

    @VisibleForTesting
    protected void v() {
        Locale locale = ((InterestPickerScreen) b()).getResources().getConfiguration().locale;
        String c = com.twitter.util.a.c(locale);
        String valueOf = String.valueOf(al.b());
        JsonInterestSelections jsonInterestSelections = new JsonInterestSelections();
        jsonInterestSelections.a = this.i.a(e().e(), locale.getCountry(), c, valueOf);
        d().a(jsonInterestSelections);
    }

    protected void w() {
        this.i.d();
    }

    protected String p() {
        return "interest_picker_screen";
    }

    public void a(cgu<h> cgu_com_twitter_android_interestpicker_h) {
        if (cgu_com_twitter_android_interestpicker_h.aU_() <= 0) {
            return;
        }
        if (this.i.b() > 0) {
            m();
        } else {
            n();
        }
    }

    public void a(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            this.i.b((List) ab.a(intent.getExtras(), "extra_search_terms", s.a(aw.e)));
        }
    }
}
