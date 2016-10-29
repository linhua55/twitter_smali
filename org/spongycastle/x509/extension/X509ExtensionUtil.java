package org.spongycastle.x509.extension;

import java.io.IOException;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class X509ExtensionUtil {
    public static ASN1Primitive a(byte[] bArr) throws IOException {
        return ASN1Primitive.b(((ASN1OctetString) ASN1Primitive.b(bArr)).e());
    }
}
