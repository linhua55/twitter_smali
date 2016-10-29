package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* compiled from: Twttr */
public interface TlsAgreementCredentials extends TlsCredentials {
    byte[] a(AsymmetricKeyParameter asymmetricKeyParameter) throws IOException;
}
