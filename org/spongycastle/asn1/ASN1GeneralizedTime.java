package org.spongycastle.asn1;

import java.io.IOException;
import java.text.ParseException;
import java.util.TimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class ASN1GeneralizedTime extends ASN1Primitive {
    private byte[] a;

    public static ASN1GeneralizedTime a(Object obj) {
        if (obj == null || (obj instanceof ASN1GeneralizedTime)) {
            return (ASN1GeneralizedTime) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1GeneralizedTime) ASN1Primitive.b((byte[]) obj);
            } catch (Exception e) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public ASN1GeneralizedTime(String str) {
        this.a = Strings.d(str);
        try {
            e();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    ASN1GeneralizedTime(byte[] bArr) {
        this.a = bArr;
    }

    public String a() {
        String b = Strings.b(this.a);
        if (b.charAt(b.length() - 1) == 'Z') {
            return b.substring(0, b.length() - 1) + "GMT+00:00";
        }
        int length = b.length() - 5;
        char charAt = b.charAt(length);
        if (charAt == '-' || charAt == '+') {
            return b.substring(0, length) + "GMT" + b.substring(length, length + 3) + ":" + b.substring(length + 3);
        }
        length = b.length() - 3;
        charAt = b.charAt(length);
        if (charAt == '-' || charAt == '+') {
            return b.substring(0, length) + "GMT" + b.substring(length) + ":00";
        }
        return b + h();
    }

    private String h() {
        String str = "+";
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            str = "-";
            rawOffset = -rawOffset;
        }
        int i = rawOffset / 3600000;
        int i2 = (rawOffset - (((i * 60) * 60) * 1000)) / 60000;
        try {
            if (timeZone.useDaylightTime() && timeZone.inDaylightTime(e())) {
                rawOffset = (str.equals("+") ? 1 : -1) + i;
                return "GMT" + str + a(rawOffset) + ":" + a(i2);
            }
            rawOffset = i;
            return "GMT" + str + a(rawOffset) + ":" + a(i2);
        } catch (ParseException e) {
            rawOffset = i;
        }
    }

    private String a(int i) {
        if (i < 10) {
            return "0" + i;
        }
        return Integer.toString(i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Date e() throws java.text.ParseException {
        /*
        r10 = this;
        r3 = 1;
        r8 = 14;
        r7 = 0;
        r0 = r10.a;
        r1 = org.spongycastle.util.Strings.b(r0);
        r0 = "Z";
        r0 = r1.endsWith(r0);
        if (r0 == 0) goto L_0x008e;
    L_0x0013:
        r0 = r10.k();
        if (r0 == 0) goto L_0x0085;
    L_0x0019:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmss.SSS'Z'";
        r0.<init>(r2);
    L_0x0021:
        r2 = new java.util.SimpleTimeZone;
        r4 = "Z";
        r2.<init>(r7, r4);
        r0.setTimeZone(r2);
        r9 = r1;
        r1 = r0;
        r0 = r9;
    L_0x002f:
        r2 = r10.k();
        if (r2 == 0) goto L_0x0080;
    L_0x0035:
        r4 = r0.substring(r8);
        r2 = r3;
    L_0x003a:
        r5 = r4.length();
        if (r2 >= r5) goto L_0x004c;
    L_0x0040:
        r5 = r4.charAt(r2);
        r6 = 48;
        if (r6 > r5) goto L_0x004c;
    L_0x0048:
        r6 = 57;
        if (r5 <= r6) goto L_0x00f5;
    L_0x004c:
        r5 = r2 + -1;
        r6 = 3;
        if (r5 <= r6) goto L_0x00f9;
    L_0x0051:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r5 = 4;
        r5 = r4.substring(r7, r5);
        r3 = r3.append(r5);
        r2 = r4.substring(r2);
        r2 = r3.append(r2);
        r2 = r2.toString();
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r0.substring(r7, r8);
        r0 = r3.append(r0);
        r0 = r0.append(r2);
        r0 = r0.toString();
    L_0x0080:
        r0 = r1.parse(r0);
        return r0;
    L_0x0085:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmss'Z'";
        r0.<init>(r2);
        goto L_0x0021;
    L_0x008e:
        r0 = 45;
        r0 = r1.indexOf(r0);
        if (r0 > 0) goto L_0x009e;
    L_0x0096:
        r0 = 43;
        r0 = r1.indexOf(r0);
        if (r0 <= 0) goto L_0x00c9;
    L_0x009e:
        r1 = r10.a();
        r0 = r10.k();
        if (r0 == 0) goto L_0x00c0;
    L_0x00a8:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmss.SSSz";
        r0.<init>(r2);
    L_0x00b0:
        r2 = new java.util.SimpleTimeZone;
        r4 = "Z";
        r2.<init>(r7, r4);
        r0.setTimeZone(r2);
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x002f;
    L_0x00c0:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmssz";
        r0.<init>(r2);
        goto L_0x00b0;
    L_0x00c9:
        r0 = r10.k();
        if (r0 == 0) goto L_0x00ec;
    L_0x00cf:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmss.SSS";
        r0.<init>(r2);
    L_0x00d7:
        r2 = new java.util.SimpleTimeZone;
        r4 = java.util.TimeZone.getDefault();
        r4 = r4.getID();
        r2.<init>(r7, r4);
        r0.setTimeZone(r2);
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x002f;
    L_0x00ec:
        r0 = new java.text.SimpleDateFormat;
        r2 = "yyyyMMddHHmmss";
        r0.<init>(r2);
        goto L_0x00d7;
    L_0x00f5:
        r2 = r2 + 1;
        goto L_0x003a;
    L_0x00f9:
        r5 = r2 + -1;
        if (r5 != r3) goto L_0x0134;
    L_0x00fd:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r5 = r4.substring(r7, r2);
        r3 = r3.append(r5);
        r5 = "00";
        r3 = r3.append(r5);
        r2 = r4.substring(r2);
        r2 = r3.append(r2);
        r2 = r2.toString();
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r0.substring(r7, r8);
        r0 = r3.append(r0);
        r0 = r0.append(r2);
        r0 = r0.toString();
        goto L_0x0080;
    L_0x0134:
        r3 = r2 + -1;
        r5 = 2;
        if (r3 != r5) goto L_0x0080;
    L_0x0139:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r5 = r4.substring(r7, r2);
        r3 = r3.append(r5);
        r5 = "0";
        r3 = r3.append(r5);
        r2 = r4.substring(r2);
        r2 = r3.append(r2);
        r2 = r2.toString();
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r0.substring(r7, r8);
        r0 = r3.append(r0);
        r0 = r0.append(r2);
        r0 = r0.toString();
        goto L_0x0080;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.ASN1GeneralizedTime.e():java.util.Date");
    }

    private boolean k() {
        int i = 0;
        while (i != this.a.length) {
            if (this.a[i] == 46 && i == 14) {
                return true;
            }
            i++;
        }
        return false;
    }

    boolean b() {
        return false;
    }

    int c() {
        int length = this.a.length;
        return length + (StreamUtil.a(length) + 1);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(24, this.a);
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            return Arrays.a(this.a, ((ASN1GeneralizedTime) aSN1Primitive).a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }
}
