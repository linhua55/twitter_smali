package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.j;
import com.google.ads.mediation.k;
import com.google.ads.mediation.l;
import com.google.ads.mediation.m;
import com.google.ads.mediation.o;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public final class ld<NETWORK_EXTRAS extends o, SERVER_PARAMETERS extends MediationServerParameters> implements k, m {
    private final kj a;

    public ld(kj kjVar) {
        this.a = kjVar;
    }

    public void a(j<?, ?> jVar, ErrorCode errorCode) {
        b.a("Adapter called onFailedToReceiveAd with error. " + errorCode);
        if (aa.a().b()) {
            try {
                this.a.a(lg.a(errorCode));
                return;
            } catch (Throwable e) {
                b.d("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        b.d("onFailedToReceiveAd must be called on the main UI thread.");
        a.a.post(new lf(this, errorCode));
    }

    public void a(l<?, ?> lVar, ErrorCode errorCode) {
        b.a("Adapter called onFailedToReceiveAd with error " + errorCode + ".");
        if (aa.a().b()) {
            try {
                this.a.a(lg.a(errorCode));
                return;
            } catch (Throwable e) {
                b.d("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        b.d("onFailedToReceiveAd must be called on the main UI thread.");
        a.a.post(new le(this, errorCode));
    }
}
