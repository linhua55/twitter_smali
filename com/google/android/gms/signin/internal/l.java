package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.c;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.common.internal.as;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;

public class l extends ab<g> implements xd {
    private final boolean a;
    private final w e;
    private final Bundle f;
    private Integer g;

    public l(Context context, Looper looper, boolean z, w wVar, Bundle bundle, q qVar, r rVar) {
        super(context, looper, 44, wVar, qVar, rVar);
        this.a = z;
        this.e = wVar;
        this.f = bundle;
        this.g = wVar.i();
    }

    public l(Context context, Looper looper, boolean z, w wVar, xe xeVar, q qVar, r rVar) {
        this(context, looper, z, wVar, a(wVar), qVar, rVar);
    }

    public static Bundle a(w wVar) {
        xe h = wVar.h();
        Integer i = wVar.i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", wVar.a());
        if (i != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", i.intValue());
        }
        if (h != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", h.a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", h.b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", h.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", h.d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", h.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", h.f());
        }
        return bundle;
    }

    private ResolveAccountRequest s() {
        Account b = this.e.b();
        GoogleSignInAccount googleSignInAccount = null;
        if ("<<default account>>".equals(b.name)) {
            googleSignInAccount = c.a(m()).a();
        }
        return new ResolveAccountRequest(b, this.g.intValue(), googleSignInAccount);
    }

    protected g a(IBinder iBinder) {
        return h.a(iBinder);
    }

    protected String a() {
        return "com.google.android.gms.signin.service.START";
    }

    public void a(as asVar, boolean z) {
        try {
            ((g) q()).a(asVar, this.g.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    public void a(d dVar) {
        bm.a(dVar, "Expecting a valid ISignInCallbacks");
        try {
            ((g) q()).a(new SignInRequest(s()), dVar);
        } catch (Throwable e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                dVar.a(new SignInResponse(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    protected /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    protected String b() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    public void c() {
        try {
            ((g) q()).a(this.g.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    public boolean f() {
        return this.a;
    }

    public void j() {
        a(new ah(this));
    }

    protected Bundle o() {
        if (!m().getPackageName().equals(this.e.f())) {
            this.f.putString("com.google.android.gms.signin.internal.realClientPackageName", this.e.f());
        }
        return this.f;
    }
}
