package com.twitter.android.smartfollow.sharelocation;

import android.support.annotation.VisibleForTesting;
import bvs;
import com.twitter.android.lf;
import com.twitter.android.smartfollow.b;

/* compiled from: Twttr */
public class a extends b<ShareLocationState, ShareLocationScreen> {
    public String aF_() {
        return "presenter_share_location";
    }

    protected void q() {
        super.q();
        m();
    }

    protected String p() {
        return "share_location_screen";
    }

    public void t() {
        if (lf.a().a(g(), new String[]{"android.permission.ACCESS_FINE_LOCATION"})) {
            u();
            return;
        }
        d().a(1, new String[]{"android.permission.ACCESS_FINE_LOCATION"});
    }

    public void s() {
        d().b();
        super.s();
    }

    public void a(int i, String[] strArr, int[] iArr) {
        if (i != 1) {
            return;
        }
        if (lf.a().a("android.permission.ACCESS_FINE_LOCATION", strArr, iArr)) {
            u();
            return;
        }
        bvs.a().a(false);
        d().a(new String[]{"android.permission.ACCESS_FINE_LOCATION"}, b());
    }

    @VisibleForTesting
    protected void u() {
        bvs.a().a(true);
        d().b();
        super.t();
    }
}
