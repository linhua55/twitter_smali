package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.settings.NotificationsTimelineSettingsActivity;
import com.twitter.android.vit.VitNotificationsEducationOverlay;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.i;
import com.twitter.app.common.list.j;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class VitNotificationsActivity extends AbsTabbedPageFragmentActivity {
    static final Uri c;
    static final Uri d;
    static final Uri e;
    private boolean f;
    private l g;

    static {
        c = Uri.parse("twitter://vit_notifications/all");
        d = Uri.parse("twitter://vit_notifications/mentions");
        e = Uri.parse("twitter://vit_notifications/verified");
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130969532);
        a.d(true);
        return a;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.g = new l(this, ab().e(), "vit_notifications");
        h();
        setTitle(2131363171);
        this.f = l();
        a(a(this.f));
        this.a.setOffscreenPageLimit(2);
        a_(Uri.parse(c()));
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017201);
        return true;
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953497) {
            return super.a(acVar);
        }
        startActivity(new Intent(this, NotificationsTimelineSettingsActivity.class).putExtra("NotificationsTimelineSettingsActivity_account_name", ab().e()));
        return true;
    }

    protected void onResume() {
        super.onResume();
        if (this.f != l()) {
            startActivity(new Intent(this, VitNotificationsActivity.class));
            overridePendingTransition(2131034190, 2131034191);
            finish();
        } else if (VitNotificationsEducationOverlay.a(this, ab().f())) {
            VitNotificationsEducationOverlay.b(this);
        }
    }

    protected l o_() {
        return this.g;
    }

    List<at> a(boolean z) {
        return Arrays.asList(new at[]{a(c, 0, z), a(d, 1, z), a(e, 2, z)});
    }

    private at a(Uri uri, int i, boolean z) {
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3 = true;
        if (c.equals(uri)) {
            if (!z) {
                z3 = false;
            }
            i2 = 2131364180;
            z2 = false;
            i3 = 2131364179;
            i4 = z3;
        } else if (d.equals(uri)) {
            if (!z) {
                z3 = false;
            }
            i2 = 2131364182;
            i3 = 2131364181;
            z2 = true;
            boolean z4 = z3;
        } else if (e.equals(uri)) {
            z2 = false;
            i3 = 2131364183;
            i4 = 4;
            i2 = 2131364184;
        } else {
            throw new IllegalArgumentException("Invalid page: " + uri);
        }
        i iVar = (i) ((j) ((j) ((j) ((j) a(j.a(getIntent()))).b(i2)).a("activity_type", i4)).a("fragment_page_number", i)).a("should_fetch_new_data", false);
        iVar.a("activity_mention_only", z2);
        return new au(uri, ActivityFragment.class).a(getString(i3)).a(iVar.b()).a();
    }

    private boolean l() {
        return new l(this, ab().e()).getBoolean("quality_filter", true);
    }

    void b(boolean z) {
        new l(this, ab().e()).a().a("quality_filter", z).apply();
    }

    void h() {
        int i = i();
        if (i > j()) {
            if (com.twitter.config.d.a("vit_notifications_quality_config_abuse_setting_should_overwrite")) {
                boolean a = com.twitter.config.d.a("vit_notifications_quality_config_abuse_setting");
                b(a);
                c(a);
            }
            a(i);
        }
    }

    int i() {
        return com.twitter.config.d.a("vit_notifications_quality_config_revision", 1);
    }

    int j() {
        return o_().getInt("quality_filter_config_revision", 1);
    }

    void a(int i) {
        o_().a().a("quality_filter_config_revision", i).apply();
    }

    void c(boolean z) {
        String str = z ? "default_on" : "default_off";
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b("settings:notifications:vit:abuse_filter", str));
    }
}
