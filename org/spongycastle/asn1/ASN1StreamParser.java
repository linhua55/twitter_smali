package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class ASN1StreamParser {
    private final InputStream a;
    private final int b;
    private final byte[][] c;

    public ASN1StreamParser(InputStream inputStream) {
        this(inputStream, StreamUtil.a(inputStream));
    }

    public ASN1StreamParser(InputStream inputStream, int i) {
        this.a = inputStream;
        this.b = i;
        this.c = new byte[11][];
    }

    ASN1Encodable a(int i) throws IOException {
        switch (i) {
            case p.View_theme /*4*/:
                return new BEROctetStringParser(this);
            case p.Toolbar_contentInsetRight /*8*/:
                return new DERExternalParser(this);
            case p.Toolbar_titleMarginBottom /*16*/:
                return new BERSequenceParser(this);
            case p.Toolbar_maxButtonHeight /*17*/:
                return new BERSetParser(this);
            default:
                throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(i));
        }
    }

    ASN1Primitive a(boolean z, int i) throws IOException {
        if (!z) {
            return new DERTaggedObject(false, i, new DEROctetString(((DefiniteLengthInputStream) this.a).b()));
        }
        ASN1EncodableVector b = b();
        return this.a instanceof IndefiniteLengthInputStream ? b.a() == 1 ? new BERTaggedObject(true, i, b.a(0)) : new BERTaggedObject(false, i, BERFactory.a(b)) : b.a() == 1 ? new DERTaggedObject(true, i, b.a(0)) : new DERTaggedObject(false, i, DERFactory.a(b));
    }

    public ASN1Encodable a() throws IOException {
        boolean z = false;
        int read = this.a.read();
        if (read == -1) {
            return null;
        }
        a(false);
        int a = ASN1InputStream.a(this.a, read);
        if ((read & 32) != 0) {
            z = true;
        }
        int b = ASN1InputStream.b(this.a, this.b);
        if (b >= 0) {
            DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this.a, b);
            if ((read & 64) != 0) {
                return new DERApplicationSpecific(z, a, definiteLengthInputStream.b());
            }
            if ((read & 128) != 0) {
                return new BERTaggedObjectParser(z, a, new ASN1StreamParser(definiteLengthInputStream));
            }
            if (z) {
                switch (a) {
                    case p.View_theme /*4*/:
                        return new BEROctetStringParser(new ASN1StreamParser(definiteLengthInputStream));
                    case p.Toolbar_contentInsetRight /*8*/:
                        return new DERExternalParser(new ASN1StreamParser(definiteLengthInputStream));
                    case p.Toolbar_titleMarginBottom /*16*/:
                        return new DERSequenceParser(new ASN1StreamParser(definiteLengthInputStream));
                    case p.Toolbar_maxButtonHeight /*17*/:
                        return new DERSetParser(new ASN1StreamParser(definiteLengthInputStream));
                    default:
                        throw new IOException("unknown tag " + a + " encountered");
                }
            }
            switch (a) {
                case p.View_theme /*4*/:
                    return new DEROctetStringParser(definiteLengthInputStream);
                default:
                    try {
                        return ASN1InputStream.a(a, definiteLengthInputStream, this.c);
                    } catch (Throwable e) {
                        throw new ASN1Exception("corrupted stream detected", e);
                    }
            }
        } else if (z) {
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this.a, this.b), this.b);
            if ((read & 64) != 0) {
                return new BERApplicationSpecificParser(a, aSN1StreamParser);
            }
            if ((read & 128) != 0) {
                return new BERTaggedObjectParser(true, a, aSN1StreamParser);
            }
            return aSN1StreamParser.a(a);
        } else {
            throw new IOException("indefinite length primitive encoding encountered");
        }
    }

    private void a(boolean z) {
        if (this.a instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) this.a).a(z);
        }
    }

    ASN1EncodableVector b() throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        while (true) {
            ASN1Encodable a = a();
            if (a == null) {
                return aSN1EncodableVector;
            }
            if (a instanceof InMemoryRepresentable) {
                aSN1EncodableVector.a(((InMemoryRepresentable) a).h());
            } else {
                aSN1EncodableVector.a(a.d());
            }
        }
    }
}
