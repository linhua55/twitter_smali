package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* compiled from: Twttr */
public final class Handshake {
    private final String cipherSuite;
    private final List<Certificate> localCertificates;
    private final List<Certificate> peerCertificates;

    private Handshake(String str, List<Certificate> list, List<Certificate> list2) {
        this.cipherSuite = str;
        this.peerCertificates = list;
        this.localCertificates = list2;
    }

    public static Handshake get(SSLSession sSLSession) {
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        Object[] peerCertificates;
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            peerCertificates = null;
        }
        List immutableList = peerCertificates != null ? Util.immutableList(peerCertificates) : Collections.emptyList();
        Object[] localCertificates = sSLSession.getLocalCertificates();
        return new Handshake(cipherSuite, immutableList, localCertificates != null ? Util.immutableList(localCertificates) : Collections.emptyList());
    }

    public static Handshake get(String str, List<Certificate> list, List<Certificate> list2) {
        if (str != null) {
            return new Handshake(str, Util.immutableList((List) list), Util.immutableList((List) list2));
        }
        throw new IllegalArgumentException("cipherSuite == null");
    }

    public String cipherSuite() {
        return this.cipherSuite;
    }

    public List<Certificate> peerCertificates() {
        return this.peerCertificates;
    }

    public Principal peerPrincipal() {
        return !this.peerCertificates.isEmpty() ? ((X509Certificate) this.peerCertificates.get(0)).getSubjectX500Principal() : null;
    }

    public List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    public Principal localPrincipal() {
        return !this.localCertificates.isEmpty() ? ((X509Certificate) this.localCertificates.get(0)).getSubjectX500Principal() : null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        if (this.cipherSuite.equals(handshake.cipherSuite) && this.peerCertificates.equals(handshake.peerCertificates) && this.localCertificates.equals(handshake.localCertificates)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.cipherSuite.hashCode() + 527) * 31) + this.peerCertificates.hashCode()) * 31) + this.localCertificates.hashCode();
    }
}
