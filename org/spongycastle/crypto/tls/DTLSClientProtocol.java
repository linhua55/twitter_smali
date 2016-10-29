package org.spongycastle.crypto.tls;

import java.util.Hashtable;
import org.spongycastle.crypto.tls.SessionParameters.Builder;

/* compiled from: Twttr */
public class DTLSClientProtocol extends DTLSProtocol {

    /* compiled from: Twttr */
    public class ClientHandshakeState {
        TlsClient a;
        TlsClientContextImpl b;
        TlsSession c;
        SessionParameters d;
        Builder e;
        int[] f;
        short[] g;
        Hashtable h;
        byte[] i;
        int j;
        short k;
        boolean l;
        short m;
        boolean n;
        boolean o;
        TlsKeyExchange p;
        TlsAuthentication q;
        CertificateStatus r;
        CertificateRequest s;
        TlsCredentials t;

        protected ClientHandshakeState() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = -1;
            this.k = (short) -1;
            this.l = false;
            this.m = (short) -1;
            this.n = false;
            this.o = false;
            this.p = null;
            this.q = null;
            this.r = null;
            this.s = null;
            this.t = null;
        }
    }
}
