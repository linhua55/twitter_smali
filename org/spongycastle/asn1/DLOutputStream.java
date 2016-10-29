package org.spongycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public class DLOutputStream extends ASN1OutputStream {
    public DLOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void a(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable != null) {
            aSN1Encodable.d().j().a((ASN1OutputStream) this);
            return;
        }
        throw new IOException("null object detected");
    }
}
