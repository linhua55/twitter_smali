package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.twitter.android.settings.NotificationsTimelineSettingsActivity;
import com.twitter.android.vit.VitFilterBarViewDelegate;
import com.twitter.android.vit.VitNotificationsEducationOverlay;
import com.twitter.android.vit.a;
import com.twitter.app.main.MainActivity;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class VitActivityFragment extends ActivityFragment {
    private l a;
    private a b;
    private boolean c;

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        u();
    }

    private void u() {
        this.a = new l(getActivity(), aT().e(), "vit_notifications");
        q();
        this.c = v();
    }

    protected void a() {
        super.a();
        if (getActivity() instanceof MainActivity) {
            ((MainActivity) getActivity()).showFragmentBottomBar(n());
        }
        if (this.c != v()) {
            u();
            if (l() == 0 || l() == 2) {
                a(this.c ? 2 : 0, m());
            }
            if (this.b != null) {
                this.b.a(this.c);
            }
        }
    }

    protected void d() {
        super.d();
        if (VitNotificationsEducationOverlay.a(getActivity(), aT().f())) {
            VitNotificationsEducationOverlay.b(getActivity());
        }
    }

    protected void e() {
        super.e();
        if (getActivity() instanceof MainActivity) {
            ((MainActivity) getActivity()).m();
        }
    }

    public View n() {
        VitFilterBarViewDelegate vitFilterBarViewDelegate = new VitFilterBarViewDelegate(getActivity());
        this.b = new a(vitFilterBarViewDelegate, this);
        this.b.a(this.c);
        return vitFilterBarViewDelegate.a();
    }

    public void p() {
        startActivity(new Intent(getActivity(), NotificationsTimelineSettingsActivity.class).putExtra("NotificationsTimelineSettingsActivity_account_name", aT().e()));
    }

    private boolean v() {
        return new l(getActivity(), aT().e()).getBoolean("quality_filter", true);
    }

    void b(boolean z) {
        new l(getActivity(), aT().e()).a().a("quality_filter", z).apply();
    }

    void q() {
        int r = r();
        if (r > t()) {
            if (d.a("vit_notifications_quality_config_abuse_setting_should_overwrite")) {
                boolean a = d.a("vit_notifications_quality_config_abuse_setting");
                b(a);
                c(a);
            }
            c(r);
        }
    }

    int r() {
        return d.a("vit_notifications_quality_config_revision", 1);
    }

    int t() {
        return w().getInt("quality_filter_config_revision", 1);
    }

    void c(int i) {
        w().a().a("quality_filter_config_revision", i).apply();
    }

    private l w() {
        return this.a;
    }

    void c(boolean z) {
        String str = z ? "default_on" : "default_off";
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b("settings:notifications:vit:abuse_filter", str));
    }
}
