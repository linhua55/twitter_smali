package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzw extends Fragment implements OnCancelListener {
    protected al a;
    private boolean b;
    private boolean c;
    private int d;
    private ConnectionResult e;
    private final Handler f;
    private final SparseArray<av> g;

    public zzw() {
        this.d = -1;
        this.f = new Handler(Looper.getMainLooper());
        this.g = new SparseArray();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.support.annotation.Nullable
    private static com.google.android.gms.common.api.internal.zzw a() {
        /*
        r1 = 0;
        r4 = 3;
        r0 = "com.google.android.gms.common.api.internal.SupportLifecycleFragmentImpl";
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0044, LinkageError -> 0x0012, SecurityException -> 0x0042 }
    L_0x0009:
        if (r0 == 0) goto L_0x003a;
    L_0x000b:
        r0 = r0.newInstance();	 Catch:{ IllegalAccessException -> 0x0040, InstantiationException -> 0x003c, ExceptionInInitializerError -> 0x003e, RuntimeException -> 0x0027 }
        r0 = (com.google.android.gms.common.api.internal.zzw) r0;	 Catch:{ IllegalAccessException -> 0x0040, InstantiationException -> 0x003c, ExceptionInInitializerError -> 0x003e, RuntimeException -> 0x0027 }
    L_0x0011:
        return r0;
    L_0x0012:
        r0 = move-exception;
    L_0x0013:
        r2 = "GmsSupportLifecycleFrag";
        r2 = android.util.Log.isLoggable(r2, r4);
        if (r2 == 0) goto L_0x0025;
    L_0x001c:
        r2 = "GmsSupportLifecycleFrag";
        r3 = "Unable to find SupportLifecycleFragmentImpl class";
        android.util.Log.d(r2, r3, r0);
    L_0x0025:
        r0 = r1;
        goto L_0x0009;
    L_0x0027:
        r0 = move-exception;
    L_0x0028:
        r2 = "GmsSupportLifecycleFrag";
        r2 = android.util.Log.isLoggable(r2, r4);
        if (r2 == 0) goto L_0x003a;
    L_0x0031:
        r2 = "GmsSupportLifecycleFrag";
        r3 = "Unable to instantiate SupportLifecycleFragmentImpl class";
        android.util.Log.d(r2, r3, r0);
    L_0x003a:
        r0 = r1;
        goto L_0x0011;
    L_0x003c:
        r0 = move-exception;
        goto L_0x0028;
    L_0x003e:
        r0 = move-exception;
        goto L_0x0028;
    L_0x0040:
        r0 = move-exception;
        goto L_0x0028;
    L_0x0042:
        r0 = move-exception;
        goto L_0x0013;
    L_0x0044:
        r0 = move-exception;
        goto L_0x0013;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzw.a():com.google.android.gms.common.api.internal.zzw");
    }

    @Nullable
    public static zzw a(FragmentActivity fragmentActivity) {
        bm.b("Must be called from main thread of process");
        try {
            zzw com_google_android_gms_common_api_internal_zzw = (zzw) fragmentActivity.getSupportFragmentManager().findFragmentByTag("GmsSupportLifecycleFrag");
            return (com_google_android_gms_common_api_internal_zzw == null || com_google_android_gms_common_api_internal_zzw.isRemoving()) ? null : com_google_android_gms_common_api_internal_zzw;
        } catch (Throwable e) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFrag is not a SupportLifecycleFragment", e);
        }
    }

    private static String a(ConnectionResult connectionResult) {
        return connectionResult.e() + " (" + connectionResult.c() + ": " + n.getErrorString(connectionResult.c()) + ')';
    }

    public static zzw b(FragmentActivity fragmentActivity) {
        zzw a = a(fragmentActivity);
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        if (a == null) {
            a = a();
            if (a == null) {
                Log.w("GmsSupportLifecycleFrag", "Unable to find connection error message resources (Did you include play-services-base and the proper proguard rules?); error dialogs may be unavailable.");
                a = new zzw();
            }
            supportFragmentManager.beginTransaction().add(a, "GmsSupportLifecycleFrag").commitAllowingStateLoss();
            supportFragmentManager.executePendingTransactions();
        }
        return a;
    }

    private void c(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFrag", "Unresolved error while connecting client. Stopping auto-manage.");
        av avVar = (av) this.g.get(i);
        if (avVar != null) {
            a(i);
            r rVar = avVar.c;
            if (rVar != null) {
                rVar.a(connectionResult);
            }
        }
        c();
    }

    public void a(int i) {
        av avVar = (av) this.g.get(i);
        this.g.remove(i);
        if (avVar != null) {
            avVar.a();
        }
    }

    protected void a(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFrag", "Failed to connect due to user resolvable error " + a(connectionResult));
        c(i, connectionResult);
    }

    public void a(int i, com.google.android.gms.common.api.n nVar, r rVar) {
        bm.a(nVar, "GoogleApiClient instance cannot be null");
        bm.a(this.g.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.g.put(i, new av(this, i, nVar, rVar));
        if (this.b && !this.c) {
            nVar.b();
        }
    }

    protected f b() {
        return f.b();
    }

    protected void b(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFrag", "Unable to connect, GooglePlayServices is updating.");
        c(i, connectionResult);
    }

    protected void c() {
        this.c = false;
        this.d = -1;
        this.e = null;
        if (this.a != null) {
            this.a.b();
            this.a = null;
        }
        for (int i = 0; i < this.g.size(); i++) {
            ((av) this.g.valueAt(i)).b.b();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (int i = 0; i < this.g.size(); i++) {
            ((av) this.g.valueAt(i)).a(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActivityResult(int r5, int r6, android.content.Intent r7) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        switch(r5) {
            case 1: goto L_0x001b;
            case 2: goto L_0x000c;
            default: goto L_0x0005;
        };
    L_0x0005:
        r0 = r1;
    L_0x0006:
        if (r0 == 0) goto L_0x002b;
    L_0x0008:
        r4.c();
    L_0x000b:
        return;
    L_0x000c:
        r2 = r4.b();
        r3 = r4.getActivity();
        r2 = r2.a(r3);
        if (r2 != 0) goto L_0x0005;
    L_0x001a:
        goto L_0x0006;
    L_0x001b:
        r2 = -1;
        if (r6 == r2) goto L_0x0006;
    L_0x001e:
        if (r6 != 0) goto L_0x0005;
    L_0x0020:
        r0 = new com.google.android.gms.common.ConnectionResult;
        r2 = 13;
        r3 = 0;
        r0.<init>(r2, r3);
        r4.e = r0;
        goto L_0x0005;
    L_0x002b:
        r0 = r4.d;
        r1 = r4.e;
        r4.c(r0, r1);
        goto L_0x000b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzw.onActivityResult(int, int, android.content.Intent):void");
    }

    public void onCancel(DialogInterface dialogInterface) {
        c(this.d, new ConnectionResult(13, null));
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.c = bundle.getBoolean("resolving_error", false);
            this.d = bundle.getInt("failed_client_id", -1);
            if (this.d >= 0) {
                this.e = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.c);
        if (this.d >= 0) {
            bundle.putInt("failed_client_id", this.d);
            bundle.putInt("failed_status", this.e.c());
            bundle.putParcelable("failed_resolution", this.e.d());
        }
    }

    public void onStart() {
        super.onStart();
        this.b = true;
        if (!this.c) {
            for (int i = 0; i < this.g.size(); i++) {
                ((av) this.g.valueAt(i)).b.b();
            }
        }
    }

    public void onStop() {
        super.onStop();
        this.b = false;
        for (int i = 0; i < this.g.size(); i++) {
            ((av) this.g.valueAt(i)).b.c();
        }
    }
}
