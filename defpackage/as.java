package defpackage;

import android.util.Xml;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: Twttr */
/* renamed from: as */
final class as {
    public static final void a(Map map, OutputStream outputStream) throws XmlPullParserException, IOException {
        XmlSerializer aqVar = new aq();
        aqVar.setOutput(outputStream, "utf-8");
        aqVar.startDocument(null, Boolean.valueOf(true));
        aqVar.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        as.a(map, null, aqVar);
        aqVar.endDocument();
    }

    public static final void a(Map map, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        as.a(map, str, xmlSerializer, null);
    }

    public static final void a(Map map, String str, XmlSerializer xmlSerializer, au auVar) throws XmlPullParserException, IOException {
        if (map == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "map");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        as.a(map, xmlSerializer, auVar);
        xmlSerializer.endTag(null, "map");
    }

    public static final void a(Map map, XmlSerializer xmlSerializer, au auVar) throws XmlPullParserException, IOException {
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                as.a(entry.getValue(), (String) entry.getKey(), xmlSerializer, auVar);
            }
        }
    }

    public static final void a(List list, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (list == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "list");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            as.a(list.get(i), null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "list");
    }

    public static final void a(Set set, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (set == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "set");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        for (Object a : set) {
            as.a(a, null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "set");
    }

    public static final void a(byte[] bArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (bArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "byte-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(r2));
        StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b >> 4;
            stringBuilder.append(i >= 10 ? (i + 97) - 10 : i + 48);
            i = b & NalUnitUtil.EXTENDED_SAR;
            if (i >= 10) {
                i = (i + 97) - 10;
            } else {
                i += 48;
            }
            stringBuilder.append(i);
        }
        xmlSerializer.text(stringBuilder.toString());
        xmlSerializer.endTag(null, "byte-array");
    }

    public static final void a(int[] iArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (iArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "int-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(r1));
        for (int num : iArr) {
            xmlSerializer.startTag(null, "item");
            xmlSerializer.attribute(null, "value", Integer.toString(num));
            xmlSerializer.endTag(null, "item");
        }
        xmlSerializer.endTag(null, "int-array");
    }

    public static final void a(long[] jArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (jArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "long-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(r1));
        for (long l : jArr) {
            xmlSerializer.startTag(null, "item");
            xmlSerializer.attribute(null, "value", Long.toString(l));
            xmlSerializer.endTag(null, "item");
        }
        xmlSerializer.endTag(null, "long-array");
    }

    public static final void a(double[] dArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (dArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "double-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(r1));
        for (double d : dArr) {
            xmlSerializer.startTag(null, "item");
            xmlSerializer.attribute(null, "value", Double.toString(d));
            xmlSerializer.endTag(null, "item");
        }
        xmlSerializer.endTag(null, "double-array");
    }

    public static final void a(String[] strArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (strArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "string-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        int length = strArr.length;
        xmlSerializer.attribute(null, "num", Integer.toString(length));
        for (int i = 0; i < length; i++) {
            if (strArr[i] == null) {
                xmlSerializer.startTag(null, "null");
                xmlSerializer.endTag(null, "null");
            } else {
                xmlSerializer.startTag(null, "item");
                xmlSerializer.attribute(null, "value", strArr[i]);
                xmlSerializer.endTag(null, "item");
            }
        }
        xmlSerializer.endTag(null, "string-array");
    }

    public static final void a(Object obj, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        as.a(obj, str, xmlSerializer, null);
    }

    private static final void a(Object obj, String str, XmlSerializer xmlSerializer, au auVar) throws XmlPullParserException, IOException {
        if (obj == null) {
            xmlSerializer.startTag(null, "null");
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.endTag(null, "null");
        } else if (obj instanceof String) {
            xmlSerializer.startTag(null, "string");
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.text(obj.toString());
            xmlSerializer.endTag(null, "string");
        } else {
            String str2;
            if (obj instanceof Integer) {
                str2 = "int";
            } else if (obj instanceof Long) {
                str2 = "long";
            } else if (obj instanceof Float) {
                str2 = "float";
            } else if (obj instanceof Double) {
                str2 = "double";
            } else if (obj instanceof Boolean) {
                str2 = "boolean";
            } else if (obj instanceof byte[]) {
                as.a((byte[]) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof int[]) {
                as.a((int[]) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof long[]) {
                as.a((long[]) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof double[]) {
                as.a((double[]) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof String[]) {
                as.a((String[]) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof Map) {
                as.a((Map) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof List) {
                as.a((List) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof Set) {
                as.a((Set) obj, str, xmlSerializer);
                return;
            } else if (obj instanceof CharSequence) {
                xmlSerializer.startTag(null, "string");
                if (str != null) {
                    xmlSerializer.attribute(null, "name", str);
                }
                xmlSerializer.text(obj.toString());
                xmlSerializer.endTag(null, "string");
                return;
            } else if (auVar != null) {
                auVar.a(obj, str, xmlSerializer);
                return;
            } else {
                throw new RuntimeException("writeValueXml: unable to write value " + obj);
            }
            xmlSerializer.startTag(null, str2);
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.attribute(null, "value", obj.toString());
            xmlSerializer.endTag(null, str2);
        }
    }

    public static final HashMap<String, ?> a(InputStream inputStream) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, null);
        return (HashMap) as.a(newPullParser, new String[1]);
    }

    public static final HashMap<String, ?> a(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        return as.a(xmlPullParser, str, strArr, null);
    }

    public static final HashMap<String, ?> a(XmlPullParser xmlPullParser, String str, String[] strArr, at atVar) throws XmlPullParserException, IOException {
        HashMap<String, ?> hashMap = new HashMap();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                hashMap.put(strArr[0], as.a(xmlPullParser, strArr, atVar));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return hashMap;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    public static final ArrayList b(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        return as.b(xmlPullParser, str, strArr, null);
    }

    private static final ArrayList b(XmlPullParser xmlPullParser, String str, String[] strArr, at atVar) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                arrayList.add(as.a(xmlPullParser, strArr, atVar));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return arrayList;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    public static final HashSet c(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        return as.c(xmlPullParser, str, strArr, null);
    }

    private static final HashSet c(XmlPullParser xmlPullParser, String str, String[] strArr, at atVar) throws XmlPullParserException, IOException {
        HashSet hashSet = new HashSet();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                hashSet.add(as.a(xmlPullParser, strArr, atVar));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return hashSet;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    public static final int[] d(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            int[] iArr = new int[parseInt];
            parseInt = 0;
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("item")) {
                        try {
                            iArr[parseInt] = Integer.parseInt(xmlPullParser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    }
                    throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return iArr;
                    }
                    if (xmlPullParser.getName().equals("item")) {
                        parseInt++;
                    } else {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in byte-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in byte-array");
        }
    }

    public static final long[] e(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            long[] jArr = new long[parseInt];
            parseInt = 0;
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("item")) {
                        try {
                            jArr[parseInt] = Long.parseLong(xmlPullParser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    }
                    throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return jArr;
                    }
                    if (xmlPullParser.getName().equals("item")) {
                        parseInt++;
                    } else {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in long-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in long-array");
        }
    }

    public static final double[] f(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            double[] dArr = new double[parseInt];
            parseInt = 0;
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("item")) {
                        try {
                            dArr[parseInt] = Double.parseDouble(xmlPullParser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    }
                    throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return dArr;
                    }
                    if (xmlPullParser.getName().equals("item")) {
                        parseInt++;
                    } else {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in double-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in double-array");
        }
    }

    public static final String[] g(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            String[] strArr2 = new String[parseInt];
            parseInt = 0;
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("item")) {
                        try {
                            strArr2[parseInt] = xmlPullParser.getAttributeValue(null, "value");
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else if (xmlPullParser.getName().equals("null")) {
                        strArr2[parseInt] = null;
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return strArr2;
                    }
                    if (xmlPullParser.getName().equals("item") || xmlPullParser.getName().equals("null")) {
                        parseInt++;
                    } else {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in string-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in string-array");
        }
    }

    public static final Object a(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 2) {
            if (eventType == 3) {
                throw new XmlPullParserException("Unexpected end tag at: " + xmlPullParser.getName());
            } else if (eventType == 4) {
                throw new XmlPullParserException("Unexpected text: " + xmlPullParser.getText());
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    throw new XmlPullParserException("Unexpected end of document");
                }
            }
        }
        return as.a(xmlPullParser, strArr, null);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object a(org.xmlpull.v1.XmlPullParser r9, java.lang.String[] r10, defpackage.at r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
        r8 = 4;
        r7 = 3;
        r6 = 2;
        r5 = 1;
        r4 = 0;
        r0 = 0;
        r1 = "name";
        r1 = r9.getAttributeValue(r0, r1);
        r2 = r9.getName();
        r0 = "null";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0030;
    L_0x001a:
        r0 = 0;
    L_0x001b:
        r3 = r9.next();
        if (r3 == r5) goto L_0x01f1;
    L_0x0021:
        if (r3 != r7) goto L_0x019b;
    L_0x0023:
        r3 = r9.getName();
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0172;
    L_0x002d:
        r10[r4] = r1;
    L_0x002f:
        return r0;
    L_0x0030:
        r0 = "string";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x00b3;
    L_0x0039:
        r0 = "";
    L_0x003c:
        r2 = r9.next();
        if (r2 == r5) goto L_0x00aa;
    L_0x0042:
        if (r2 != r7) goto L_0x0072;
    L_0x0044:
        r2 = r9.getName();
        r3 = "string";
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0054;
    L_0x0051:
        r10[r4] = r1;
        goto L_0x002f;
    L_0x0054:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unexpected end tag in <string>: ";
        r1 = r1.append(r2);
        r2 = r9.getName();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0072:
        if (r2 != r8) goto L_0x008a;
    L_0x0074:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r2.append(r0);
        r2 = r9.getText();
        r0 = r0.append(r2);
        r0 = r0.toString();
        goto L_0x003c;
    L_0x008a:
        if (r2 != r6) goto L_0x003c;
    L_0x008c:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unexpected start tag in <string>: ";
        r1 = r1.append(r2);
        r2 = r9.getName();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00aa:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = "Unexpected end of document in <string>";
        r0.<init>(r1);
        throw r0;
    L_0x00b3:
        r0 = defpackage.as.a(r9, r2);
        if (r0 != 0) goto L_0x001b;
    L_0x00b9:
        r0 = "int-array";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x00cd;
    L_0x00c2:
        r0 = "int-array";
        r0 = defpackage.as.d(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x00cd:
        r0 = "long-array";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x00e1;
    L_0x00d6:
        r0 = "long-array";
        r0 = defpackage.as.e(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x00e1:
        r0 = "double-array";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x00f5;
    L_0x00ea:
        r0 = "double-array";
        r0 = defpackage.as.f(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x00f5:
        r0 = "string-array";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0109;
    L_0x00fe:
        r0 = "string-array";
        r0 = defpackage.as.g(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x0109:
        r0 = "map";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0120;
    L_0x0112:
        r9.next();
        r0 = "map";
        r0 = defpackage.as.a(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x0120:
        r0 = "list";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0137;
    L_0x0129:
        r9.next();
        r0 = "list";
        r0 = defpackage.as.b(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x0137:
        r0 = "set";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x014e;
    L_0x0140:
        r9.next();
        r0 = "set";
        r0 = defpackage.as.c(r9, r0, r10);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x014e:
        if (r11 == 0) goto L_0x0158;
    L_0x0150:
        r0 = r11.a(r9, r2);
        r10[r4] = r1;
        goto L_0x002f;
    L_0x0158:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unknown tag: ";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0172:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unexpected end tag in <";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r2 = ">: ";
        r1 = r1.append(r2);
        r2 = r9.getName();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x019b:
        if (r3 != r8) goto L_0x01c6;
    L_0x019d:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unexpected text in <";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r2 = ">: ";
        r1 = r1.append(r2);
        r2 = r9.getName();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x01c6:
        if (r3 != r6) goto L_0x001b;
    L_0x01c8:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unexpected start tag in <";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r2 = ">: ";
        r1 = r1.append(r2);
        r2 = r9.getName();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x01f1:
        r0 = new org.xmlpull.v1.XmlPullParserException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unexpected end of document in <";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r2 = ">";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: as.a(org.xmlpull.v1.XmlPullParser, java.lang.String[], at):java.lang.Object");
    }

    private static final Object a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        try {
            if (str.equals("int")) {
                return Integer.valueOf(Integer.parseInt(xmlPullParser.getAttributeValue(null, "value")));
            }
            if (str.equals("long")) {
                return Long.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals("float")) {
                return Float.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals("double")) {
                return Double.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals("boolean")) {
                return Boolean.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            return null;
        } catch (NullPointerException e) {
            throw new XmlPullParserException("Need value attribute in <" + str + ">");
        } catch (NumberFormatException e2) {
            throw new XmlPullParserException("Not a number in value attribute in <" + str + ">");
        }
    }
}
