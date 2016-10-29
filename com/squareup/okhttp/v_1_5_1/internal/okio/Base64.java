package com.squareup.okhttp.v_1_5_1.internal.okio;

import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.UnsupportedEncodingException;

/* compiled from: Twttr */
final class Base64 {
    private static final byte[] MAP;

    private Base64() {
    }

    public static byte[] decode(String str) {
        int i;
        int length = str.length();
        while (length > 0) {
            char charAt = str.charAt(length - 1);
            if (charAt != '=' && charAt != '\n' && charAt != '\r' && charAt != ' ' && charAt != '\t') {
                break;
            }
            length--;
        }
        Object obj = new byte[((int) ((((long) length) * 6) / 8))];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < length) {
            charAt = str.charAt(i2);
            if (charAt >= 'A' && charAt <= 'Z') {
                i = charAt - 65;
            } else if (charAt >= 'a' && charAt <= 'z') {
                i = charAt - 71;
            } else if (charAt >= '0' && charAt <= '9') {
                i = charAt + 4;
            } else if (charAt == '+') {
                i = 62;
            } else if (charAt == '/') {
                i = 63;
            } else if (charAt == '\n' || charAt == '\r' || charAt == ' ') {
                i = i3;
                i3 = i4;
                i4 = i5;
                i2++;
                i5 = i4;
                i4 = i3;
                i3 = i;
            } else if (charAt != '\t') {
                return null;
            } else {
                i = i3;
                i3 = i4;
                i4 = i5;
                i2++;
                i5 = i4;
                i4 = i3;
                i3 = i;
            }
            i = ((byte) i) | (i3 << 6);
            i3 = i4 + 1;
            if (i3 % 4 == 0) {
                i4 = i5 + 1;
                obj[i5] = (byte) (i >> 16);
                i5 = i4 + 1;
                obj[i4] = (byte) (i >> 8);
                i4 = i5 + 1;
                obj[i5] = (byte) i;
            } else {
                i4 = i5;
            }
            i2++;
            i5 = i4;
            i4 = i3;
            i3 = i;
        }
        i = i4 % 4;
        if (i == 1) {
            return null;
        }
        if (i == 2) {
            i = i5 + 1;
            obj[i5] = (byte) ((i3 << 12) >> 16);
            i5 = i;
        } else if (i == 3) {
            i = i3 << 6;
            i3 = i5 + 1;
            obj[i5] = (byte) (i >> 16);
            i5 = i3 + 1;
            obj[i3] = (byte) (i >> 8);
        }
        if (i5 == obj.length) {
            return obj;
        }
        byte[] bArr = new byte[i5];
        System.arraycopy(obj, 0, bArr, 0, i5);
        return bArr;
    }

    static {
        MAP = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, ClosedCaptionCtrl.END_OF_CAPTION};
    }

    public static String encode(byte[] bArr) {
        int i = 0;
        byte[] bArr2 = new byte[(((bArr.length + 2) * 4) / 3)];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            bArr2[i] = MAP[(bArr[i2] & NalUnitUtil.EXTENDED_SAR) >> 2];
            i = i3 + 1;
            bArr2[i3] = MAP[((bArr[i2] & 3) << 4) | ((bArr[i2 + 1] & NalUnitUtil.EXTENDED_SAR) >> 4)];
            int i4 = i + 1;
            bArr2[i] = MAP[((bArr[i2 + 1] & 15) << 2) | ((bArr[i2 + 2] & NalUnitUtil.EXTENDED_SAR) >> 6)];
            i3 = i4 + 1;
            bArr2[i4] = MAP[bArr[i2 + 2] & 63];
            i2 += 3;
            i = i3;
        }
        switch (bArr.length % 3) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                i2 = i + 1;
                bArr2[i] = MAP[(bArr[length] & NalUnitUtil.EXTENDED_SAR) >> 2];
                i = i2 + 1;
                bArr2[i2] = MAP[(bArr[length] & 3) << 4];
                i2 = i + 1;
                bArr2[i] = (byte) 61;
                i = i2 + 1;
                bArr2[i2] = (byte) 61;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i2 = i + 1;
                bArr2[i] = MAP[(bArr[length] & NalUnitUtil.EXTENDED_SAR) >> 2];
                i = i2 + 1;
                bArr2[i2] = MAP[((bArr[length] & 3) << 4) | ((bArr[length + 1] & NalUnitUtil.EXTENDED_SAR) >> 4)];
                i2 = i + 1;
                bArr2[i] = MAP[(bArr[length + 1] & 15) << 2];
                i = i2 + 1;
                bArr2[i2] = (byte) 61;
                break;
        }
        try {
            return new String(bArr2, 0, i, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
