package tv.periscope.android.video.rtmp;

import android.annotation.TargetApi;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Map;
import tv.periscope.android.library.p;

@TargetApi(19)
/* compiled from: Twttr */
public class a {
    public static byte[] a(Object[] objArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (Object a : objArr) {
            a(a, byteArrayOutputStream);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static Object[] a(byte[] bArr) {
        return a(bArr, bArr.length);
    }

    public static Object[] a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < i && bArr[i2] != 9) {
            i2 = a(bArr, i2, arrayList);
        }
        return arrayList.toArray();
    }

    private static void a(Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        int i = 0;
        if (obj == null) {
            byteArrayOutputStream.write(5);
        } else if (obj instanceof Boolean) {
            a((Boolean) obj, byteArrayOutputStream);
        } else if ((obj instanceof Double) || (obj instanceof Integer)) {
            Double valueOf;
            Double.valueOf(0.0d);
            if (obj instanceof Integer) {
                valueOf = Double.valueOf(((Integer) obj).doubleValue());
            } else {
                valueOf = (Double) obj;
            }
            a(valueOf, byteArrayOutputStream);
        } else if (obj instanceof String) {
            a((String) obj, byteArrayOutputStream);
        } else if (obj instanceof Map) {
            byteArrayOutputStream.write(3);
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                a(str, map.get(str), byteArrayOutputStream);
            }
            a(byteArrayOutputStream);
        } else if (obj instanceof Object[]) {
            byte[] bArr = new byte[5];
            bArr[0] = (byte) 10;
            Object[] objArr = (Object[]) obj;
            Connection.a((long) objArr.length, bArr, 1);
            byteArrayOutputStream.write(bArr, 0, 5);
            int length = objArr.length;
            while (i < length) {
                a(objArr[i], byteArrayOutputStream);
                i++;
            }
        }
    }

    private static void a(Boolean bool, ByteArrayOutputStream byteArrayOutputStream) {
        int i = 1;
        byteArrayOutputStream.write(1);
        if (!bool.booleanValue()) {
            i = 0;
        }
        byteArrayOutputStream.write(i);
    }

    private static void a(Double d, ByteArrayOutputStream byteArrayOutputStream) {
        long doubleToLongBits = Double.doubleToLongBits(d.doubleValue());
        byte[] bArr = new byte[9];
        bArr[0] = (byte) 0;
        a(doubleToLongBits, bArr, 1);
        byteArrayOutputStream.write(bArr, 0, 9);
    }

    public static void a(long j, byte[] bArr, int i) {
        Connection.a(j >> 32, bArr, i);
        Connection.a(j, bArr, i + 4);
    }

    public static long b(byte[] bArr, int i) {
        return ((((((long) (bArr[i] & 255)) << 24) & -16777216) + ((long) ((bArr[i + 1] & 255) << 16))) + ((long) ((bArr[i + 2] & 255) << 8))) + ((long) (bArr[i + 3] & 255));
    }

    public static long c(byte[] bArr, int i) {
        return b(bArr, i + 4) | (b(bArr, i) << 32);
    }

    public static int d(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    private static void a(String str, ByteArrayOutputStream byteArrayOutputStream) {
        byteArrayOutputStream.write(2);
        b(str, byteArrayOutputStream);
    }

    private static void b(String str, ByteArrayOutputStream byteArrayOutputStream) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        byteArrayOutputStream.write((bytes.length >> 8) % 256);
        byteArrayOutputStream.write(bytes.length % 256);
        byteArrayOutputStream.write(bytes, 0, bytes.length);
    }

    private static void a(String str, Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        b(str, byteArrayOutputStream);
        a(obj, byteArrayOutputStream);
    }

    private static void a(ByteArrayOutputStream byteArrayOutputStream) {
        byte[] bArr = new byte[]{(byte) 0, (byte) 0, (byte) 9};
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static int a(byte[] bArr, int i, ArrayList<Object> arrayList) {
        if (i == bArr.length) {
            return i;
        }
        int i2 = i + 1;
        int i3;
        switch (bArr[i]) {
            case p.View_android_theme /*0*/:
                if (i2 <= bArr.length - 8) {
                    long c = c(bArr, i2);
                    i2 += 8;
                    arrayList.add(Double.valueOf(Double.longBitsToDouble(c)));
                    break;
                }
                break;
            case p.View_android_focusable /*1*/:
                if (i2 < bArr.length) {
                    i3 = i2 + 1;
                    arrayList.add(Boolean.valueOf(bArr[i2] != null));
                    i2 = i3;
                    break;
                }
                break;
            case p.View_paddingStart /*2*/:
                if (i2 < bArr.length - 2) {
                    i3 = d(bArr, i2);
                    i2 += 2;
                    if (i2 < bArr.length - i3) {
                        arrayList.add(new String(bArr, i2, i3, StandardCharsets.UTF_8));
                        i2 += i3;
                        break;
                    }
                }
                break;
            case p.View_paddingEnd /*3*/:
                i2 = b(bArr, i2, arrayList);
                break;
            case p.Toolbar_contentInsetStart /*5*/:
                arrayList.add(null);
                break;
            case p.Toolbar_contentInsetEnd /*6*/:
                arrayList.add(null);
                break;
            case p.Toolbar_contentInsetRight /*8*/:
                i2 = b(bArr, i2 + 4, arrayList);
                break;
            case p.Toolbar_titleTextAppearance /*10*/:
                if (i2 < bArr.length - 4) {
                    i3 = (int) b(bArr, i2);
                    i2 += 4;
                    ArrayList arrayList2 = new ArrayList();
                    while (true) {
                        int i4 = i3 - 1;
                        if (i3 <= 0) {
                            arrayList.add(arrayList2.toArray());
                            break;
                        }
                        i2 = a(bArr, i2, arrayList2);
                        i3 = i4;
                    }
                }
                break;
        }
        return i2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int b(byte[] r5, int r6, java.util.ArrayList<java.lang.Object> r7) {
        /*
        r0 = new java.util.HashMap;
        r0.<init>();
    L_0x0005:
        r1 = r5.length;
        r1 = r1 + -2;
        if (r6 >= r1) goto L_0x0014;
    L_0x000a:
        r1 = d(r5, r6);
        r6 = r6 + 2;
        r2 = r5.length;
        r2 = r2 - r1;
        if (r6 < r2) goto L_0x0018;
    L_0x0014:
        r7.add(r0);
        return r6;
    L_0x0018:
        r2 = new java.lang.String;
        r3 = java.nio.charset.StandardCharsets.UTF_8;
        r2.<init>(r5, r6, r1, r3);
        r1 = r1 + r6;
        r3 = new java.util.ArrayList;
        r3.<init>();
        r6 = a(r5, r1, r3);
        r1 = r2.length();
        if (r1 <= 0) goto L_0x0014;
    L_0x002f:
        r1 = r3.size();
        r4 = 1;
        if (r1 != r4) goto L_0x0014;
    L_0x0036:
        r1 = 0;
        r1 = r3.get(r1);
        r0.put(r2, r1);
        goto L_0x0005;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.video.rtmp.a.b(byte[], int, java.util.ArrayList):int");
    }
}
