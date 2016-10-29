package defpackage;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;

/* compiled from: Twttr */
/* renamed from: cdq */
class cdq extends PhoneStateListener {
    final /* synthetic */ cdo a;

    private cdq(cdo cdo) {
        this.a = cdo;
    }

    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
        if (signalStrength.isGsm()) {
            this.a.c = signalStrength.getGsmSignalStrength();
        } else {
            this.a.c = signalStrength.getCdmaDbm();
        }
        this.a.d = this.a.a(signalStrength);
    }
}
