package com.twitter.android;

import com.twitter.android.util.am;
import com.twitter.app.common.base.g;
import com.twitter.config.d;
import com.twitter.util.aj;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public class lj {
    private final lk a;
    private final am b;
    private boolean c;

    lj(lk lkVar, am amVar) {
        this.a = lkVar;
        this.b = amVar;
    }

    public void a(g gVar) {
        boolean z = gVar != null && gVar.a("is_phone_signup", false);
        Object obj = (gVar == null || !gVar.a("is_from_umf", false)) ? null : 1;
        Object obj2 = (gVar == null || !gVar.a("is_phone100_add_phone", false)) ? null : 1;
        Object obj3 = (gVar == null || !gVar.a("nux_seamful_design_enabled", false)) ? null : 1;
        Object obj4 = (gVar == null || !gVar.a("is_settings_add_phone", false)) ? null : 1;
        Object obj5 = (gVar == null || !gVar.a("is_settings_change_phone", false)) ? null : 1;
        Object obj6 = (gVar == null || !gVar.a("should_prefill_phone", false)) ? null : 1;
        CharSequence f = gVar != null ? gVar.f("custom_header") : null;
        boolean a = d.a("people_discoverability_settings_update_enabled");
        int a2 = a(a);
        this.c = z;
        if (z) {
            this.a.a(2131363805, true);
            this.a.a(true, 2131363268, 2131363267);
            this.a.f();
            this.a.a(true);
            this.a.c();
        } else if (obj != null) {
            this.a.a(a2, false);
            this.a.a(false, 0, 0);
            this.a.a(2131363261);
            this.a.a(false);
        } else if (obj2 != null) {
            this.a.a(true, 2131361870, 2131363267);
            this.a.f();
            this.a.a(a2, false);
            this.a.a(true);
            this.a.c();
        } else if (obj3 != null) {
            this.a.a(true, 2131361870, this.b.a() ? 2131363264 : 2131363263);
            this.a.c();
        } else {
            this.a.a(false);
            this.a.a(false, 0, 0);
            if (!(obj4 == null && obj5 == null)) {
                this.a.a(a2, false);
                this.a.f();
            }
            if (aj.b(f)) {
                this.a.a(f);
            } else {
                this.a.a(this.b.a() ? 2131363264 : 2131363263);
            }
        }
        Object obj7 = null;
        if (gVar != null && gVar.a("extra_flow_data")) {
            obj7 = ((FlowData) gVar.h("extra_flow_data")).b();
        }
        if (obj5 == null && obj6 == null) {
            if (aj.b(obj7)) {
                this.a.a(obj7, false);
            } else {
                this.a.a(this.b.h(), true);
            }
        }
        ar d = ar.d();
        if (z) {
            d.a(new Integer[]{Integer.valueOf(2131363733), Integer.valueOf(2131364068)});
        } else if (a) {
            d.c(Integer.valueOf(2131363733));
        }
        this.a.a((Collection) d.q());
    }

    private int a(boolean z) {
        return this.b.a() ? z ? 2131363272 : 2131363271 : z ? 2131363273 : 2131363270;
    }

    public boolean a() {
        return this.c;
    }
}
