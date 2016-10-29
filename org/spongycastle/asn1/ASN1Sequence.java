package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

/* compiled from: Twttr */
public abstract class ASN1Sequence extends ASN1Primitive {
    protected Vector a;

    /* compiled from: Twttr */
    /* renamed from: org.spongycastle.asn1.ASN1Sequence.1 */
    class AnonymousClass1 implements ASN1SequenceParser {
        final /* synthetic */ ASN1Sequence a;

        public ASN1Primitive h() {
            return this.a;
        }

        public ASN1Primitive d() {
            return this.a;
        }
    }

    abstract void a(ASN1OutputStream aSN1OutputStream) throws IOException;

    public static ASN1Sequence a(Object obj) {
        if (obj == null || (obj instanceof ASN1Sequence)) {
            return (ASN1Sequence) obj;
        }
        if (obj instanceof ASN1SequenceParser) {
            return a(((ASN1SequenceParser) obj).d());
        }
        if (obj instanceof byte[]) {
            try {
                return a(ASN1Primitive.b((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive d = ((ASN1Encodable) obj).d();
            if (d instanceof ASN1Sequence) {
                return (ASN1Sequence) d;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Sequence a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (aSN1TaggedObject.e()) {
                return a(aSN1TaggedObject.l().d());
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        } else if (aSN1TaggedObject.e()) {
            if (aSN1TaggedObject instanceof BERTaggedObject) {
                return new BERSequence(aSN1TaggedObject.l());
            }
            return new DLSequence(aSN1TaggedObject.l());
        } else if (aSN1TaggedObject.l() instanceof ASN1Sequence) {
            return (ASN1Sequence) aSN1TaggedObject.l();
        } else {
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
    }

    protected ASN1Sequence() {
        this.a = new Vector();
    }

    protected ASN1Sequence(ASN1Encodable aSN1Encodable) {
        this.a = new Vector();
        this.a.addElement(aSN1Encodable);
    }

    protected ASN1Sequence(ASN1EncodableVector aSN1EncodableVector) {
        this.a = new Vector();
        for (int i = 0; i != aSN1EncodableVector.a(); i++) {
            this.a.addElement(aSN1EncodableVector.a(i));
        }
    }

    protected ASN1Sequence(ASN1Encodable[] aSN1EncodableArr) {
        this.a = new Vector();
        for (int i = 0; i != aSN1EncodableArr.length; i++) {
            this.a.addElement(aSN1EncodableArr[i]);
        }
    }

    public ASN1Encodable[] a() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[h()];
        for (int i = 0; i != h(); i++) {
            aSN1EncodableArr[i] = a(i);
        }
        return aSN1EncodableArr;
    }

    public Enumeration e() {
        return this.a.elements();
    }

    public ASN1Encodable a(int i) {
        return (ASN1Encodable) this.a.elementAt(i);
    }

    public int h() {
        return this.a.size();
    }

    public int hashCode() {
        Enumeration e = e();
        int h = h();
        while (e.hasMoreElements()) {
            h = (h * 17) ^ a(e).hashCode();
        }
        return h;
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Sequence)) {
            return false;
        }
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
        if (h() != aSN1Sequence.h()) {
            return false;
        }
        Enumeration e = e();
        Enumeration e2 = aSN1Sequence.e();
        while (e.hasMoreElements()) {
            ASN1Encodable a = a(e);
            ASN1Encodable a2 = a(e2);
            ASN1Primitive d = a.d();
            ASN1Primitive d2 = a2.d();
            if (d != d2) {
                if (!d.equals(d2)) {
                    return false;
                }
            }
        }
        return true;
    }

    private ASN1Encodable a(Enumeration enumeration) {
        return (ASN1Encodable) enumeration.nextElement();
    }

    ASN1Primitive i() {
        ASN1Primitive dERSequence = new DERSequence();
        dERSequence.a = this.a;
        return dERSequence;
    }

    ASN1Primitive j() {
        ASN1Primitive dLSequence = new DLSequence();
        dLSequence.a = this.a;
        return dLSequence;
    }

    boolean b() {
        return true;
    }

    public String toString() {
        return this.a.toString();
    }
}
