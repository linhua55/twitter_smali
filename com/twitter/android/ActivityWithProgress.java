package com.twitter.android;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.AppConfig;
import com.twitter.library.client.navigation.w;
import com.twitter.media.ui.AnimatingProgressBar;
import com.twitter.util.z;
import defpackage.bcc;
import defpackage.bmv;
import defpackage.bmw;
import defpackage.bmx;

/* compiled from: Twttr */
public abstract class ActivityWithProgress extends TwitterFragmentActivity implements z<bmx> {
    protected static boolean a;
    protected SharedPreferences b;
    private bmv c;
    private AnimatingProgressBar d;

    static {
        a = false;
    }

    public boolean a(w wVar) {
        boolean a = super.a(wVar);
        this.d = (AnimatingProgressBar) findViewById(2131952686);
        return a;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            this.c.c();
            bmw.a().b(this.c, 2);
            this.c = null;
            bmw.a().b((z) this, 4);
        }
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.b = PreferenceManager.getDefaultSharedPreferences(this);
    }

    protected void onResume() {
        super.onResume();
        s_();
    }

    public void a(bmx bmx) {
        if (this.d != null && bmx != null) {
            if (bmx.b == 5) {
                this.d.b(a ? bmx.c : 0);
            } else {
                this.d.a(bmx.c);
            }
        }
    }

    protected void s_() {
        if (this.d != null) {
            this.c = new bmv(4);
            this.c.b(2);
            bmw.a().a((z) this, 4);
            AppConfig m = AppConfig.m();
            boolean z = (m.a() || m.b()) && this.b != null && this.b.getBoolean("data_usage_meter", false);
            a = z;
            if (a) {
                bcc.a().b();
                bmw.a().a((z) this, 5);
            }
            AnimatingProgressBar animatingProgressBar = this.d;
            if (a) {
                z = false;
            } else {
                z = true;
            }
            animatingProgressBar.setHideOnComplete(z);
            this.d.setResetPrimaryOnComplete(true);
            this.d.setResetSecondaryOnComplete(false);
        }
    }
}
