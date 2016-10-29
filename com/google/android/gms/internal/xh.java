package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.i;

public class xh {
    private static String a;
    private static String b;
    private static boolean c;
    private final WakeLock d;
    private WorkSource e;
    private final int f;
    private final String g;
    private final String h;
    private final Context i;
    private boolean j;
    private int k;
    private int l;

    static {
        a = "WakeLock";
        b = "*gcore*:";
        c = false;
    }

    public xh(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public xh(Context context, int i, String str, String str2, String str3) {
        this.j = true;
        bm.a(str, (Object) "Wake lock name can NOT be empty");
        this.f = i;
        this.h = str2;
        this.i = context.getApplicationContext();
        if (vw.a(str3) || GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE == str3) {
            this.g = str;
        } else {
            this.g = b + str;
        }
        this.d = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (vx.a(this.i)) {
            if (vw.a(str3)) {
                if (i.a && us.b()) {
                    Log.e(a, "callingPackage is not supposed to be empty for wakelock " + this.g + "!", new IllegalArgumentException());
                    str3 = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE;
                } else {
                    str3 = context.getPackageName();
                }
            }
            this.e = vx.a(context, str3);
            a(this.e);
        }
    }

    private String a(String str, boolean z) {
        return this.j ? z ? str : this.h : this.h;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.String r9) {
        /*
        r8 = this;
        r0 = r8.b(r9);
        r5 = r8.a(r9, r0);
        r1 = c;
        if (r1 == 0) goto L_0x006f;
    L_0x000c:
        r1 = a;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Release:\n mWakeLockName: ";
        r2 = r2.append(r3);
        r3 = r8.g;
        r2 = r2.append(r3);
        r3 = "\n mSecondaryName: ";
        r2 = r2.append(r3);
        r3 = r8.h;
        r2 = r2.append(r3);
        r3 = "\nmReferenceCounted: ";
        r2 = r2.append(r3);
        r3 = r8.j;
        r2 = r2.append(r3);
        r3 = "\nreason: ";
        r2 = r2.append(r3);
        r2 = r2.append(r9);
        r3 = "\n mOpenEventCount";
        r2 = r2.append(r3);
        r3 = r8.l;
        r2 = r2.append(r3);
        r3 = "\nuseWithReason: ";
        r2 = r2.append(r3);
        r2 = r2.append(r0);
        r3 = "\ntrackingName: ";
        r2 = r2.append(r3);
        r2 = r2.append(r5);
        r2 = r2.toString();
        android.util.Log.d(r1, r2);
    L_0x006f:
        monitor-enter(r8);
        r1 = r8.j;	 Catch:{ all -> 0x00aa }
        if (r1 == 0) goto L_0x007e;
    L_0x0074:
        r1 = r8.k;	 Catch:{ all -> 0x00aa }
        r1 = r1 + -1;
        r8.k = r1;	 Catch:{ all -> 0x00aa }
        if (r1 == 0) goto L_0x0087;
    L_0x007c:
        if (r0 != 0) goto L_0x0087;
    L_0x007e:
        r0 = r8.j;	 Catch:{ all -> 0x00aa }
        if (r0 != 0) goto L_0x00a8;
    L_0x0082:
        r0 = r8.l;	 Catch:{ all -> 0x00aa }
        r1 = 1;
        if (r0 != r1) goto L_0x00a8;
    L_0x0087:
        r0 = com.google.android.gms.common.stats.k.a();	 Catch:{ all -> 0x00aa }
        r1 = r8.i;	 Catch:{ all -> 0x00aa }
        r2 = r8.d;	 Catch:{ all -> 0x00aa }
        r2 = com.google.android.gms.common.stats.i.a(r2, r5);	 Catch:{ all -> 0x00aa }
        r3 = 8;
        r4 = r8.g;	 Catch:{ all -> 0x00aa }
        r6 = r8.f;	 Catch:{ all -> 0x00aa }
        r7 = r8.e;	 Catch:{ all -> 0x00aa }
        r7 = com.google.android.gms.internal.vx.b(r7);	 Catch:{ all -> 0x00aa }
        r0.a(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ all -> 0x00aa }
        r0 = r8.l;	 Catch:{ all -> 0x00aa }
        r0 = r0 + -1;
        r8.l = r0;	 Catch:{ all -> 0x00aa }
    L_0x00a8:
        monitor-exit(r8);	 Catch:{ all -> 0x00aa }
        return;
    L_0x00aa:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00aa }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.xh.a(java.lang.String):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.String r11, long r12) {
        /*
        r10 = this;
        r0 = r10.b(r11);
        r5 = r10.a(r11, r0);
        r1 = c;
        if (r1 == 0) goto L_0x007a;
    L_0x000c:
        r1 = a;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Acquire:\n mWakeLockName: ";
        r2 = r2.append(r3);
        r3 = r10.g;
        r2 = r2.append(r3);
        r3 = "\n mSecondaryName: ";
        r2 = r2.append(r3);
        r3 = r10.h;
        r2 = r2.append(r3);
        r3 = "\nmReferenceCounted: ";
        r2 = r2.append(r3);
        r3 = r10.j;
        r2 = r2.append(r3);
        r3 = "\nreason: ";
        r2 = r2.append(r3);
        r2 = r2.append(r11);
        r3 = "\nmOpenEventCount";
        r2 = r2.append(r3);
        r3 = r10.l;
        r2 = r2.append(r3);
        r3 = "\nuseWithReason: ";
        r2 = r2.append(r3);
        r2 = r2.append(r0);
        r3 = "\ntrackingName: ";
        r2 = r2.append(r3);
        r2 = r2.append(r5);
        r3 = "\ntimeout: ";
        r2 = r2.append(r3);
        r2 = r2.append(r12);
        r2 = r2.toString();
        android.util.Log.d(r1, r2);
    L_0x007a:
        monitor-enter(r10);
        r1 = r10.j;	 Catch:{ all -> 0x00b4 }
        if (r1 == 0) goto L_0x0089;
    L_0x007f:
        r1 = r10.k;	 Catch:{ all -> 0x00b4 }
        r2 = r1 + 1;
        r10.k = r2;	 Catch:{ all -> 0x00b4 }
        if (r1 == 0) goto L_0x0091;
    L_0x0087:
        if (r0 != 0) goto L_0x0091;
    L_0x0089:
        r0 = r10.j;	 Catch:{ all -> 0x00b4 }
        if (r0 != 0) goto L_0x00b2;
    L_0x008d:
        r0 = r10.l;	 Catch:{ all -> 0x00b4 }
        if (r0 != 0) goto L_0x00b2;
    L_0x0091:
        r0 = com.google.android.gms.common.stats.k.a();	 Catch:{ all -> 0x00b4 }
        r1 = r10.i;	 Catch:{ all -> 0x00b4 }
        r2 = r10.d;	 Catch:{ all -> 0x00b4 }
        r2 = com.google.android.gms.common.stats.i.a(r2, r5);	 Catch:{ all -> 0x00b4 }
        r3 = 7;
        r4 = r10.g;	 Catch:{ all -> 0x00b4 }
        r6 = r10.f;	 Catch:{ all -> 0x00b4 }
        r7 = r10.e;	 Catch:{ all -> 0x00b4 }
        r7 = com.google.android.gms.internal.vx.b(r7);	 Catch:{ all -> 0x00b4 }
        r8 = r12;
        r0.a(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x00b4 }
        r0 = r10.l;	 Catch:{ all -> 0x00b4 }
        r0 = r0 + 1;
        r10.l = r0;	 Catch:{ all -> 0x00b4 }
    L_0x00b2:
        monitor-exit(r10);	 Catch:{ all -> 0x00b4 }
        return;
    L_0x00b4:
        r0 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x00b4 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.xh.a(java.lang.String, long):void");
    }

    private boolean b(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.h)) ? false : true;
    }

    public void a() {
        a(null);
        this.d.release();
    }

    public void a(long j) {
        if (!vu.c() && this.j) {
            Log.wtf(a, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: " + this.g);
        }
        a(null, j);
        this.d.acquire(j);
    }

    public void a(WorkSource workSource) {
        if (vx.a(this.i) && workSource != null) {
            if (this.e != null) {
                this.e.add(workSource);
            } else {
                this.e = workSource;
            }
            this.d.setWorkSource(this.e);
        }
    }

    public void a(boolean z) {
        this.d.setReferenceCounted(z);
        this.j = z;
    }

    public boolean b() {
        return this.d.isHeld();
    }
}
