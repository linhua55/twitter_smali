package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;

/* compiled from: Twttr */
public abstract class ASN1OctetString extends ASN1Primitive implements ASN1OctetStringParser {
    byte[] a;

    abstract void a(ASN1OutputStream aSN1OutputStream) throws IOException;

    public static ASN1OctetString a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        Object l = aSN1TaggedObject.l();
        if (z || (l instanceof ASN1OctetString)) {
            return a(l);
        }
        return BEROctetString.a(ASN1Sequence.a(l));
    }

    public static ASN1OctetString a(Object obj) {
        if (obj == null || (obj instanceof ASN1OctetString)) {
            return (ASN1OctetString) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return a(ASN1Primitive.b((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive d = ((ASN1Encodable) obj).d();
            if (d instanceof ASN1OctetString) {
                return (ASN1OctetString) d;
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public ASN1OctetString(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("string cannot be null");
        }
        this.a = bArr;
    }

    public InputStream a() {
        return new ByteArrayInputStream(this.a);
    }

    public byte[] e() {
        return this.a;
    }

    public int hashCode() {
        return Arrays.a(e());
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1OctetString)) {
            return false;
        }
        return Arrays.a(this.a, ((ASN1OctetString) aSN1Primitive).a);
    }

    public ASN1Primitive h() {
        return d();
    }

    ASN1Primitive i() {
        return new DEROctetString(this.a);
    }

    ASN1Primitive j() {
        return new DEROctetString(this.a);
    }

    public String toString() {
        return "#" + new String(Hex.a(this.a));
    }
}
