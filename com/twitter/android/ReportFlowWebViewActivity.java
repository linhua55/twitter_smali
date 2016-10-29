package com.twitter.android;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.webkit.WebView;
import com.twitter.android.client.TwitterWebViewActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.util.aq;
import defpackage.bmz;
import defpackage.bna;
import defpackage.bok;
import defpackage.cni;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ReportFlowWebViewActivity extends TwitterWebViewActivity {
    private boolean a;
    private long b;

    public ReportFlowWebViewActivity() {
        this.a = false;
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.b(14);
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        setTitle(getString(2131363476));
        nn j = j();
        String valueOf = String.valueOf(ab().g());
        String valueOf2 = String.valueOf(j.a());
        long c = j.c();
        long b = j.b();
        String d = j.d();
        String valueOf3 = String.valueOf(j.f());
        String valueOf4 = String.valueOf(j.g());
        Builder buildUpon = Uri.parse(getString(2131364380)).buildUpon();
        buildUpon.appendQueryParameter("source", d);
        buildUpon.appendQueryParameter("reporter_user_id", valueOf);
        if (c != 0) {
            buildUpon.appendQueryParameter("reported_tweet_id", String.valueOf(c));
        }
        buildUpon.appendQueryParameter("reported_user_id", valueOf2);
        buildUpon.appendQueryParameter("is_media", valueOf3);
        buildUpon.appendQueryParameter("is_promoted", valueOf4);
        if (b != 0) {
            buildUpon.appendQueryParameter("reported_moment_id", String.valueOf(b));
        }
        a(buildUpon.toString());
        this.b = c;
    }

    public void onBackPressed() {
        if (this.a || !f()) {
            super.onBackPressed();
        } else {
            i();
        }
    }

    protected void o() {
        if (this.a) {
            finish();
        } else {
            super.o();
        }
    }

    protected boolean a(WebView webView, Uri uri) {
        if (uri.toString().toLowerCase().startsWith(getString(2131364381)) || BouncerWebViewActivity.a((Context) this, uri)) {
            return false;
        }
        aq.a((Context) this, uri);
        return true;
    }

    protected boolean c() {
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.webkit.WebView r10, java.lang.String r11) {
        /*
        r9 = this;
        r4 = 3;
        r3 = 2;
        r0 = 0;
        r1 = -1;
        r2 = 1;
        r5 = r11.toLowerCase();
        r6 = 2131364379; // 0x7f0a0a1b float:1.8348593E38 double:1.0530339184E-314;
        r6 = r9.getString(r6);
        r5 = r5.startsWith(r6);
        if (r5 == 0) goto L_0x006e;
    L_0x0016:
        r5 = r9.getLayoutInflater();
        r6 = 2130969282; // 0x7f0402c2 float:1.7547241E38 double:1.0528387146E-314;
        r7 = 0;
        r5 = r5.inflate(r6, r7, r0);
        r6 = r9.X();
        if (r6 == 0) goto L_0x0031;
    L_0x0028:
        r7 = new com.twitter.internal.android.widget.ToolBar$LayoutParams;
        r8 = 5;
        r7.<init>(r8);
        r6.a(r5, r7);
    L_0x0031:
        r6 = 2131951937; // 0x7f130141 float:1.9540303E38 double:1.0533242107E-314;
        r5 = r5.findViewById(r6);
        r6 = new com.twitter.android.nm;
        r6.<init>(r9);
        r5.setOnClickListener(r6);
        r9.a = r2;
        r5 = android.net.Uri.parse(r11);
        r6 = "action";
        r6 = r5.getQueryParameter(r6);
        if (r6 == 0) goto L_0x00a6;
    L_0x004f:
        r5 = r9.getIntent();
        r5 = com.twitter.android.nn.a(r5);
        r5 = r5.h();
        if (r5 == 0) goto L_0x0060;
    L_0x005d:
        r9.b(r6);
    L_0x0060:
        r5 = r6.hashCode();
        switch(r5) {
            case -382454902: goto L_0x006f;
            case 3363353: goto L_0x0079;
            case 93832333: goto L_0x0084;
            case 96784904: goto L_0x008f;
            default: goto L_0x0067;
        };
    L_0x0067:
        r0 = r1;
    L_0x0068:
        switch(r0) {
            case 0: goto L_0x009a;
            case 1: goto L_0x009e;
            case 2: goto L_0x00a2;
            case 3: goto L_0x006e;
            default: goto L_0x006b;
        };
    L_0x006b:
        r9.a(r1);
    L_0x006e:
        return;
    L_0x006f:
        r5 = "unfollow";
        r5 = r6.equals(r5);
        if (r5 == 0) goto L_0x0067;
    L_0x0078:
        goto L_0x0068;
    L_0x0079:
        r0 = "mute";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0067;
    L_0x0082:
        r0 = r2;
        goto L_0x0068;
    L_0x0084:
        r0 = "block";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0067;
    L_0x008d:
        r0 = r3;
        goto L_0x0068;
    L_0x008f:
        r0 = "error";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0067;
    L_0x0098:
        r0 = r4;
        goto L_0x0068;
    L_0x009a:
        r9.a(r2);
        goto L_0x006e;
    L_0x009e:
        r9.a(r3);
        goto L_0x006e;
    L_0x00a2:
        r9.a(r4);
        goto L_0x006e;
    L_0x00a6:
        r0 = r9.b;
        r2 = 0;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 <= 0) goto L_0x006e;
    L_0x00ae:
        r0 = "report_type";
        r0 = r5.getQueryParameter(r0);
        r1 = "annoying";
        r1 = r1.equalsIgnoreCase(r0);
        if (r1 != 0) goto L_0x00c7;
    L_0x00be:
        r1 = "spam";
        r0 = r1.equalsIgnoreCase(r0);
        if (r0 == 0) goto L_0x006e;
    L_0x00c7:
        r0 = r9.b;
        r9.a(r0);
        goto L_0x006e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.ReportFlowWebViewActivity.a(android.webkit.WebView, java.lang.String):void");
    }

    private void b(String str) {
        nn j = j();
        long a = j.a();
        cni i = j.i();
        int i2 = -1;
        switch (str.hashCode()) {
            case -382454902:
                if (str.equals("unfollow")) {
                    i2 = 0;
                    break;
                }
                break;
            case 3363353:
                if (str.equals("mute")) {
                    i2 = 1;
                    break;
                }
                break;
            case 93832333:
                if (str.equals("block")) {
                    i2 = 2;
                    break;
                }
                break;
        }
        switch (i2) {
            case mx.View_android_theme /*0*/:
                b(new bok(this, ab(), a, i), 3);
            case WireMessage.WIRE_CHAT /*1*/:
                b(new bna(this, ab()).a(a), 1);
            case WireMessage.WIRE_CONTROL /*2*/:
                b(new bmz(this, ab(), a, i, 1), 2);
            default:
        }
    }

    private nn j() {
        return nn.a(getIntent());
    }

    private void a(int i) {
        setResult(i);
        finish();
    }

    private void a(long j) {
        di a = di.a((Context) this, ab().g());
        e eVar = new e(getContentResolver());
        a.a(j, eVar);
        eVar.a();
    }
}
