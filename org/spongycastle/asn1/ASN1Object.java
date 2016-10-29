package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public abstract class ASN1Object implements ASN1Encodable {
    public abstract ASN1Primitive d();

    public byte[] f() throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).a((ASN1Encodable) this);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] a(String str) throws IOException {
        OutputStream byteArrayOutputStream;
        if (str.equals("DER")) {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new DEROutputStream(byteArrayOutputStream).a(this);
            return byteArrayOutputStream.toByteArray();
        } else if (!str.equals("DL")) {
            return f();
        } else {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new DLOutputStream(byteArrayOutputStream).a(this);
            return byteArrayOutputStream.toByteArray();
        }
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ASN1Encodable)) {
            return false;
        }
        return d().equals(((ASN1Encodable) obj).d());
    }

    public ASN1Primitive g() {
        return d();
    }
}
