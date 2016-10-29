package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class ASN1Null extends ASN1Primitive {
    abstract void a(ASN1OutputStream aSN1OutputStream) throws IOException;

    public int hashCode() {
        return -1;
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Null) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "NULL";
    }
}
