package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.n;

public final class h extends MediationServerParameters {
    @n(a = "label", b = true)
    public String a;
    @n(a = "class_name", b = true)
    public String b;
    @n(a = "parameter", b = false)
    public String c;

    public h() {
        this.c = null;
    }
}
