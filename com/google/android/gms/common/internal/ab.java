package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.BinderThread;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.api.s;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.ab$com.google.android.gms.common.internal.ag;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ab<T extends IInterface> implements h, al {
    public static final String[] d;
    private int a;
    final Handler b;
    protected AtomicInteger c;
    private long e;
    private long f;
    private int g;
    private long h;
    private final Context i;
    private final w j;
    private final Looper k;
    private final am l;
    private final f m;
    private final Object n;
    private final Object o;
    private az p;
    private s q;
    private T r;
    private final ArrayList<com/google/android/gms/common/internal/ae<?>> s;
    private ag t;
    private int u;
    private final Set<Scope> v;
    private final Account w;
    private final q x;
    private final r y;
    private final int z;

    static {
        d = new String[]{"service_esmobile", "service_googleme"};
    }

    protected ab(Context context, Looper looper, int i, w wVar, q qVar, r rVar) {
        this(context, looper, am.a(context), f.b(), i, wVar, (q) bm.a(qVar), (r) bm.a(rVar));
    }

    protected ab(Context context, Looper looper, am amVar, f fVar, int i, w wVar, q qVar, r rVar) {
        this.n = new Object();
        this.o = new Object();
        this.q = new ah(this);
        this.s = new ArrayList();
        this.u = 1;
        this.c = new AtomicInteger(0);
        this.i = (Context) bm.a(context, "Context must not be null");
        this.k = (Looper) bm.a(looper, "Looper must not be null");
        this.l = (am) bm.a(amVar, "Supervisor must not be null");
        this.m = (f) bm.a(fVar, "API availability must not be null");
        this.b = new ad(this, looper);
        this.z = i;
        this.j = (w) bm.a(wVar);
        this.w = wVar.a();
        this.v = b(wVar.d());
        this.x = qVar;
        this.y = rVar;
    }

    private boolean a(int i, int i2, T t) {
        boolean z;
        synchronized (this.n) {
            if (this.u != i) {
                z = false;
            } else {
                b(i2, t);
                z = true;
            }
        }
        return z;
    }

    private Set<Scope> b(Set<Scope> set) {
        Set<Scope> a = a((Set) set);
        if (a == null) {
            return a;
        }
        for (Scope contains : a) {
            if (!set.contains(contains)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(int r5, T r6) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        r2 = 3;
        if (r5 != r2) goto L_0x001d;
    L_0x0005:
        r3 = r0;
    L_0x0006:
        if (r6 == 0) goto L_0x001f;
    L_0x0008:
        r2 = r0;
    L_0x0009:
        if (r3 != r2) goto L_0x0021;
    L_0x000b:
        com.google.android.gms.common.internal.bm.b(r0);
        r1 = r4.n;
        monitor-enter(r1);
        r4.u = r5;	 Catch:{ all -> 0x0027 }
        r4.r = r6;	 Catch:{ all -> 0x0027 }
        r4.a(r5, r6);	 Catch:{ all -> 0x0027 }
        switch(r5) {
            case 1: goto L_0x002e;
            case 2: goto L_0x0023;
            case 3: goto L_0x002a;
            default: goto L_0x001b;
        };	 Catch:{ all -> 0x0027 }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x0027 }
        return;
    L_0x001d:
        r3 = r1;
        goto L_0x0006;
    L_0x001f:
        r2 = r1;
        goto L_0x0009;
    L_0x0021:
        r0 = r1;
        goto L_0x000b;
    L_0x0023:
        r4.c();	 Catch:{ all -> 0x0027 }
        goto L_0x001b;
    L_0x0027:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0027 }
        throw r0;
    L_0x002a:
        r4.a(r6);	 Catch:{ all -> 0x0027 }
        goto L_0x001b;
    L_0x002e:
        r4.s();	 Catch:{ all -> 0x0027 }
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ab.b(int, android.os.IInterface):void");
    }

    private void c() {
        if (this.t != null) {
            Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + a());
            this.l.b(a(), this.t, i_());
            this.c.incrementAndGet();
        }
        this.t = new ag(this, this.c.get());
        if (!this.l.a(a(), this.t, i_())) {
            Log.e("GmsClient", "unable to connect to service: " + a());
            a(8, this.c.get());
        }
    }

    private void s() {
        if (this.t != null) {
            this.l.b(a(), this.t, i_());
            this.t = null;
        }
    }

    @NonNull
    protected abstract String a();

    @NonNull
    protected Set<Scope> a(@NonNull Set<Scope> set) {
        return set;
    }

    @CallSuper
    protected void a(int i) {
        this.a = i;
        this.e = System.currentTimeMillis();
    }

    protected void a(int i, int i2) {
        this.b.sendMessage(this.b.obtainMessage(5, i2, -1, new aj(this, i)));
    }

    @BinderThread
    protected void a(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.b.sendMessage(this.b.obtainMessage(1, i2, -1, new ai(this, i, iBinder, bundle)));
    }

    void a(int i, T t) {
    }

    @CallSuper
    protected void a(@NonNull T t) {
        this.f = System.currentTimeMillis();
    }

    @CallSuper
    protected void a(ConnectionResult connectionResult) {
        this.g = connectionResult.c();
        this.h = System.currentTimeMillis();
    }

    public void a(@NonNull s sVar) {
        this.q = (s) bm.a(sVar, "Connection progress callbacks cannot be null.");
        b(2, null);
    }

    @WorkerThread
    public void a(as asVar, Set<Scope> set) {
        try {
            GetServiceRequest a = new GetServiceRequest(this.z).a(this.i.getPackageName()).a(o());
            if (set != null) {
                a.a((Collection) set);
            }
            if (f()) {
                a.a(n()).a(asVar);
            } else if (r()) {
                a.a(this.w);
            }
            synchronized (this.o) {
                if (this.p != null) {
                    this.p.a(new af(this, this.c.get()), a);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            b(1);
        } catch (Throwable e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (this.n) {
            int i = this.u;
            IInterface iInterface = this.r;
        }
        printWriter.append(str).append("mConnectState=");
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                printWriter.print("DISCONNECTED");
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                printWriter.print("CONNECTING");
                break;
            case Util.TYPE_OTHER /*3*/:
                printWriter.print("CONNECTED");
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.println("null");
        } else {
            printWriter.append(b()).append("@").println(Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f > 0) {
            printWriter.append(str).append("lastConnectedTime=").println(this.f + " " + simpleDateFormat.format(new Date(this.f)));
        }
        if (this.e > 0) {
            printWriter.append(str).append("lastSuspendedCause=");
            switch (this.a) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    printWriter.append("CAUSE_SERVICE_DISCONNECTED");
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    printWriter.append("CAUSE_NETWORK_LOST");
                    break;
                default:
                    printWriter.append(String.valueOf(this.a));
                    break;
            }
            printWriter.append(" lastSuspendedTime=").println(this.e + " " + simpleDateFormat.format(new Date(this.e)));
        }
        if (this.h > 0) {
            printWriter.append(str).append("lastFailedStatus=").append(m.a(this.g));
            printWriter.append(" lastFailedTime=").println(this.h + " " + simpleDateFormat.format(new Date(this.h)));
        }
    }

    @Nullable
    protected abstract T b(IBinder iBinder);

    @NonNull
    protected abstract String b();

    public void b(int i) {
        this.b.sendMessage(this.b.obtainMessage(4, this.c.get(), i));
    }

    public Bundle c_() {
        return null;
    }

    public void d() {
        this.c.incrementAndGet();
        synchronized (this.s) {
            int size = this.s.size();
            for (int i = 0; i < size; i++) {
                ((ae) this.s.get(i)).e();
            }
            this.s.clear();
        }
        synchronized (this.o) {
            this.p = null;
        }
        b(1, null);
    }

    public boolean e() {
        boolean z;
        synchronized (this.n) {
            z = this.u == 3;
        }
        return z;
    }

    public boolean f() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public Intent h() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @Nullable
    public IBinder i() {
        IBinder iBinder;
        synchronized (this.o) {
            if (this.p == null) {
                iBinder = null;
            } else {
                iBinder = this.p.asBinder();
            }
        }
        return iBinder;
    }

    @Nullable
    protected final String i_() {
        return this.j.g();
    }

    public void k() {
        int a = this.m.a(this.i);
        if (a != 0) {
            b(1, null);
            this.q = new ah(this);
            this.b.sendMessage(this.b.obtainMessage(3, this.c.get(), a));
            return;
        }
        a(new ah(this));
    }

    public boolean l() {
        boolean z;
        synchronized (this.n) {
            z = this.u == 2;
        }
        return z;
    }

    public final Context m() {
        return this.i;
    }

    public final Account n() {
        return this.w != null ? this.w : new Account("<<default account>>", "com.google");
    }

    protected Bundle o() {
        return new Bundle();
    }

    protected final void p() {
        if (!e()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T q() throws DeadObjectException {
        T t;
        synchronized (this.n) {
            if (this.u == 4) {
                throw new DeadObjectException();
            }
            p();
            bm.a(this.r != null, "Client is connected but service is null");
            t = this.r;
        }
        return t;
    }

    public boolean r() {
        return false;
    }
}
