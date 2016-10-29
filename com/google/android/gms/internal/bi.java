package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(14)
@oi
public class bi extends Thread {
    private boolean a;
    private boolean b;
    private boolean c;
    private final Object d;
    private final bh e;
    private final bg f;
    private final oh g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;

    public bi(bh bhVar, bg bgVar, oh ohVar) {
        this.a = false;
        this.b = false;
        this.c = false;
        this.e = bhVar;
        this.f = bgVar;
        this.g = ohVar;
        this.d = new Object();
        this.i = ((Integer) cj.K.c()).intValue();
        this.j = ((Integer) cj.L.c()).intValue();
        this.k = ((Integer) cj.M.c()).intValue();
        this.l = ((Integer) cj.N.c()).intValue();
        this.h = ((Integer) cj.O.c()).intValue();
        setName("ContentFetchTask");
    }

    bm a(View view, bf bfVar) {
        int i = 0;
        if (view == null) {
            return new bm(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new bm(this, 0, 0);
            }
            bfVar.b(text.toString(), globalVisibleRect);
            return new bm(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof sz)) {
            bfVar.f();
            return a((WebView) view, bfVar, globalVisibleRect) ? new bm(this, 0, 1) : new bm(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new bm(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            int i3 = 0;
            while (i < viewGroup.getChildCount()) {
                bm a = a(viewGroup.getChildAt(i), bfVar);
                i3 += a.a;
                i2 += a.b;
                i++;
            }
            return new bm(this, i3, i2);
        }
    }

    public void a() {
        synchronized (this.d) {
            if (this.a) {
                b.a("Content hash thread already started, quiting...");
                return;
            }
            this.a = true;
            start();
        }
    }

    void a(Activity activity) {
        if (activity != null) {
            View view = null;
            if (!(activity.getWindow() == null || activity.getWindow().getDecorView() == null)) {
                view = activity.getWindow().getDecorView().findViewById(16908290);
            }
            if (view != null) {
                a(view);
            }
        }
    }

    void a(bf bfVar, WebView webView, String str, boolean z) {
        bfVar.e();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (TextUtils.isEmpty(webView.getTitle())) {
                    bfVar.a(optString, z);
                } else {
                    bfVar.a(webView.getTitle() + "\n" + optString, z);
                }
            }
            if (bfVar.a()) {
                this.f.b(bfVar);
            }
        } catch (JSONException e) {
            b.a("Json string may be malformed.");
        } catch (Throwable th) {
            b.a("Failed to get webview content.", th);
            this.g.a(th, true);
        }
    }

    boolean a(RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    boolean a(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }

    boolean a(View view) {
        if (view == null) {
            return false;
        }
        view.post(new bj(this, view));
        return true;
    }

    @TargetApi(19)
    boolean a(WebView webView, bf bfVar, boolean z) {
        if (!vu.g()) {
            return false;
        }
        bfVar.f();
        webView.post(new bk(this, bfVar, webView, z));
        return true;
    }

    void b(View view) {
        try {
            bf bfVar = new bf(this.i, this.j, this.k, this.l);
            bm a = a(view, bfVar);
            bfVar.g();
            if (a.a != 0 || a.b != 0) {
                if (a.b != 0 || bfVar.i() != 0) {
                    if (a.b != 0 || !this.f.a(bfVar)) {
                        this.f.c(bfVar);
                    }
                }
            }
        } catch (Throwable e) {
            b.b("Exception in fetchContentOnUIThread", e);
            this.g.a(e, true);
        }
    }

    boolean b() {
        try {
            Context b = this.e.b();
            if (b == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) b.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) b.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (a(runningAppProcessInfo) && !keyguardManager.inKeyguardRestrictedInputMode() && a(b)) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public bf c() {
        return this.f.a();
    }

    public void d() {
        synchronized (this.d) {
            this.b = false;
            this.d.notifyAll();
            b.a("ContentFetchThread: wakeup");
        }
    }

    public void e() {
        synchronized (this.d) {
            this.b = true;
            b.a("ContentFetchThread: paused, mPause = " + this.b);
        }
    }

    public boolean f() {
        return this.b;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.c;
        if (r0 != 0) goto L_0x0056;
    L_0x0004:
        r0 = r3.b();	 Catch:{ Throwable -> 0x0019 }
        if (r0 == 0) goto L_0x0047;
    L_0x000a:
        r0 = r3.e;	 Catch:{ Throwable -> 0x0019 }
        r0 = r0.a();	 Catch:{ Throwable -> 0x0019 }
        if (r0 != 0) goto L_0x003b;
    L_0x0012:
        r0 = "ContentFetchThread: no activity";
        com.google.android.gms.ads.internal.util.client.b.a(r0);	 Catch:{ Throwable -> 0x0019 }
        goto L_0x0000;
    L_0x0019:
        r0 = move-exception;
        r1 = "Error in ContentFetchTask";
        com.google.android.gms.ads.internal.util.client.b.b(r1, r0);
        r1 = r3.g;
        r2 = 1;
        r1.a(r0, r2);
    L_0x0026:
        r1 = r3.d;
        monitor-enter(r1);
    L_0x0029:
        r0 = r3.b;	 Catch:{ all -> 0x0053 }
        if (r0 == 0) goto L_0x0051;
    L_0x002d:
        r0 = "ContentFetchTask: waiting";
        com.google.android.gms.ads.internal.util.client.b.a(r0);	 Catch:{ InterruptedException -> 0x0039 }
        r0 = r3.d;	 Catch:{ InterruptedException -> 0x0039 }
        r0.wait();	 Catch:{ InterruptedException -> 0x0039 }
        goto L_0x0029;
    L_0x0039:
        r0 = move-exception;
        goto L_0x0029;
    L_0x003b:
        r3.a(r0);	 Catch:{ Throwable -> 0x0019 }
    L_0x003e:
        r0 = r3.h;	 Catch:{ Throwable -> 0x0019 }
        r0 = r0 * 1000;
        r0 = (long) r0;	 Catch:{ Throwable -> 0x0019 }
        java.lang.Thread.sleep(r0);	 Catch:{ Throwable -> 0x0019 }
        goto L_0x0026;
    L_0x0047:
        r0 = "ContentFetchTask: sleeping";
        com.google.android.gms.ads.internal.util.client.b.a(r0);	 Catch:{ Throwable -> 0x0019 }
        r3.e();	 Catch:{ Throwable -> 0x0019 }
        goto L_0x003e;
    L_0x0051:
        monitor-exit(r1);	 Catch:{ all -> 0x0053 }
        goto L_0x0000;
    L_0x0053:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0053 }
        throw r0;
    L_0x0056:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bi.run():void");
    }
}
