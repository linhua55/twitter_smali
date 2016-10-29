package org.spongycastle.jcajce.provider.util;

import java.io.IOException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;

/* compiled from: Twttr */
public interface AsymmetricKeyInfoConverter {
    PrivateKey a(PrivateKeyInfo privateKeyInfo) throws IOException;

    PublicKey a(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException;
}
