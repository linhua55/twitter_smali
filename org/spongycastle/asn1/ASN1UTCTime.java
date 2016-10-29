package org.spongycastle.asn1;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class ASN1UTCTime extends ASN1Primitive {
    private byte[] a;

    ASN1UTCTime(byte[] bArr) {
        this.a = bArr;
    }

    public Date a() throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat.parse(h());
    }

    public String e() {
        String b = Strings.b(this.a);
        if (b.indexOf(45) >= 0 || b.indexOf(43) >= 0) {
            int indexOf = b.indexOf(45);
            if (indexOf < 0) {
                indexOf = b.indexOf(43);
            }
            if (indexOf == b.length() - 3) {
                b = b + "00";
            }
            if (indexOf == 10) {
                return b.substring(0, 10) + "00GMT" + b.substring(10, 13) + ":" + b.substring(13, 15);
            }
            return b.substring(0, 12) + "GMT" + b.substring(12, 15) + ":" + b.substring(15, 17);
        } else if (b.length() == 11) {
            return b.substring(0, 10) + "00GMT+00:00";
        } else {
            return b.substring(0, 12) + "GMT+00:00";
        }
    }

    public String h() {
        String e = e();
        if (e.charAt(0) < '5') {
            return "20" + e;
        }
        return "19" + e;
    }

    boolean b() {
        return false;
    }

    int c() {
        int length = this.a.length;
        return length + (StreamUtil.a(length) + 1);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.b(23);
        int length = this.a.length;
        aSN1OutputStream.a(length);
        for (int i = 0; i != length; i++) {
            aSN1OutputStream.b(this.a[i]);
        }
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1UTCTime) {
            return Arrays.a(this.a, ((ASN1UTCTime) aSN1Primitive).a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }

    public String toString() {
        return Strings.b(this.a);
    }
}
