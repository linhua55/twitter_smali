package org.spongycastle.crypto.tls;

import java.util.Hashtable;

/* compiled from: Twttr */
public class DTLSServerProtocol extends DTLSProtocol {

    /* compiled from: Twttr */
    public class ServerHandshakeState {
        TlsServer a;
        TlsServerContextImpl b;
        int c;
        short d;
        boolean e;
        short f;
        boolean g;
        boolean h;
        Hashtable i;
        TlsKeyExchange j;
        TlsCredentials k;
        CertificateRequest l;
        short m;
        Certificate n;

        protected ServerHandshakeState() {
            this.a = null;
            this.b = null;
            this.c = -1;
            this.d = (short) -1;
            this.e = false;
            this.f = (short) -1;
            this.g = false;
            this.h = false;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = (short) -1;
            this.n = null;
        }
    }
}
