package defpackage;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: o */
public class o {
    private static final Set<String> a;
    private static final Map<Integer, Integer> r;
    private final int b;
    private final boolean c;
    private final boolean d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final String n;
    private final String o;
    private StringBuilder p;
    private boolean q;

    static {
        a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"vnd.android.cursor.item/nickname", "vnd.android.cursor.item/contact_event", "vnd.android.cursor.item/relation"})));
        r = new HashMap();
        r.put(Integer.valueOf(1), Integer.valueOf(0));
        r.put(Integer.valueOf(2), Integer.valueOf(1));
        r.put(Integer.valueOf(3), Integer.valueOf(2));
        r.put(Integer.valueOf(0), Integer.valueOf(3));
    }

    public o(int i, String str) {
        boolean z = false;
        this.b = i;
        if (p.c(i)) {
            Log.w("vCard", "Should not use vCard 4.0 when building vCard. It is not officially published yet.");
        }
        boolean z2 = p.b(i) || p.c(i);
        this.c = z2;
        this.g = p.d(i);
        this.f = p.n(i);
        this.d = p.l(i);
        this.e = p.m(i);
        this.h = p.f(i);
        this.i = p.g(i);
        this.k = p.h(i);
        this.j = p.i(i);
        this.l = p.l(i);
        if (!(p.b(i) && "UTF-8".equalsIgnoreCase(str))) {
            z = true;
        }
        this.m = z;
        if (p.n(i)) {
            if ("SHIFT_JIS".equalsIgnoreCase(str)) {
                this.n = str;
            } else if (TextUtils.isEmpty(str)) {
                this.n = "SHIFT_JIS";
            } else {
                this.n = str;
            }
            this.o = "CHARSET=SHIFT_JIS";
        } else if (TextUtils.isEmpty(str)) {
            Log.i("vCard", "Use the charset \"UTF-8\" for export.");
            this.n = "UTF-8";
            this.o = "CHARSET=UTF-8";
        } else {
            this.n = str;
            this.o = "CHARSET=" + str;
        }
        a();
    }

    public void a() {
        this.p = new StringBuilder();
        this.q = false;
        a("BEGIN", "VCARD");
        if (p.c(this.b)) {
            a("VERSION", "4.0");
        } else if (p.b(this.b)) {
            a("VERSION", "3.0");
        } else {
            if (!p.a(this.b)) {
                Log.w("vCard", "Unknown vCard version detected.");
            }
            a("VERSION", "2.1");
        }
    }

    private boolean a(ContentValues contentValues) {
        return (TextUtils.isEmpty(contentValues.getAsString("data3")) && TextUtils.isEmpty(contentValues.getAsString("data5")) && TextUtils.isEmpty(contentValues.getAsString("data2")) && TextUtils.isEmpty(contentValues.getAsString("data4")) && TextUtils.isEmpty(contentValues.getAsString("data6")) && TextUtils.isEmpty(contentValues.getAsString("data9")) && TextUtils.isEmpty(contentValues.getAsString("data8")) && TextUtils.isEmpty(contentValues.getAsString("data7")) && TextUtils.isEmpty(contentValues.getAsString("data1"))) ? false : true;
    }

    private ContentValues c(List<ContentValues> list) {
        ContentValues contentValues;
        ContentValues contentValues2 = null;
        ContentValues contentValues3 = null;
        for (ContentValues contentValues4 : list) {
            if (contentValues4 != null) {
                Integer asInteger = contentValues4.getAsInteger("is_super_primary");
                if (asInteger != null && asInteger.intValue() > 0) {
                    break;
                }
                if (contentValues3 == null) {
                    asInteger = contentValues4.getAsInteger("is_primary");
                    if (asInteger != null && asInteger.intValue() > 0 && a(contentValues4)) {
                        ContentValues contentValues5 = contentValues2;
                        contentValues2 = contentValues4;
                        contentValues4 = contentValues5;
                        contentValues3 = contentValues2;
                        contentValues2 = contentValues4;
                    } else if (contentValues2 == null && a(contentValues4)) {
                        contentValues2 = contentValues3;
                        contentValues3 = contentValues2;
                        contentValues2 = contentValues4;
                    }
                }
                contentValues4 = contentValues2;
                contentValues2 = contentValues3;
                contentValues3 = contentValues2;
                contentValues2 = contentValues4;
            }
        }
        contentValues4 = contentValues3;
        if (contentValues4 != null) {
            return contentValues4;
        }
        if (contentValues2 != null) {
            return contentValues2;
        }
        return new ContentValues();
    }

    private o d(List<ContentValues> list) {
        if (this.f || this.l) {
            Log.w("vCard", "Invalid flag is used in vCard 4.0 construction. Ignored.");
        }
        if (list == null || list.isEmpty()) {
            a("FN", "");
        } else {
            ContentValues c = c((List) list);
            String asString = c.getAsString("data3");
            String asString2 = c.getAsString("data5");
            String asString3 = c.getAsString("data2");
            String asString4 = c.getAsString("data4");
            String asString5 = c.getAsString("data6");
            String asString6 = c.getAsString("data1");
            if (TextUtils.isEmpty(asString) && TextUtils.isEmpty(asString3) && TextUtils.isEmpty(asString2) && TextUtils.isEmpty(asString4) && TextUtils.isEmpty(asString5)) {
                if (TextUtils.isEmpty(asString6)) {
                    a("FN", "");
                } else {
                    asString = asString6;
                }
            }
            String asString7 = c.getAsString("data9");
            String asString8 = c.getAsString("data8");
            String asString9 = c.getAsString("data7");
            String d = d(asString);
            String d2 = d(asString3);
            String d3 = d(asString2);
            String d4 = d(asString4);
            String d5 = d(asString5);
            this.p.append("N");
            if (!(TextUtils.isEmpty(asString7) && TextUtils.isEmpty(asString8) && TextUtils.isEmpty(asString9))) {
                this.p.append(";");
                this.p.append("SORT-AS=").append(r.e(d(asString7) + ';' + d(asString9) + ';' + d(asString8)));
            }
            this.p.append(":");
            this.p.append(d);
            this.p.append(";");
            this.p.append(d2);
            this.p.append(";");
            this.p.append(d3);
            this.p.append(";");
            this.p.append(d4);
            this.p.append(";");
            this.p.append(d5);
            this.p.append("\r\n");
            if (TextUtils.isEmpty(asString6)) {
                Log.w("vCard", "DISPLAY_NAME is empty.");
                a("FN", d(r.a(p.e(this.b), asString, asString2, asString3, asString4, asString5)));
            } else {
                asString6 = d(asString6);
                this.p.append("FN");
                this.p.append(":");
                this.p.append(asString6);
                this.p.append("\r\n");
            }
            b(c);
        }
        return this;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.o a(java.util.List<android.content.ContentValues> r15) {
        /*
        r14 = this;
        r7 = 1;
        r8 = 0;
        r0 = r14.b;
        r0 = defpackage.p.c(r0);
        if (r0 == 0) goto L_0x000f;
    L_0x000a:
        r14 = r14.d(r15);
    L_0x000e:
        return r14;
    L_0x000f:
        if (r15 == 0) goto L_0x0017;
    L_0x0011:
        r0 = r15.isEmpty();
        if (r0 == 0) goto L_0x0040;
    L_0x0017:
        r0 = r14.b;
        r0 = defpackage.p.b(r0);
        if (r0 == 0) goto L_0x0032;
    L_0x001f:
        r0 = "N";
        r1 = "";
        r14.a(r0, r1);
        r0 = "FN";
        r1 = "";
        r14.a(r0, r1);
        goto L_0x000e;
    L_0x0032:
        r0 = r14.f;
        if (r0 == 0) goto L_0x000e;
    L_0x0036:
        r0 = "N";
        r1 = "";
        r14.a(r0, r1);
        goto L_0x000e;
    L_0x0040:
        r10 = r14.c(r15);
        r0 = "data3";
        r1 = r10.getAsString(r0);
        r0 = "data5";
        r2 = r10.getAsString(r0);
        r0 = "data2";
        r3 = r10.getAsString(r0);
        r0 = "data4";
        r4 = r10.getAsString(r0);
        r0 = "data6";
        r5 = r10.getAsString(r0);
        r0 = "data1";
        r0 = r10.getAsString(r0);
        r6 = android.text.TextUtils.isEmpty(r1);
        if (r6 == 0) goto L_0x007a;
    L_0x0074:
        r6 = android.text.TextUtils.isEmpty(r3);
        if (r6 != 0) goto L_0x0245;
    L_0x007a:
        r6 = 5;
        r6 = new java.lang.String[r6];
        r6[r8] = r1;
        r6[r7] = r3;
        r9 = 2;
        r6[r9] = r2;
        r9 = 3;
        r6[r9] = r4;
        r9 = 4;
        r6[r9] = r5;
        r11 = r14.a(r6);
        r6 = r14.k;
        if (r6 != 0) goto L_0x01ac;
    L_0x0092:
        r6 = new java.lang.String[r7];
        r6[r8] = r1;
        r6 = defpackage.r.b(r6);
        if (r6 == 0) goto L_0x00c4;
    L_0x009c:
        r6 = new java.lang.String[r7];
        r6[r8] = r3;
        r6 = defpackage.r.b(r6);
        if (r6 == 0) goto L_0x00c4;
    L_0x00a6:
        r6 = new java.lang.String[r7];
        r6[r8] = r2;
        r6 = defpackage.r.b(r6);
        if (r6 == 0) goto L_0x00c4;
    L_0x00b0:
        r6 = new java.lang.String[r7];
        r6[r8] = r4;
        r6 = defpackage.r.b(r6);
        if (r6 == 0) goto L_0x00c4;
    L_0x00ba:
        r6 = new java.lang.String[r7];
        r6[r8] = r5;
        r6 = defpackage.r.b(r6);
        if (r6 != 0) goto L_0x01ac;
    L_0x00c4:
        r6 = r7;
    L_0x00c5:
        r9 = android.text.TextUtils.isEmpty(r0);
        if (r9 != 0) goto L_0x01af;
    L_0x00cb:
        r9 = new java.lang.String[r7];
        r9[r8] = r0;
        r12 = r14.a(r9);
        r9 = r14.k;
        if (r9 != 0) goto L_0x01bb;
    L_0x00d7:
        r9 = new java.lang.String[r7];
        r9[r8] = r0;
        r9 = defpackage.r.b(r9);
        if (r9 != 0) goto L_0x01bb;
    L_0x00e1:
        r9 = r7;
    L_0x00e2:
        if (r6 == 0) goto L_0x01be;
    L_0x00e4:
        r8 = r14.c(r1);
        r7 = r14.c(r3);
        r3 = r14.c(r2);
        r2 = r14.c(r4);
        r1 = r14.c(r5);
        r4 = r3;
        r5 = r7;
        r3 = r2;
        r7 = r8;
        r2 = r1;
    L_0x00fd:
        if (r9 == 0) goto L_0x01d9;
    L_0x00ff:
        r1 = r14.c(r0);
    L_0x0103:
        r8 = r14.p;
        r13 = "N";
        r8.append(r13);
        r8 = r14.f;
        if (r8 == 0) goto L_0x01df;
    L_0x010f:
        if (r11 == 0) goto L_0x0120;
    L_0x0111:
        r2 = r14.p;
        r3 = ";";
        r2.append(r3);
        r2 = r14.p;
        r3 = r14.o;
        r2.append(r3);
    L_0x0120:
        if (r6 == 0) goto L_0x0132;
    L_0x0122:
        r2 = r14.p;
        r3 = ";";
        r2.append(r3);
        r2 = r14.p;
        r3 = "ENCODING=QUOTED-PRINTABLE";
        r2.append(r3);
    L_0x0132:
        r2 = r14.p;
        r3 = ":";
        r2.append(r3);
        r2 = r14.p;
        r2.append(r0);
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
    L_0x015f:
        r0 = r14.p;
        r2 = "\r\n";
        r0.append(r2);
        r0 = r14.p;
        r2 = "FN";
        r0.append(r2);
        if (r12 == 0) goto L_0x0180;
    L_0x0171:
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
        r0 = r14.p;
        r2 = r14.o;
        r0.append(r2);
    L_0x0180:
        if (r9 == 0) goto L_0x0192;
    L_0x0182:
        r0 = r14.p;
        r2 = ";";
        r0.append(r2);
        r0 = r14.p;
        r2 = "ENCODING=QUOTED-PRINTABLE";
        r0.append(r2);
    L_0x0192:
        r0 = r14.p;
        r2 = ":";
        r0.append(r2);
        r0 = r14.p;
        r0.append(r1);
        r0 = r14.p;
        r1 = "\r\n";
        r0.append(r1);
    L_0x01a7:
        r14.b(r10);
        goto L_0x000e;
    L_0x01ac:
        r6 = r8;
        goto L_0x00c5;
    L_0x01af:
        r0 = r14.b;
        r0 = defpackage.p.e(r0);
        r0 = defpackage.r.a(r0, r1, r2, r3, r4, r5);
        goto L_0x00cb;
    L_0x01bb:
        r9 = r8;
        goto L_0x00e2;
    L_0x01be:
        r8 = r14.d(r1);
        r7 = r14.d(r3);
        r3 = r14.d(r2);
        r2 = r14.d(r4);
        r1 = r14.d(r5);
        r4 = r3;
        r5 = r7;
        r3 = r2;
        r7 = r8;
        r2 = r1;
        goto L_0x00fd;
    L_0x01d9:
        r1 = r14.d(r0);
        goto L_0x0103;
    L_0x01df:
        if (r11 == 0) goto L_0x01f0;
    L_0x01e1:
        r0 = r14.p;
        r8 = ";";
        r0.append(r8);
        r0 = r14.p;
        r8 = r14.o;
        r0.append(r8);
    L_0x01f0:
        if (r6 == 0) goto L_0x0202;
    L_0x01f2:
        r0 = r14.p;
        r6 = ";";
        r0.append(r6);
        r0 = r14.p;
        r6 = "ENCODING=QUOTED-PRINTABLE";
        r0.append(r6);
    L_0x0202:
        r0 = r14.p;
        r6 = ":";
        r0.append(r6);
        r0 = r14.p;
        r0.append(r7);
        r0 = r14.p;
        r6 = ";";
        r0.append(r6);
        r0 = r14.p;
        r0.append(r5);
        r0 = r14.p;
        r5 = ";";
        r0.append(r5);
        r0 = r14.p;
        r0.append(r4);
        r0 = r14.p;
        r4 = ";";
        r0.append(r4);
        r0 = r14.p;
        r0.append(r3);
        r0 = r14.p;
        r3 = ";";
        r0.append(r3);
        r0 = r14.p;
        r0.append(r2);
        goto L_0x015f;
    L_0x0245:
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x0289;
    L_0x024b:
        r1 = "N";
        r14.b(r1, r0);
        r1 = r14.p;
        r2 = ";";
        r1.append(r2);
        r1 = r14.p;
        r2 = ";";
        r1.append(r2);
        r1 = r14.p;
        r2 = ";";
        r1.append(r2);
        r1 = r14.p;
        r2 = ";";
        r1.append(r2);
        r1 = r14.p;
        r2 = "\r\n";
        r1.append(r2);
        r1 = "FN";
        r14.b(r1, r0);
        r0 = r14.p;
        r1 = "\r\n";
        r0.append(r1);
        goto L_0x01a7;
    L_0x0289:
        r0 = r14.b;
        r0 = defpackage.p.b(r0);
        if (r0 == 0) goto L_0x02a5;
    L_0x0291:
        r0 = "N";
        r1 = "";
        r14.a(r0, r1);
        r0 = "FN";
        r1 = "";
        r14.a(r0, r1);
        goto L_0x01a7;
    L_0x02a5:
        r0 = r14.f;
        if (r0 == 0) goto L_0x01a7;
    L_0x02a9:
        r0 = "N";
        r1 = "";
        r14.a(r0, r1);
        goto L_0x01a7;
        */
        throw new UnsupportedOperationException("Method not decompiled: o.a(java.util.List):o");
    }

    private void b(String str, String str2) {
        int i;
        String c;
        if (!this.k) {
            if (!r.b(str2)) {
                i = 1;
                c = i == 0 ? c(str2) : d(str2);
                this.p.append(str);
                if (a(str2)) {
                    this.p.append(";");
                    this.p.append(this.o);
                }
                if (i != 0) {
                    this.p.append(";");
                    this.p.append("ENCODING=QUOTED-PRINTABLE");
                }
                this.p.append(":");
                this.p.append(c);
            }
        }
        i = 0;
        if (i == 0) {
        }
        this.p.append(str);
        if (a(str2)) {
            this.p.append(";");
            this.p.append(this.o);
        }
        if (i != 0) {
            this.p.append(";");
            this.p.append("ENCODING=QUOTED-PRINTABLE");
        }
        this.p.append(":");
        this.p.append(c);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(android.content.ContentValues r12) {
        /*
        r11 = this;
        r10 = 32;
        r7 = 1;
        r6 = 0;
        r0 = "data9";
        r2 = r12.getAsString(r0);
        r0 = "data8";
        r1 = r12.getAsString(r0);
        r0 = "data7";
        r0 = r12.getAsString(r0);
        r3 = r11.l;
        if (r3 == 0) goto L_0x0029;
    L_0x001d:
        r2 = defpackage.r.f(r2);
        r1 = defpackage.r.f(r1);
        r0 = defpackage.r.f(r0);
    L_0x0029:
        r3 = android.text.TextUtils.isEmpty(r2);
        if (r3 == 0) goto L_0x0088;
    L_0x002f:
        r3 = android.text.TextUtils.isEmpty(r1);
        if (r3 == 0) goto L_0x0088;
    L_0x0035:
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x0088;
    L_0x003b:
        r0 = r11.f;
        if (r0 == 0) goto L_0x0087;
    L_0x003f:
        r0 = r11.p;
        r1 = "SOUND";
        r0.append(r1);
        r0 = r11.p;
        r1 = ";";
        r0.append(r1);
        r0 = r11.p;
        r1 = "X-IRMC-N";
        r0.append(r1);
        r0 = r11.p;
        r1 = ":";
        r0.append(r1);
        r0 = r11.p;
        r1 = ";";
        r0.append(r1);
        r0 = r11.p;
        r1 = ";";
        r0.append(r1);
        r0 = r11.p;
        r1 = ";";
        r0.append(r1);
        r0 = r11.p;
        r1 = ";";
        r0.append(r1);
        r0 = r11.p;
        r1 = "\r\n";
        r0.append(r1);
    L_0x0087:
        return;
    L_0x0088:
        r3 = r11.b;
        r3 = defpackage.p.c(r3);
        if (r3 == 0) goto L_0x01bf;
    L_0x0090:
        r3 = r11.i;
        if (r3 == 0) goto L_0x0087;
    L_0x0094:
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 != 0) goto L_0x00f7;
    L_0x009a:
        r3 = r11.g;
        if (r3 == 0) goto L_0x02f2;
    L_0x009e:
        r3 = new java.lang.String[r7];
        r3[r6] = r0;
        r3 = defpackage.r.b(r3);
        if (r3 != 0) goto L_0x02f2;
    L_0x00a8:
        r4 = r7;
    L_0x00a9:
        if (r4 == 0) goto L_0x02f5;
    L_0x00ab:
        r3 = r11.c(r0);
    L_0x00af:
        r5 = r11.p;
        r8 = "X-PHONETIC-FIRST-NAME";
        r5.append(r8);
        r5 = new java.lang.String[r7];
        r5[r6] = r0;
        r0 = r11.a(r5);
        if (r0 == 0) goto L_0x00d0;
    L_0x00c1:
        r0 = r11.p;
        r5 = ";";
        r0.append(r5);
        r0 = r11.p;
        r5 = r11.o;
        r0.append(r5);
    L_0x00d0:
        if (r4 == 0) goto L_0x00e2;
    L_0x00d2:
        r0 = r11.p;
        r4 = ";";
        r0.append(r4);
        r0 = r11.p;
        r4 = "ENCODING=QUOTED-PRINTABLE";
        r0.append(r4);
    L_0x00e2:
        r0 = r11.p;
        r4 = ":";
        r0.append(r4);
        r0 = r11.p;
        r0.append(r3);
        r0 = r11.p;
        r3 = "\r\n";
        r0.append(r3);
    L_0x00f7:
        r0 = android.text.TextUtils.isEmpty(r1);
        if (r0 != 0) goto L_0x015a;
    L_0x00fd:
        r0 = r11.g;
        if (r0 == 0) goto L_0x02fb;
    L_0x0101:
        r0 = new java.lang.String[r7];
        r0[r6] = r1;
        r0 = defpackage.r.b(r0);
        if (r0 != 0) goto L_0x02fb;
    L_0x010b:
        r3 = r7;
    L_0x010c:
        if (r3 == 0) goto L_0x02fe;
    L_0x010e:
        r0 = r11.c(r1);
    L_0x0112:
        r4 = r11.p;
        r5 = "X-PHONETIC-MIDDLE-NAME";
        r4.append(r5);
        r4 = new java.lang.String[r7];
        r4[r6] = r1;
        r1 = r11.a(r4);
        if (r1 == 0) goto L_0x0133;
    L_0x0124:
        r1 = r11.p;
        r4 = ";";
        r1.append(r4);
        r1 = r11.p;
        r4 = r11.o;
        r1.append(r4);
    L_0x0133:
        if (r3 == 0) goto L_0x0145;
    L_0x0135:
        r1 = r11.p;
        r3 = ";";
        r1.append(r3);
        r1 = r11.p;
        r3 = "ENCODING=QUOTED-PRINTABLE";
        r1.append(r3);
    L_0x0145:
        r1 = r11.p;
        r3 = ":";
        r1.append(r3);
        r1 = r11.p;
        r1.append(r0);
        r0 = r11.p;
        r1 = "\r\n";
        r0.append(r1);
    L_0x015a:
        r0 = android.text.TextUtils.isEmpty(r2);
        if (r0 != 0) goto L_0x0087;
    L_0x0160:
        r0 = r11.g;
        if (r0 == 0) goto L_0x0304;
    L_0x0164:
        r0 = new java.lang.String[r7];
        r0[r6] = r2;
        r0 = defpackage.r.b(r0);
        if (r0 != 0) goto L_0x0304;
    L_0x016e:
        r1 = r7;
    L_0x016f:
        if (r1 == 0) goto L_0x0307;
    L_0x0171:
        r0 = r11.c(r2);
    L_0x0175:
        r3 = r11.p;
        r4 = "X-PHONETIC-LAST-NAME";
        r3.append(r4);
        r3 = new java.lang.String[r7];
        r3[r6] = r2;
        r2 = r11.a(r3);
        if (r2 == 0) goto L_0x0196;
    L_0x0187:
        r2 = r11.p;
        r3 = ";";
        r2.append(r3);
        r2 = r11.p;
        r3 = r11.o;
        r2.append(r3);
    L_0x0196:
        if (r1 == 0) goto L_0x01a8;
    L_0x0198:
        r1 = r11.p;
        r2 = ";";
        r1.append(r2);
        r1 = r11.p;
        r2 = "ENCODING=QUOTED-PRINTABLE";
        r1.append(r2);
    L_0x01a8:
        r1 = r11.p;
        r2 = ":";
        r1.append(r2);
        r1 = r11.p;
        r1.append(r0);
        r0 = r11.p;
        r1 = "\r\n";
        r0.append(r1);
        goto L_0x0087;
    L_0x01bf:
        r3 = r11.b;
        r3 = defpackage.p.b(r3);
        if (r3 == 0) goto L_0x0211;
    L_0x01c7:
        r3 = r11.b;
        r3 = defpackage.r.b(r3, r2, r1, r0);
        r4 = r11.p;
        r5 = "SORT-STRING";
        r4.append(r5);
        r4 = r11.b;
        r4 = defpackage.p.b(r4);
        if (r4 == 0) goto L_0x01f6;
    L_0x01dd:
        r4 = new java.lang.String[r7];
        r4[r6] = r3;
        r4 = r11.a(r4);
        if (r4 == 0) goto L_0x01f6;
    L_0x01e7:
        r4 = r11.p;
        r5 = ";";
        r4.append(r5);
        r4 = r11.p;
        r5 = r11.o;
        r4.append(r5);
    L_0x01f6:
        r4 = r11.p;
        r5 = ":";
        r4.append(r5);
        r4 = r11.p;
        r3 = r11.d(r3);
        r4.append(r3);
        r3 = r11.p;
        r4 = "\r\n";
        r3.append(r4);
        goto L_0x0090;
    L_0x0211:
        r3 = r11.d;
        if (r3 == 0) goto L_0x0090;
    L_0x0215:
        r3 = r11.p;
        r4 = "SOUND";
        r3.append(r4);
        r3 = r11.p;
        r4 = ";";
        r3.append(r4);
        r3 = r11.p;
        r4 = "X-IRMC-N";
        r3.append(r4);
        r3 = r11.k;
        if (r3 != 0) goto L_0x02db;
    L_0x0231:
        r3 = new java.lang.String[r7];
        r3[r6] = r2;
        r3 = defpackage.r.b(r3);
        if (r3 == 0) goto L_0x024f;
    L_0x023b:
        r3 = new java.lang.String[r7];
        r3[r6] = r1;
        r3 = defpackage.r.b(r3);
        if (r3 == 0) goto L_0x024f;
    L_0x0245:
        r3 = new java.lang.String[r7];
        r3[r6] = r0;
        r3 = defpackage.r.b(r3);
        if (r3 != 0) goto L_0x02db;
    L_0x024f:
        r3 = r7;
    L_0x0250:
        if (r3 == 0) goto L_0x02de;
    L_0x0252:
        r5 = r11.c(r2);
        r4 = r11.c(r1);
        r3 = r11.c(r0);
    L_0x025e:
        r8 = 3;
        r8 = new java.lang.String[r8];
        r8[r6] = r5;
        r8[r7] = r4;
        r9 = 2;
        r8[r9] = r3;
        r8 = r11.a(r8);
        if (r8 == 0) goto L_0x027d;
    L_0x026e:
        r8 = r11.p;
        r9 = ";";
        r8.append(r9);
        r8 = r11.p;
        r9 = r11.o;
        r8.append(r9);
    L_0x027d:
        r8 = r11.p;
        r9 = ":";
        r8.append(r9);
        r8 = android.text.TextUtils.isEmpty(r5);
        if (r8 != 0) goto L_0x030d;
    L_0x028b:
        r8 = r11.p;
        r8.append(r5);
        r5 = r6;
    L_0x0291:
        r8 = android.text.TextUtils.isEmpty(r4);
        if (r8 != 0) goto L_0x029f;
    L_0x0297:
        if (r5 == 0) goto L_0x02ec;
    L_0x0299:
        r5 = r6;
    L_0x029a:
        r8 = r11.p;
        r8.append(r4);
    L_0x029f:
        r4 = android.text.TextUtils.isEmpty(r3);
        if (r4 != 0) goto L_0x02b1;
    L_0x02a5:
        if (r5 != 0) goto L_0x02ac;
    L_0x02a7:
        r4 = r11.p;
        r4.append(r10);
    L_0x02ac:
        r4 = r11.p;
        r4.append(r3);
    L_0x02b1:
        r3 = r11.p;
        r4 = ";";
        r3.append(r4);
        r3 = r11.p;
        r4 = ";";
        r3.append(r4);
        r3 = r11.p;
        r4 = ";";
        r3.append(r4);
        r3 = r11.p;
        r4 = ";";
        r3.append(r4);
        r3 = r11.p;
        r4 = "\r\n";
        r3.append(r4);
        goto L_0x0090;
    L_0x02db:
        r3 = r6;
        goto L_0x0250;
    L_0x02de:
        r5 = r11.d(r2);
        r4 = r11.d(r1);
        r3 = r11.d(r0);
        goto L_0x025e;
    L_0x02ec:
        r8 = r11.p;
        r8.append(r10);
        goto L_0x029a;
    L_0x02f2:
        r4 = r6;
        goto L_0x00a9;
    L_0x02f5:
        r3 = r11.d(r0);
        goto L_0x00af;
    L_0x02fb:
        r3 = r6;
        goto L_0x010c;
    L_0x02fe:
        r0 = r11.d(r1);
        goto L_0x0112;
    L_0x0304:
        r1 = r6;
        goto L_0x016f;
    L_0x0307:
        r0 = r11.d(r2);
        goto L_0x0175;
    L_0x030d:
        r5 = r7;
        goto L_0x0291;
        */
        throw new UnsupportedOperationException("Method not decompiled: o.b(android.content.ContentValues):void");
    }

    public o a(List<ContentValues> list, q qVar) {
        Object obj;
        if (list != null) {
            Set hashSet = new HashSet();
            obj = null;
            for (ContentValues contentValues : list) {
                Integer asInteger = contentValues.getAsInteger("data2");
                String asString = contentValues.getAsString("data3");
                Integer asInteger2 = contentValues.getAsInteger("is_primary");
                boolean z = asInteger2 != null ? asInteger2.intValue() > 0 : false;
                String asString2 = contentValues.getAsString("data1");
                if (asString2 != null) {
                    asString2 = asString2.trim();
                }
                if (!TextUtils.isEmpty(asString2)) {
                    int intValue;
                    Object obj2;
                    if (asInteger != null) {
                        intValue = asInteger.intValue();
                    } else {
                        intValue = 1;
                    }
                    if (qVar != null) {
                        asString2 = qVar.a(asString2, intValue, asString, z);
                        if (!hashSet.contains(asString2)) {
                            hashSet.add(asString2);
                            a(Integer.valueOf(intValue), asString, asString2, z);
                            obj2 = obj;
                        }
                        obj2 = obj;
                    } else if (intValue == 6 || p.k(this.b)) {
                        obj = 1;
                        if (!hashSet.contains(asString2)) {
                            hashSet.add(asString2);
                            a(Integer.valueOf(intValue), asString, asString2, z);
                            r0 = 1;
                        }
                        obj2 = obj;
                    } else {
                        List<String> a = a(asString2);
                        if (!a.isEmpty()) {
                            for (String asString22 : a) {
                                if (!hashSet.contains(asString22)) {
                                    String replace = asString22.replace(',', 'p').replace(';', 'w');
                                    if (TextUtils.equals(replace, asString22)) {
                                        StringBuilder stringBuilder = new StringBuilder();
                                        int length = asString22.length();
                                        for (int i = 0; i < length; i++) {
                                            char charAt = asString22.charAt(i);
                                            if (Character.isDigit(charAt) || charAt == '+') {
                                                stringBuilder.append(charAt);
                                            }
                                        }
                                        replace = s.a(stringBuilder.toString(), r.a(this.b));
                                    }
                                    if (!(!p.c(this.b) || TextUtils.isEmpty(replace) || replace.startsWith("tel:"))) {
                                        replace = "tel:" + replace;
                                    }
                                    hashSet.add(asString22);
                                    a(Integer.valueOf(intValue), asString, replace, z);
                                }
                            }
                            r0 = 1;
                        }
                    }
                    obj = obj2;
                }
            }
        } else {
            obj = null;
        }
        if (obj == null && this.f) {
            a(Integer.valueOf(1), "", "", false);
        }
        return this;
    }

    private List<String> a(String str) {
        List<String> arrayList = new ArrayList();
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        StringBuilder stringBuilder2 = stringBuilder;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\n' || stringBuilder2.length() <= 0) {
                stringBuilder2.append(charAt);
            } else {
                arrayList.add(stringBuilder2.toString());
                stringBuilder2 = new StringBuilder();
            }
        }
        if (stringBuilder2.length() > 0) {
            arrayList.add(stringBuilder2.toString());
        }
        return arrayList;
    }

    public o b(List<ContentValues> list) {
        boolean z;
        if (list != null) {
            Set hashSet = new HashSet();
            z = false;
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString("data1");
                if (asString != null) {
                    asString = asString.trim();
                }
                if (!TextUtils.isEmpty(asString)) {
                    Integer asInteger = contentValues.getAsInteger("data2");
                    int intValue = asInteger != null ? asInteger.intValue() : 3;
                    String asString2 = contentValues.getAsString("data3");
                    Integer asInteger2 = contentValues.getAsInteger("is_primary");
                    boolean z2 = asInteger2 != null ? asInteger2.intValue() > 0 : false;
                    if (!hashSet.contains(asString)) {
                        hashSet.add(asString);
                        a(intValue, asString2, asString, z2);
                    }
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (!z && this.f) {
            a(1, "", "", false);
        }
        return this;
    }

    public void a(int i, String str, String str2, boolean z) {
        CharSequence charSequence = null;
        switch (i) {
            case p.View_android_theme /*0*/:
                if (!r.a(str)) {
                    if (!TextUtils.isEmpty(str)) {
                        if (r.c(str)) {
                            charSequence = "X-" + str;
                            break;
                        }
                    }
                }
                charSequence = "CELL";
                break;
                break;
            case p.View_android_focusable /*1*/:
                charSequence = "HOME";
                break;
            case p.View_paddingStart /*2*/:
                charSequence = "WORK";
                break;
            case p.View_paddingEnd /*3*/:
                break;
            case p.View_theme /*4*/:
                charSequence = "CELL";
                break;
            default:
                Log.e("vCard", "Unknown Email type: " + i);
                break;
        }
        List arrayList = new ArrayList();
        if (z) {
            arrayList.add("PREF");
        }
        if (!TextUtils.isEmpty(charSequence)) {
            arrayList.add(charSequence);
        }
        a("EMAIL", arrayList, str2);
    }

    public void a(Integer num, String str, String str2, boolean z) {
        int i;
        this.p.append("TEL");
        this.p.append(";");
        if (num == null) {
            i = 7;
        } else {
            i = num.intValue();
        }
        ArrayList arrayList = new ArrayList();
        switch (i) {
            case p.View_android_theme /*0*/:
                if (!TextUtils.isEmpty(str)) {
                    if (!r.a(str)) {
                        if (!this.c) {
                            String toUpperCase = str.toUpperCase();
                            if (!r.b(toUpperCase)) {
                                if (r.c(str)) {
                                    arrayList.add("X-" + str);
                                    break;
                                }
                            }
                            arrayList.add(toUpperCase);
                            break;
                        }
                        arrayList.add(str);
                        break;
                    }
                    arrayList.add("CELL");
                    break;
                }
                arrayList.add("VOICE");
                break;
                break;
            case p.View_android_focusable /*1*/:
                arrayList.addAll(Arrays.asList(new String[]{"HOME"}));
                break;
            case p.View_paddingStart /*2*/:
                arrayList.add("CELL");
                break;
            case p.View_paddingEnd /*3*/:
                arrayList.addAll(Arrays.asList(new String[]{"WORK"}));
                break;
            case p.View_theme /*4*/:
                arrayList.addAll(Arrays.asList(new String[]{"WORK", "FAX"}));
                break;
            case p.Toolbar_contentInsetStart /*5*/:
                arrayList.addAll(Arrays.asList(new String[]{"HOME", "FAX"}));
                break;
            case p.Toolbar_contentInsetEnd /*6*/:
                if (!this.f) {
                    arrayList.add("PAGER");
                    break;
                } else {
                    arrayList.add("VOICE");
                    break;
                }
            case p.Toolbar_contentInsetLeft /*7*/:
                arrayList.add("VOICE");
                break;
            case p.Toolbar_popupTheme /*9*/:
                arrayList.add("CAR");
                break;
            case p.Toolbar_titleTextAppearance /*10*/:
                arrayList.add("WORK");
                z = true;
                break;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                arrayList.add("ISDN");
                break;
            case p.Toolbar_titleMargins /*12*/:
                z = true;
                break;
            case p.Toolbar_titleMarginStart /*13*/:
                arrayList.add("FAX");
                break;
            case p.Toolbar_titleMarginTop /*15*/:
                arrayList.add("TLX");
                break;
            case p.Toolbar_maxButtonHeight /*17*/:
                arrayList.addAll(Arrays.asList(new String[]{"WORK", "CELL"}));
                break;
            case p.Toolbar_collapseIcon /*18*/:
                arrayList.add("WORK");
                if (!this.f) {
                    arrayList.add("PAGER");
                    break;
                } else {
                    arrayList.add("VOICE");
                    break;
                }
            case p.Toolbar_navigationIcon /*20*/:
                arrayList.add("MSG");
                break;
        }
        if (z) {
            arrayList.add("PREF");
        }
        if (arrayList.isEmpty()) {
            a(this.p, Integer.valueOf(i));
        } else {
            e(arrayList);
        }
        this.p.append(":");
        this.p.append(str2);
        this.p.append("\r\n");
    }

    private void a(StringBuilder stringBuilder, Integer num) {
        if (this.f) {
            stringBuilder.append("VOICE");
            return;
        }
        String a = r.a(num);
        if (a != null) {
            b(a);
        } else {
            Log.e("vCard", "Unknown or unsupported (by vCard) Phone type: " + num);
        }
    }

    public void a(String str, List<String> list, String str2) {
        boolean z;
        boolean z2 = !r.a(str2);
        if (this.g) {
            if (!r.b(str2)) {
                z = true;
                a(str, list, str2, z2, z);
            }
        }
        z = false;
        a(str, list, str2, z2, z);
    }

    public void a(String str, String str2) {
        a(str, str2, false, false);
    }

    public void a(String str, String str2, boolean z, boolean z2) {
        a(str, null, str2, z, z2);
    }

    public void a(String str, List<String> list, String str2, boolean z, boolean z2) {
        String c;
        this.p.append(str);
        if (list != null && list.size() > 0) {
            this.p.append(";");
            e(list);
        }
        if (z) {
            this.p.append(";");
            this.p.append(this.o);
        }
        if (z2) {
            this.p.append(";");
            this.p.append("ENCODING=QUOTED-PRINTABLE");
            c = c(str2);
        } else {
            c = d(str2);
        }
        this.p.append(":");
        this.p.append(c);
        this.p.append("\r\n");
    }

    private void e(List<String> list) {
        Object obj = 1;
        for (String str : list) {
            Object obj2;
            String str2;
            if (p.b(this.b) || p.c(this.b)) {
                str2 = p.c(this.b) ? r.e(str2) : r.d(str2);
                if (!TextUtils.isEmpty(str2)) {
                    if (obj != null) {
                        obj = null;
                    } else {
                        this.p.append(";");
                    }
                    b(str2);
                    obj2 = obj;
                }
            } else if (r.c(str2)) {
                if (obj != null) {
                    obj = null;
                } else {
                    this.p.append(";");
                }
                b(str2);
                obj2 = obj;
            }
            obj = obj2;
        }
    }

    private void b(String str) {
        a(this.p, str);
    }

    private void a(StringBuilder stringBuilder, String str) {
        if (p.c(this.b) || ((p.b(this.b) || this.j) && !this.f)) {
            stringBuilder.append("TYPE").append("=");
        }
        stringBuilder.append(str);
    }

    private boolean a(String... strArr) {
        if (!this.m) {
            return false;
        }
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (!r.a(strArr[i])) {
                return true;
            }
        }
        return false;
    }

    private String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes;
        int i;
        int i2;
        StringBuilder stringBuilder = new StringBuilder();
        try {
            bytes = str.getBytes(this.n);
            i = 0;
            i2 = 0;
        } catch (UnsupportedEncodingException e) {
            Log.e("vCard", "Charset " + this.n + " cannot be used. " + "Try default charset");
            bytes = str.getBytes();
            i = 0;
            i2 = 0;
        }
        while (i2 < bytes.length) {
            stringBuilder.append(String.format("=%02X", new Object[]{Byte.valueOf(bytes[i2])}));
            i2++;
            i += 3;
            if (i >= 67) {
                stringBuilder.append("=\r\n");
                i = 0;
            }
        }
        return stringBuilder.toString();
    }

    private String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case p.Toolbar_titleMarginStart /*13*/:
                    if (i + 1 < length && str.charAt(i) == '\n') {
                        break;
                    }
                case p.Toolbar_titleTextAppearance /*10*/:
                    stringBuilder.append("\\n");
                    break;
                case ApiRunnable.ACTION_CODE_USER_BROADCASTS /*44*/:
                    if (!this.c) {
                        stringBuilder.append(charAt);
                        break;
                    }
                    stringBuilder.append("\\,");
                    break;
                case ApiRunnable.ACTION_CODE_HELLO /*59*/:
                    stringBuilder.append('\\');
                    stringBuilder.append(';');
                    break;
                case cse.AppCompatTheme_alertDialogButtonGroupStyle /*92*/:
                    if (this.c) {
                        stringBuilder.append("\\\\");
                        break;
                    }
                case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
                case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
                    if (!this.f) {
                        stringBuilder.append(charAt);
                        break;
                    }
                    stringBuilder.append('\\');
                    stringBuilder.append(charAt);
                    break;
                default:
                    stringBuilder.append(charAt);
                    break;
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public String toString() {
        if (!this.q) {
            if (this.f) {
                a("X-CLASS", "PUBLIC");
                a("X-REDUCTION", "");
                a("X-NO", "");
                a("X-DCM-HMN-MODE", "");
            }
            a("END", "VCARD");
            this.q = true;
        }
        return this.p.toString();
    }
}
