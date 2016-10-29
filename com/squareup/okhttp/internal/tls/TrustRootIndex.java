package com.squareup.okhttp.internal.tls;

import java.security.cert.X509Certificate;

/* compiled from: Twttr */
public interface TrustRootIndex {
    X509Certificate findByIssuerAndSignature(X509Certificate x509Certificate);
}
