package com.google.android.gms.internal;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import java.util.Map;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@oi
public class ll extends lv {
    static final Set<String> a;
    private String b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private final Object j;
    private final sz k;
    private final Activity l;
    private AdSizeParcel m;
    private ImageView n;
    private LinearLayout o;
    private lw p;
    private PopupWindow q;
    private RelativeLayout r;
    private ViewGroup s;

    static {
        a = vk.a(new String[]{"top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"});
    }

    public ll(sz szVar, lw lwVar) {
        super(szVar, "resize");
        this.b = "top-right";
        this.c = true;
        this.d = 0;
        this.e = 0;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.i = -1;
        this.j = new Object();
        this.k = szVar;
        this.l = szVar.f();
        this.p = lwVar;
    }

    private void b(Map<String, String> map) {
        if (!TextUtils.isEmpty((CharSequence) map.get("width"))) {
            this.i = ar.e().b((String) map.get("width"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("height"))) {
            this.f = ar.e().b((String) map.get("height"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
            this.g = ar.e().b((String) map.get("offsetX"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
            this.h = ar.e().b((String) map.get("offsetY"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
            this.c = Boolean.parseBoolean((String) map.get("allowOffscreen"));
        }
        String str = (String) map.get("customClosePosition");
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
        }
    }

    private int[] d() {
        if (!c()) {
            return null;
        }
        if (this.c) {
            return new int[]{this.d + this.g, this.e + this.h};
        }
        int[] b = ar.e().b(this.l);
        int[] d = ar.e().d(this.l);
        int i = b[0];
        int i2 = this.d + this.g;
        int i3 = this.e + this.h;
        if (i2 < 0) {
            i2 = 0;
        } else if (this.i + i2 > i) {
            i2 = i - this.i;
        }
        if (i3 < d[0]) {
            i3 = d[0];
        } else if (this.f + i3 > d[1]) {
            i3 = d[1] - this.f;
        }
        return new int[]{i2, i3};
    }

    void a(int i, int i2) {
        if (this.p != null) {
            this.p.a(i, i2, this.i, this.f);
        }
    }

    public void a(int i, int i2, boolean z) {
        synchronized (this.j) {
            this.d = i;
            this.e = i2;
            if (this.q != null && z) {
                int[] d = d();
                if (d != null) {
                    this.q.update(aa.a().a(this.l, d[0]), aa.a().a(this.l, d[1]), this.q.getWidth(), this.q.getHeight());
                    b(d[0], d[1]);
                } else {
                    a(true);
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.util.Map<java.lang.String, java.lang.String> r13) {
        /*
        r12 = this;
        r4 = -1;
        r5 = 1;
        r3 = 0;
        r6 = r12.j;
        monitor-enter(r6);
        r1 = r12.l;	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x0012;
    L_0x000a:
        r1 = "Not an activity context. Cannot resize.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
    L_0x0011:
        return;
    L_0x0012:
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r1 = r1.k();	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x0025;
    L_0x001a:
        r1 = "Webview is not yet available, size is not set.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x0022:
        r1 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        throw r1;
    L_0x0025:
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r1 = r1.k();	 Catch:{ all -> 0x0022 }
        r1 = r1.e;	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x0037;
    L_0x002f:
        r1 = "Is interstitial. Cannot resize an interstitial.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x0037:
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r1 = r1.p();	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x0047;
    L_0x003f:
        r1 = "Cannot resize an expanded banner.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x0047:
        r12.b(r13);	 Catch:{ all -> 0x0022 }
        r1 = r12.a();	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x0058;
    L_0x0050:
        r1 = "Invalid width and height options. Cannot resize.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x0058:
        r1 = r12.l;	 Catch:{ all -> 0x0022 }
        r7 = r1.getWindow();	 Catch:{ all -> 0x0022 }
        if (r7 == 0) goto L_0x0066;
    L_0x0060:
        r1 = r7.getDecorView();	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x006e;
    L_0x0066:
        r1 = "Activity context is not ready, cannot get window or decor view.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x006e:
        r8 = r12.d();	 Catch:{ all -> 0x0022 }
        if (r8 != 0) goto L_0x007c;
    L_0x0074:
        r1 = "Resize location out of screen or close button is not visible.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x007c:
        r1 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ all -> 0x0022 }
        r2 = r12.l;	 Catch:{ all -> 0x0022 }
        r9 = r12.i;	 Catch:{ all -> 0x0022 }
        r9 = r1.a(r2, r9);	 Catch:{ all -> 0x0022 }
        r1 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ all -> 0x0022 }
        r2 = r12.l;	 Catch:{ all -> 0x0022 }
        r10 = r12.f;	 Catch:{ all -> 0x0022 }
        r10 = r1.a(r2, r10);	 Catch:{ all -> 0x0022 }
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r1 = r1.b();	 Catch:{ all -> 0x0022 }
        r2 = r1.getParent();	 Catch:{ all -> 0x0022 }
        if (r2 == 0) goto L_0x01de;
    L_0x00a0:
        r1 = r2 instanceof android.view.ViewGroup;	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x01de;
    L_0x00a4:
        r0 = r2;
        r0 = (android.view.ViewGroup) r0;	 Catch:{ all -> 0x0022 }
        r1 = r0;
        r11 = r12.k;	 Catch:{ all -> 0x0022 }
        r11 = r11.b();	 Catch:{ all -> 0x0022 }
        r1.removeView(r11);	 Catch:{ all -> 0x0022 }
        r1 = r12.q;	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x01d7;
    L_0x00b5:
        r2 = (android.view.ViewGroup) r2;	 Catch:{ all -> 0x0022 }
        r12.s = r2;	 Catch:{ all -> 0x0022 }
        r1 = com.google.android.gms.ads.internal.ar.e();	 Catch:{ all -> 0x0022 }
        r2 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = r2.b();	 Catch:{ all -> 0x0022 }
        r1 = r1.a(r2);	 Catch:{ all -> 0x0022 }
        r2 = new android.widget.ImageView;	 Catch:{ all -> 0x0022 }
        r11 = r12.l;	 Catch:{ all -> 0x0022 }
        r2.<init>(r11);	 Catch:{ all -> 0x0022 }
        r12.n = r2;	 Catch:{ all -> 0x0022 }
        r2 = r12.n;	 Catch:{ all -> 0x0022 }
        r2.setImageBitmap(r1);	 Catch:{ all -> 0x0022 }
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r1 = r1.k();	 Catch:{ all -> 0x0022 }
        r12.m = r1;	 Catch:{ all -> 0x0022 }
        r1 = r12.s;	 Catch:{ all -> 0x0022 }
        r2 = r12.n;	 Catch:{ all -> 0x0022 }
        r1.addView(r2);	 Catch:{ all -> 0x0022 }
    L_0x00e4:
        r1 = new android.widget.RelativeLayout;	 Catch:{ all -> 0x0022 }
        r2 = r12.l;	 Catch:{ all -> 0x0022 }
        r1.<init>(r2);	 Catch:{ all -> 0x0022 }
        r12.r = r1;	 Catch:{ all -> 0x0022 }
        r1 = r12.r;	 Catch:{ all -> 0x0022 }
        r2 = 0;
        r1.setBackgroundColor(r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.r;	 Catch:{ all -> 0x0022 }
        r2 = new android.view.ViewGroup$LayoutParams;	 Catch:{ all -> 0x0022 }
        r2.<init>(r9, r10);	 Catch:{ all -> 0x0022 }
        r1.setLayoutParams(r2);	 Catch:{ all -> 0x0022 }
        r1 = com.google.android.gms.ads.internal.ar.e();	 Catch:{ all -> 0x0022 }
        r2 = r12.r;	 Catch:{ all -> 0x0022 }
        r11 = 0;
        r1 = r1.a(r2, r9, r10, r11);	 Catch:{ all -> 0x0022 }
        r12.q = r1;	 Catch:{ all -> 0x0022 }
        r1 = r12.q;	 Catch:{ all -> 0x0022 }
        r2 = 1;
        r1.setOutsideTouchable(r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.q;	 Catch:{ all -> 0x0022 }
        r2 = 1;
        r1.setTouchable(r2);	 Catch:{ all -> 0x0022 }
        r2 = r12.q;	 Catch:{ all -> 0x0022 }
        r1 = r12.c;	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x01e7;
    L_0x011c:
        r1 = r5;
    L_0x011d:
        r2.setClippingEnabled(r1);	 Catch:{ all -> 0x0022 }
        r1 = r12.r;	 Catch:{ all -> 0x0022 }
        r2 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = r2.b();	 Catch:{ all -> 0x0022 }
        r9 = -1;
        r10 = -1;
        r1.addView(r2, r9, r10);	 Catch:{ all -> 0x0022 }
        r1 = new android.widget.LinearLayout;	 Catch:{ all -> 0x0022 }
        r2 = r12.l;	 Catch:{ all -> 0x0022 }
        r1.<init>(r2);	 Catch:{ all -> 0x0022 }
        r12.o = r1;	 Catch:{ all -> 0x0022 }
        r2 = new android.widget.RelativeLayout$LayoutParams;	 Catch:{ all -> 0x0022 }
        r1 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ all -> 0x0022 }
        r9 = r12.l;	 Catch:{ all -> 0x0022 }
        r10 = 50;
        r1 = r1.a(r9, r10);	 Catch:{ all -> 0x0022 }
        r9 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ all -> 0x0022 }
        r10 = r12.l;	 Catch:{ all -> 0x0022 }
        r11 = 50;
        r9 = r9.a(r10, r11);	 Catch:{ all -> 0x0022 }
        r2.<init>(r1, r9);	 Catch:{ all -> 0x0022 }
        r1 = r12.b;	 Catch:{ all -> 0x0022 }
        r9 = r1.hashCode();	 Catch:{ all -> 0x0022 }
        switch(r9) {
            case -1364013995: goto L_0x0202;
            case -1012429441: goto L_0x01ea;
            case -655373719: goto L_0x020e;
            case 1163912186: goto L_0x0226;
            case 1288627767: goto L_0x021a;
            case 1755462605: goto L_0x01f6;
            default: goto L_0x015c;
        };	 Catch:{ all -> 0x0022 }
    L_0x015c:
        r1 = r4;
    L_0x015d:
        switch(r1) {
            case 0: goto L_0x0232;
            case 1: goto L_0x023e;
            case 2: goto L_0x024a;
            case 3: goto L_0x0251;
            case 4: goto L_0x025d;
            case 5: goto L_0x0269;
            default: goto L_0x0160;
        };	 Catch:{ all -> 0x0022 }
    L_0x0160:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
    L_0x016a:
        r1 = r12.o;	 Catch:{ all -> 0x0022 }
        r3 = new com.google.android.gms.internal.lm;	 Catch:{ all -> 0x0022 }
        r3.<init>(r12);	 Catch:{ all -> 0x0022 }
        r1.setOnClickListener(r3);	 Catch:{ all -> 0x0022 }
        r1 = r12.o;	 Catch:{ all -> 0x0022 }
        r3 = "Close button";
        r1.setContentDescription(r3);	 Catch:{ all -> 0x0022 }
        r1 = r12.r;	 Catch:{ all -> 0x0022 }
        r3 = r12.o;	 Catch:{ all -> 0x0022 }
        r1.addView(r3, r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.q;	 Catch:{ RuntimeException -> 0x0275 }
        r2 = r7.getDecorView();	 Catch:{ RuntimeException -> 0x0275 }
        r3 = 0;
        r4 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ RuntimeException -> 0x0275 }
        r5 = r12.l;	 Catch:{ RuntimeException -> 0x0275 }
        r7 = 0;
        r7 = r8[r7];	 Catch:{ RuntimeException -> 0x0275 }
        r4 = r4.a(r5, r7);	 Catch:{ RuntimeException -> 0x0275 }
        r5 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ RuntimeException -> 0x0275 }
        r7 = r12.l;	 Catch:{ RuntimeException -> 0x0275 }
        r9 = 1;
        r9 = r8[r9];	 Catch:{ RuntimeException -> 0x0275 }
        r5 = r5.a(r7, r9);	 Catch:{ RuntimeException -> 0x0275 }
        r1.showAtLocation(r2, r3, r4, r5);	 Catch:{ RuntimeException -> 0x0275 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0022 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0022 }
        r12.a(r1, r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = new com.google.android.gms.ads.internal.client.AdSizeParcel;	 Catch:{ all -> 0x0022 }
        r3 = r12.l;	 Catch:{ all -> 0x0022 }
        r4 = new com.google.android.gms.ads.g;	 Catch:{ all -> 0x0022 }
        r5 = r12.i;	 Catch:{ all -> 0x0022 }
        r7 = r12.f;	 Catch:{ all -> 0x0022 }
        r4.<init>(r5, r7);	 Catch:{ all -> 0x0022 }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x0022 }
        r1.a(r2);	 Catch:{ all -> 0x0022 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0022 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0022 }
        r12.b(r1, r2);	 Catch:{ all -> 0x0022 }
        r1 = "resized";
        r12.d(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x01d7:
        r1 = r12.q;	 Catch:{ all -> 0x0022 }
        r1.dismiss();	 Catch:{ all -> 0x0022 }
        goto L_0x00e4;
    L_0x01de:
        r1 = "Webview is detached, probably in the middle of a resize or expand.";
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x01e7:
        r1 = r3;
        goto L_0x011d;
    L_0x01ea:
        r5 = "top-left";
        r1 = r1.equals(r5);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x01f3:
        r1 = r3;
        goto L_0x015d;
    L_0x01f6:
        r3 = "top-center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x01ff:
        r1 = r5;
        goto L_0x015d;
    L_0x0202:
        r3 = "center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x020b:
        r1 = 2;
        goto L_0x015d;
    L_0x020e:
        r3 = "bottom-left";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x0217:
        r1 = 3;
        goto L_0x015d;
    L_0x021a:
        r3 = "bottom-center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x0223:
        r1 = 4;
        goto L_0x015d;
    L_0x0226:
        r3 = "bottom-right";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x015c;
    L_0x022f:
        r1 = 5;
        goto L_0x015d;
    L_0x0232:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x023e:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x024a:
        r1 = 13;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x0251:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x025d:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x0269:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0022 }
        goto L_0x016a;
    L_0x0275:
        r1 = move-exception;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0022 }
        r2.<init>();	 Catch:{ all -> 0x0022 }
        r3 = "Cannot show popup window: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0022 }
        r1 = r1.getMessage();	 Catch:{ all -> 0x0022 }
        r1 = r2.append(r1);	 Catch:{ all -> 0x0022 }
        r1 = r1.toString();	 Catch:{ all -> 0x0022 }
        r12.b(r1);	 Catch:{ all -> 0x0022 }
        r1 = r12.r;	 Catch:{ all -> 0x0022 }
        r2 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = r2.b();	 Catch:{ all -> 0x0022 }
        r1.removeView(r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.s;	 Catch:{ all -> 0x0022 }
        if (r1 == 0) goto L_0x02b9;
    L_0x02a0:
        r1 = r12.s;	 Catch:{ all -> 0x0022 }
        r2 = r12.n;	 Catch:{ all -> 0x0022 }
        r1.removeView(r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.s;	 Catch:{ all -> 0x0022 }
        r2 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = r2.b();	 Catch:{ all -> 0x0022 }
        r1.addView(r2);	 Catch:{ all -> 0x0022 }
        r1 = r12.k;	 Catch:{ all -> 0x0022 }
        r2 = r12.m;	 Catch:{ all -> 0x0022 }
        r1.a(r2);	 Catch:{ all -> 0x0022 }
    L_0x02b9:
        monitor-exit(r6);	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ll.a(java.util.Map):void");
    }

    public void a(boolean z) {
        synchronized (this.j) {
            if (this.q != null) {
                this.q.dismiss();
                this.r.removeView(this.k.b());
                if (this.s != null) {
                    this.s.removeView(this.n);
                    this.s.addView(this.k.b());
                    this.k.a(this.m);
                }
                if (z) {
                    d("default");
                    if (this.p != null) {
                        this.p.B();
                    }
                }
                this.q = null;
                this.r = null;
                this.s = null;
                this.o = null;
            }
        }
    }

    boolean a() {
        return this.i > -1 && this.f > -1;
    }

    void b(int i, int i2) {
        a(i, i2 - ar.e().d(this.l)[0], this.i, this.f);
    }

    public boolean b() {
        boolean z;
        synchronized (this.j) {
            z = this.q != null;
        }
        return z;
    }

    public void c(int i, int i2) {
        this.d = i;
        this.e = i2;
    }

    boolean c() {
        int[] b = ar.e().b(this.l);
        int[] d = ar.e().d(this.l);
        int i = b[0];
        int i2 = b[1];
        if (this.i < 50 || this.i > i) {
            b.d("Width is too small or too large.");
            return false;
        } else if (this.f < 50 || this.f > i2) {
            b.d("Height is too small or too large.");
            return false;
        } else if (this.f == i2 && this.i == i) {
            b.d("Cannot resize to a full-screen ad.");
            return false;
        } else {
            if (this.c) {
                int i3;
                String str = this.b;
                boolean z = true;
                switch (str.hashCode()) {
                    case -1364013995:
                        if (str.equals("center")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1012429441:
                        if (str.equals("top-left")) {
                            z = false;
                            break;
                        }
                        break;
                    case -655373719:
                        if (str.equals("bottom-left")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1163912186:
                        if (str.equals("bottom-right")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1288627767:
                        if (str.equals("bottom-center")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1755462605:
                        if (str.equals("top-center")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case mx.View_android_theme /*0*/:
                        i3 = this.g + this.d;
                        i2 = this.e + this.h;
                        break;
                    case WireMessage.WIRE_CHAT /*1*/:
                        i3 = ((this.d + this.g) + (this.i / 2)) - 25;
                        i2 = this.e + this.h;
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        i3 = ((this.d + this.g) + (this.i / 2)) - 25;
                        i2 = ((this.e + this.h) + (this.f / 2)) - 25;
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        i3 = this.g + this.d;
                        i2 = ((this.e + this.h) + this.f) - 50;
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        i3 = ((this.d + this.g) + (this.i / 2)) - 25;
                        i2 = ((this.e + this.h) + this.f) - 50;
                        break;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                        i3 = ((this.d + this.g) + this.i) - 50;
                        i2 = ((this.e + this.h) + this.f) - 50;
                        break;
                    default:
                        i3 = ((this.d + this.g) + this.i) - 50;
                        i2 = this.e + this.h;
                        break;
                }
                if (i3 < 0 || i3 + 50 > i || r2 < d[0] || r2 + 50 > d[1]) {
                    return false;
                }
            }
            return true;
        }
    }
}
