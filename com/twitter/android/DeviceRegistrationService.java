package com.twitter.android;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.client.bm;
import com.twitter.android.client.bn;
import com.twitter.android.util.aq;
import com.twitter.internal.network.k;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.bgq;
import defpackage.bpo;
import defpackage.cfb;

/* compiled from: Twttr */
public class DeviceRegistrationService extends IntentService implements bn, bb {
    private bg a;
    private bm b;
    private String c;
    private String d;
    private boolean e;
    private Handler f;

    public DeviceRegistrationService() {
        super("device_registration_service");
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            bbn.a(new NullPointerException("DeviceRegistrationService intent is null"));
            return;
        }
        this.d = intent.getStringExtra("phone_number");
        this.e = intent.getBooleanExtra("disable_sms_notifications", true);
        this.c = intent.getStringExtra("scribe_page_term");
        this.a = bg.a();
        this.b = bm.a((Context) this);
        cfb.b("phone_registration", "Starting Device Register..");
        this.b.a((bn) this);
        bgp a = bgp.a((Context) this, this.a.c(), this.d);
        if (!this.e) {
            a.g();
        }
        this.f = new Handler();
        this.f.postDelayed(new dx(this), 120000);
        a.P();
    }

    public void a(String str) {
        x a = bgq.a(this, this.a.c(), this.d, str, false);
        if (!this.e) {
            a.g();
        }
        az.a((Context) this).a(a, 1, (bb) this);
        this.b.b();
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (i == 1) {
            k g = ((aa) xVar.l().b()).g();
            if (g != null) {
                int i2 = g.a;
                switch (i2) {
                    case 200:
                        cfb.b("phone_registration", "Device registration successful.");
                        LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent("registration_success_broadcast"));
                        ab N = xVar.N();
                        az.a((Context) this).a(new bpo((Context) this, N, N.c, N.e));
                        break;
                    case 400:
                        cfb.b("phone_registration", "Device registration failed: bad request.");
                        break;
                    case 404:
                        cfb.b("phone_registration", "Device registration endpoint not found.");
                        break;
                    default:
                        cfb.b("phone_registration", "Device registration failed with error code " + i2);
                        break;
                }
                String str = i2 == 200 ? "success" : "failure";
                bbu.a(new TwitterScribeLog(bg.a().c().g()).b(this.c, BuildConfig.VERSION_NAME, "phone_number", aq.a(this).i(), str));
            }
            this.f.removeCallbacksAndMessages(null);
        }
    }
}
