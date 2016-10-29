package com.crashlytics.android.answers;

import android.content.Context;
import cxb;
import cxe;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.network.j;
import io.fabric.sdk.android.services.settings.b;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
class q implements z {
    final ac a;
    cxb b;
    k c;
    r d;
    boolean e;
    boolean f;
    volatile int g;
    private final p h;
    private final j i;
    private final Context j;
    private final w k;
    private final ScheduledExecutorService l;
    private final AtomicReference<ScheduledFuture<?>> m;

    public q(p pVar, Context context, ScheduledExecutorService scheduledExecutorService, w wVar, j jVar, ac acVar) {
        this.m = new AtomicReference();
        this.c = new k();
        this.d = new s();
        this.e = true;
        this.f = true;
        this.g = -1;
        this.h = pVar;
        this.j = context;
        this.l = scheduledExecutorService;
        this.k = wVar;
        this.i = jVar;
        this.a = acVar;
    }

    public void a(b bVar, String str) {
        this.b = l.a(new x(this.h, str, bVar.a, this.i, this.c.a(this.j)));
        this.k.a(bVar);
        this.e = bVar.f;
        f.h().a("Answers", "Custom event tracking " + (this.e ? "enabled" : "disabled"));
        this.f = bVar.g;
        f.h().a("Answers", "Predefined event tracking " + (this.f ? "enabled" : "disabled"));
        if (bVar.i > 1) {
            f.h().a("Answers", "Event sampling enabled");
            this.d = new v(bVar.i);
        }
        this.g = bVar.b;
        a(0, (long) this.g);
    }

    public void a(ab abVar) {
        SessionEvent a = abVar.a(this.a);
        if (!this.e && Type.CUSTOM.equals(a.c)) {
            f.h().a("Answers", "Custom events tracking disabled - skipping event: " + a);
        } else if (!this.f && Type.PREDEFINED.equals(a.c)) {
            f.h().a("Answers", "Predefined events tracking disabled - skipping event: " + a);
        } else if (this.d.a(a)) {
            f.h().a("Answers", "Skipping filtered event: " + a);
        } else {
            try {
                this.k.a(a);
            } catch (Throwable e) {
                f.h().e("Answers", "Failed to write event: " + a, e);
            }
            e();
        }
    }

    public void e() {
        if ((this.g != -1 ? 1 : null) != null) {
            a((long) this.g, (long) this.g);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r9 = this;
        r1 = 0;
        r0 = r9.b;
        if (r0 != 0) goto L_0x000e;
    L_0x0005:
        r0 = r9.j;
        r1 = "skipping files send because we don't yet know the target endpoint";
        io.fabric.sdk.android.services.common.CommonUtils.a(r0, r1);
    L_0x000d:
        return;
    L_0x000e:
        r0 = r9.j;
        r2 = "Sending all files";
        io.fabric.sdk.android.services.common.CommonUtils.a(r0, r2);
        r0 = r9.k;
        r0 = r0.e();
        r2 = r0;
        r0 = r1;
    L_0x001e:
        r1 = r2.size();	 Catch:{ Exception -> 0x0065 }
        if (r1 <= 0) goto L_0x0055;
    L_0x0024:
        r1 = r9.j;	 Catch:{ Exception -> 0x0065 }
        r3 = java.util.Locale.US;	 Catch:{ Exception -> 0x0065 }
        r4 = "attempt to send batch of %d files";
        r5 = 1;
        r5 = new java.lang.Object[r5];	 Catch:{ Exception -> 0x0065 }
        r6 = 0;
        r7 = r2.size();	 Catch:{ Exception -> 0x0065 }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ Exception -> 0x0065 }
        r5[r6] = r7;	 Catch:{ Exception -> 0x0065 }
        r3 = java.lang.String.format(r3, r4, r5);	 Catch:{ Exception -> 0x0065 }
        io.fabric.sdk.android.services.common.CommonUtils.a(r1, r3);	 Catch:{ Exception -> 0x0065 }
        r1 = r9.b;	 Catch:{ Exception -> 0x0065 }
        r3 = r1.a(r2);	 Catch:{ Exception -> 0x0065 }
        if (r3 == 0) goto L_0x0053;
    L_0x0048:
        r1 = r2.size();	 Catch:{ Exception -> 0x0065 }
        r1 = r1 + r0;
        r0 = r9.k;	 Catch:{ Exception -> 0x0088 }
        r0.a(r2);	 Catch:{ Exception -> 0x0088 }
        r0 = r1;
    L_0x0053:
        if (r3 != 0) goto L_0x005d;
    L_0x0055:
        if (r0 != 0) goto L_0x000d;
    L_0x0057:
        r0 = r9.k;
        r0.g();
        goto L_0x000d;
    L_0x005d:
        r1 = r9.k;	 Catch:{ Exception -> 0x0065 }
        r1 = r1.e();	 Catch:{ Exception -> 0x0065 }
        r2 = r1;
        goto L_0x001e;
    L_0x0065:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
    L_0x0069:
        r2 = r9.j;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Failed to send batch of analytics files to server: ";
        r3 = r3.append(r4);
        r4 = r0.getMessage();
        r3 = r3.append(r4);
        r3 = r3.toString();
        io.fabric.sdk.android.services.common.CommonUtils.a(r2, r3, r0);
        r0 = r1;
        goto L_0x0055;
    L_0x0088:
        r0 = move-exception;
        goto L_0x0069;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.q.a():void");
    }

    public void d() {
        if (this.m.get() != null) {
            CommonUtils.a(this.j, "Cancelling time-based rollover because no events are currently being generated.");
            ((ScheduledFuture) this.m.get()).cancel(false);
            this.m.set(null);
        }
    }

    public void b() {
        this.k.f();
    }

    public boolean c() {
        try {
            return this.k.d();
        } catch (Throwable e) {
            CommonUtils.a(this.j, "Failed to roll file over.", e);
            return false;
        }
    }

    void a(long j, long j2) {
        if ((this.m.get() == null ? 1 : null) != null) {
            cxe cxe = new cxe(this.j, this);
            CommonUtils.a(this.j, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.m.set(this.l.scheduleAtFixedRate(cxe, j, j2, TimeUnit.SECONDS));
            } catch (Throwable e) {
                CommonUtils.a(this.j, "Failed to schedule time based file roll over", e);
            }
        }
    }
}
