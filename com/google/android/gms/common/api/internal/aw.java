package com.google.android.gms.common.api.internal;

import android.content.IntentSender.SendIntentException;
import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;

class aw implements Runnable {
    final /* synthetic */ zzw a;
    private final int b;
    private final ConnectionResult c;

    public aw(zzw com_google_android_gms_common_api_internal_zzw, int i, ConnectionResult connectionResult) {
        this.a = com_google_android_gms_common_api_internal_zzw;
        this.b = i;
        this.c = connectionResult;
    }

    @MainThread
    public void run() {
        if (this.a.b && !this.a.c) {
            this.a.c = true;
            this.a.d = this.b;
            this.a.e = this.c;
            if (this.c.a()) {
                try {
                    this.c.a(this.a.getActivity(), ((this.a.getActivity().getSupportFragmentManager().getFragments().indexOf(this.a) + 1) << 16) + 1);
                } catch (SendIntentException e) {
                    this.a.c();
                }
            } else if (this.a.b().a(this.c.c())) {
                this.a.a(this.b, this.c);
            } else if (this.c.c() == 18) {
                this.a.b(this.b, this.c);
            } else {
                this.a.c(this.b, this.c);
            }
        }
    }
}
