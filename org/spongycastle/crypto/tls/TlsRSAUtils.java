package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class TlsRSAUtils {
    public static byte[] a(TlsContext tlsContext, RSAKeyParameters rSAKeyParameters, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[48];
        tlsContext.b().nextBytes(bArr);
        TlsUtils.a(tlsContext.d(), bArr, 0);
        PKCS1Encoding pKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine());
        pKCS1Encoding.a(true, new ParametersWithRandom(rSAKeyParameters, tlsContext.b()));
        try {
            byte[] a = pKCS1Encoding.a(bArr, 0, bArr.length);
            if (TlsUtils.a(tlsContext)) {
                outputStream.write(a);
            } else {
                TlsUtils.b(a, outputStream);
            }
            return bArr;
        } catch (InvalidCipherTextException e) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public static byte[] a(TlsContext tlsContext, RSAKeyParameters rSAKeyParameters, byte[] bArr) {
        int i = 0;
        ProtocolVersion d = tlsContext.d();
        byte[] bArr2 = new byte[48];
        tlsContext.b().nextBytes(bArr2);
        byte[] b = Arrays.b(bArr2);
        try {
            PKCS1Encoding pKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine(), bArr2);
            pKCS1Encoding.a(false, new ParametersWithRandom(rSAKeyParameters, tlsContext.b()));
            b = pKCS1Encoding.a(bArr, 0, bArr.length);
        } catch (Exception e) {
        }
        int b2 = (d.b() ^ (b[1] & 255)) | (d.a() ^ (b[0] & 255));
        b2 |= b2 >> 1;
        b2 |= b2 >> 2;
        b2 = (((b2 | (b2 >> 4)) & 1) - 1) ^ -1;
        while (i < 48) {
            b[i] = (byte) ((b[i] & (b2 ^ -1)) | (bArr2[i] & b2));
            i++;
        }
        return b;
    }
}
