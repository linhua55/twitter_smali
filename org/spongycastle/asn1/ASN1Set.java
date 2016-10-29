package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Vector;

/* compiled from: Twttr */
public abstract class ASN1Set extends ASN1Primitive {
    private Vector a;
    private boolean b;

    /* compiled from: Twttr */
    /* renamed from: org.spongycastle.asn1.ASN1Set.1 */
    class AnonymousClass1 implements ASN1SetParser {
        final /* synthetic */ ASN1Set a;

        public ASN1Primitive h() {
            return this.a;
        }

        public ASN1Primitive d() {
            return this.a;
        }
    }

    abstract void a(ASN1OutputStream aSN1OutputStream) throws IOException;

    public static ASN1Set a(Object obj) {
        if (obj == null || (obj instanceof ASN1Set)) {
            return (ASN1Set) obj;
        }
        if (obj instanceof ASN1SetParser) {
            return a(((ASN1SetParser) obj).d());
        }
        if (obj instanceof byte[]) {
            try {
                return a(ASN1Primitive.b((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive d = ((ASN1Encodable) obj).d();
            if (d instanceof ASN1Set) {
                return (ASN1Set) d;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Set a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (aSN1TaggedObject.e()) {
                return (ASN1Set) aSN1TaggedObject.l();
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        } else if (aSN1TaggedObject.e()) {
            if (aSN1TaggedObject instanceof BERTaggedObject) {
                return new BERSet(aSN1TaggedObject.l());
            }
            return new DLSet(aSN1TaggedObject.l());
        } else if (aSN1TaggedObject.l() instanceof ASN1Set) {
            return (ASN1Set) aSN1TaggedObject.l();
        } else {
            if (aSN1TaggedObject.l() instanceof ASN1Sequence) {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1TaggedObject.l();
                if (aSN1TaggedObject instanceof BERTaggedObject) {
                    return new BERSet(aSN1Sequence.a());
                }
                return new DLSet(aSN1Sequence.a());
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
    }

    protected ASN1Set() {
        this.a = new Vector();
        this.b = false;
    }

    protected ASN1Set(ASN1Encodable aSN1Encodable) {
        this.a = new Vector();
        this.b = false;
        this.a.addElement(aSN1Encodable);
    }

    protected ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        int i = 0;
        this.a = new Vector();
        this.b = false;
        while (i != aSN1EncodableVector.a()) {
            this.a.addElement(aSN1EncodableVector.a(i));
            i++;
        }
        if (z) {
            h();
        }
    }

    protected ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z) {
        int i = 0;
        this.a = new Vector();
        this.b = false;
        while (i != aSN1EncodableArr.length) {
            this.a.addElement(aSN1EncodableArr[i]);
            i++;
        }
        if (z) {
            h();
        }
    }

    public Enumeration a() {
        return this.a.elements();
    }

    public ASN1Encodable a(int i) {
        return (ASN1Encodable) this.a.elementAt(i);
    }

    public int e() {
        return this.a.size();
    }

    public int hashCode() {
        Enumeration a = a();
        int e = e();
        while (a.hasMoreElements()) {
            e = (e * 17) ^ a(a).hashCode();
        }
        return e;
    }

    ASN1Primitive i() {
        if (this.b) {
            ASN1Primitive dERSet = new DERSet();
            dERSet.a = this.a;
            return dERSet;
        }
        Vector vector = new Vector();
        for (int i = 0; i != this.a.size(); i++) {
            vector.addElement(this.a.elementAt(i));
        }
        dERSet = new DERSet();
        dERSet.a = vector;
        dERSet.h();
        return dERSet;
    }

    ASN1Primitive j() {
        ASN1Primitive dLSet = new DLSet();
        dLSet.a = this.a;
        return dLSet;
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Set)) {
            return false;
        }
        ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
        if (e() != aSN1Set.e()) {
            return false;
        }
        Enumeration a = a();
        Enumeration a2 = aSN1Set.a();
        while (a.hasMoreElements()) {
            ASN1Encodable a3 = a(a);
            ASN1Encodable a4 = a(a2);
            ASN1Primitive d = a3.d();
            ASN1Primitive d2 = a4.d();
            if (d != d2) {
                if (!d.equals(d2)) {
                    return false;
                }
            }
        }
        return true;
    }

    private ASN1Encodable a(Enumeration enumeration) {
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumeration.nextElement();
        if (aSN1Encodable == null) {
            return DERNull.a;
        }
        return aSN1Encodable;
    }

    private boolean a(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        int i = 0;
        while (i != min) {
            if (bArr[i] == bArr2[i]) {
                i++;
            } else if ((bArr[i] & 255) < (bArr2[i] & 255)) {
                return true;
            } else {
                return false;
            }
        }
        if (min != bArr.length) {
            return false;
        }
        return true;
    }

    private byte[] a(ASN1Encodable aSN1Encodable) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ASN1OutputStream(byteArrayOutputStream).a(aSN1Encodable);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    protected void h() {
        if (!this.b) {
            this.b = true;
            if (this.a.size() > 1) {
                int size = this.a.size() - 1;
                boolean z = true;
                while (z) {
                    byte[] a = a((ASN1Encodable) this.a.elementAt(0));
                    int i = 0;
                    int i2 = 0;
                    z = false;
                    while (i2 != size) {
                        int i3;
                        boolean z2;
                        byte[] a2 = a((ASN1Encodable) this.a.elementAt(i2 + 1));
                        if (a(a, a2)) {
                            i3 = i;
                            z2 = z;
                        } else {
                            Object elementAt = this.a.elementAt(i2);
                            this.a.setElementAt(this.a.elementAt(i2 + 1), i2);
                            this.a.setElementAt(elementAt, i2 + 1);
                            a2 = a;
                            z2 = true;
                            i3 = i2;
                        }
                        i2++;
                        z = z2;
                        i = i3;
                        a = a2;
                    }
                    size = i;
                }
            }
        }
    }

    boolean b() {
        return true;
    }

    public String toString() {
        return this.a.toString();
    }
}
