package com.twitter.library.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.b;
import com.twitter.library.network.a;
import com.twitter.library.network.an;
import com.twitter.library.network.ap;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.model.account.OAuthToken;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.List;

/* compiled from: Twttr */
public class AuthTokenService extends Service {
    private Looper a;
    private Handler b;
    private Handler c;
    private an d;
    private final IBinder e;

    public AuthTokenService() {
        this.e = new g(this);
    }

    public void onCreate() {
        super.onCreate();
        this.d = an.a((Context) this);
        HandlerThread handlerThread = new HandlerThread("AuthTokenService", 10);
        handlerThread.start();
        this.a = handlerThread.getLooper();
        this.b = new Handler(this.a);
        this.c = new Handler();
    }

    public void onDestroy() {
        super.onDestroy();
        this.a.quit();
    }

    public IBinder onBind(Intent intent) {
        return this.e;
    }

    public boolean a(i iVar, String str, String str2, String str3) {
        return this.b.post(new h(this, iVar, str, str2, str3));
    }

    void b(i iVar, String str, String str2, String str3) {
        a wVar = new w(null, str, str2);
        CharSequence append = new StringBuilder(this.d.a).append("/oauth/request_token");
        ap apVar = new ap();
        apVar.a("x_auth_mode", "reverse_auth");
        append.append(apVar.b());
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        if (new j((Context) this, append).a(RequestMethod.POST).a(wVar).a(new b(byteArrayOutputStream, null)).a().c().j()) {
            c(iVar, str, new String(byteArrayOutputStream.toByteArray()), str3);
        } else {
            a(iVar, 0, null, null, 0);
        }
    }

    private void c(i iVar, String str, String str2, String str3) {
        OAuthToken b;
        com.twitter.app.common.account.a b2 = com.twitter.library.util.b.b(str3);
        if (b2 != null) {
            b = com.twitter.library.util.b.b(b2);
        } else {
            b = null;
        }
        if (b == null) {
            a(iVar, 0, null, null, 0);
            return;
        }
        a wVar = new w(b);
        CharSequence append = new StringBuilder(this.d.a).append("/oauth/access_token");
        ap apVar = new ap();
        apVar.a("x_reverse_auth_target", str);
        apVar.a("x_reverse_auth_parameters", str2);
        append.append(apVar.b());
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        HttpOperation c = new j((Context) this, append).a(RequestMethod.POST).a(wVar).a(new b(byteArrayOutputStream, null)).a().c();
        if (c.j()) {
            List a = w.a(new String(byteArrayOutputStream.toByteArray()), true);
            a(iVar, c.l().a, new OAuthToken(w.a(a, "oauth_token"), w.a(a, "oauth_token_secret")), w.a(a, "screen_name"), Long.parseLong(w.a(a, "user_id")));
            return;
        }
        a(iVar, c.l().a, null, null, 0);
    }

    private void a(i iVar, int i, OAuthToken oAuthToken, String str, long j) {
        this.c.post(new j(iVar, i, oAuthToken, str, j));
    }
}
