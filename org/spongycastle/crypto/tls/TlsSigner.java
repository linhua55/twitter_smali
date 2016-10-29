package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* compiled from: Twttr */
public interface TlsSigner {
    Signer a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter);

    void a(TlsContext tlsContext);

    boolean a(AsymmetricKeyParameter asymmetricKeyParameter);

    boolean a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, byte[] bArr, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr2) throws CryptoException;

    byte[] a(AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException;

    byte[] a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException;
}
