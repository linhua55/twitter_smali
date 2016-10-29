package org.spongycastle.crypto.tls;

import org.spongycastle.asn1.x509.Certificate;

/* compiled from: Twttr */
public interface CertificateVerifyer {
    boolean a(Certificate[] certificateArr);
}
