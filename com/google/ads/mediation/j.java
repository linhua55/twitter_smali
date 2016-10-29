package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.a;

@Deprecated
public interface j<ADDITIONAL_PARAMETERS extends o, SERVER_PARAMETERS extends MediationServerParameters> extends i<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void a(k kVar, Activity activity, SERVER_PARAMETERS server_parameters, a aVar, h hVar, ADDITIONAL_PARAMETERS additional_parameters);

    View d();
}
