package com.twitter.library.api.search;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.g;
import con;
import cop;
import cor;
import cou;
import cox;
import defpackage.cok;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
public class m extends t<k, cd> {
    private static final HashMap<String, Integer> a;

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    static {
        a = new HashMap(5);
        a.put("trend", Integer.valueOf(0));
        a.put("promoted_trend", Integer.valueOf(4));
        a.put("user_gallery", Integer.valueOf(1));
        a.put("photo_gallery", Integer.valueOf(2));
        a.put("video_gallery", Integer.valueOf(3));
    }

    protected k b(JsonParser jsonParser) throws IOException {
        ArrayList arrayList = new ArrayList();
        l lVar = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"modules".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    arrayList.addAll(d(jsonParser));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!TtmlNode.TAG_METADATA.equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    lVar = c(jsonParser);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new k(lVar, arrayList);
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }

    private l c(JsonParser jsonParser) throws IOException {
        String str = null;
        long j = 0;
        boolean z = false;
        JsonToken a = jsonParser.a();
        long j2 = 0;
        String str2 = null;
        long j3 = 0;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    jsonParser.c();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"woeid".equals(e)) {
                        if (!"debug".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        a = jsonParser.a();
                        while (a != null && a != JsonToken.END_OBJECT) {
                            switch (n.a[a.ordinal()]) {
                                case ModuleDescriptor.MODULE_VERSION /*1*/:
                                case Buffer.FLAG_DECODE_ONLY /*2*/:
                                    jsonParser.c();
                                    break;
                                case Util.TYPE_OTHER /*3*/:
                                    if (!"string".equals(jsonParser.e())) {
                                        break;
                                    }
                                    str = jsonParser.s();
                                    break;
                                default:
                                    break;
                            }
                            a = jsonParser.a();
                        }
                    } else {
                        a = jsonParser.a();
                        while (a != null && a != JsonToken.END_OBJECT) {
                            switch (n.a[a.ordinal()]) {
                                case ModuleDescriptor.MODULE_VERSION /*1*/:
                                case Buffer.FLAG_DECODE_ONLY /*2*/:
                                    jsonParser.c();
                                    break;
                                case Util.TYPE_OTHER /*3*/:
                                    if (!"name".equals(jsonParser.e())) {
                                        break;
                                    }
                                    str2 = jsonParser.s();
                                    break;
                                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                                    if (!TtmlNode.ATTR_ID.equals(jsonParser.e())) {
                                        break;
                                    }
                                    j2 = jsonParser.j();
                                    break;
                                default:
                                    break;
                            }
                            a = jsonParser.a();
                        }
                    }
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"context_mode".equals(e)) {
                        break;
                    }
                    z = "minimal".equals(jsonParser.s());
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"timestamp".equals(e)) {
                        if (!"refresh_interval_millis".equals(e)) {
                            break;
                        }
                        j = jsonParser.j();
                        break;
                    }
                    j3 = jsonParser.j();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new l(j3, str2, j2, str, j, z);
    }

    private ArrayList<j> d(JsonParser jsonParser) throws IOException {
        ArrayList<j> arrayList = new ArrayList();
        int i = 1;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    jsonParser.c();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.END_OBJECT) {
                        switch (n.a[a.ordinal()]) {
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                jsonParser.c();
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                j c = c(jsonParser, i);
                                if (c == null) {
                                    break;
                                }
                                arrayList.add(c);
                                i++;
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private j c(JsonParser jsonParser, int i) throws IOException {
        Integer num = (Integer) a.get(jsonParser.e());
        if (num != null) {
            int intValue = num.intValue();
            switch (intValue) {
                case Util.TYPE_DASH /*0*/:
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    return a(jsonParser, intValue, i);
                default:
                    return null;
            }
        }
        jsonParser.c();
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.twitter.library.api.search.j a(com.fasterxml.jackson.core.JsonParser r26, int r27, int r28) throws java.io.IOException {
        /*
        r25 = this;
        r23 = 0;
        r20 = 0;
        r12 = 0;
        r9 = 0;
        r10 = 0;
        r8 = 0;
        r18 = 0;
        r7 = 0;
        r14 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r3 = 0;
        r2 = r26.a();
        r24 = r2;
        r2 = r3;
        r3 = r7;
        r7 = r12;
        r12 = r24;
    L_0x001c:
        if (r12 == 0) goto L_0x0165;
    L_0x001e:
        r13 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r12 == r13) goto L_0x0165;
    L_0x0022:
        r13 = r26.e();
        r15 = com.twitter.library.api.search.n.a;
        r12 = r12.ordinal();
        r12 = r15[r12];
        switch(r12) {
            case 1: goto L_0x013f;
            case 2: goto L_0x00d1;
            case 3: goto L_0x0049;
            case 4: goto L_0x00a2;
            default: goto L_0x0031;
        };
    L_0x0031:
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
    L_0x003a:
        r15 = r26.a();
        r20 = r12;
        r23 = r13;
        r12 = r15;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x001c;
    L_0x0049:
        r12 = "name";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x005f;
    L_0x0052:
        r12 = r26.s();
        r13 = r12;
        r12 = r20;
        r24 = r7;
        r7 = r9;
        r9 = r24;
        goto L_0x003a;
    L_0x005f:
        r12 = "description";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0074;
    L_0x0068:
        r12 = r26.s();
        r13 = r23;
        r24 = r7;
        r7 = r9;
        r9 = r24;
        goto L_0x003a;
    L_0x0074:
        r12 = "meta_description";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x008b;
    L_0x007d:
        r7 = r26.s();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x008b:
        r12 = "advertiser_name";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0031;
    L_0x0094:
        r9 = r26.s();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x00a2:
        r12 = "id";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x00b9;
    L_0x00ab:
        r10 = r26.p();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x00b9:
        r12 = "rank";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0031;
    L_0x00c2:
        r8 = r26.o();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x00d1:
        r12 = "context";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x00e9;
    L_0x00da:
        r4 = h(r26);
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x00e9:
        r12 = "target";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0101;
    L_0x00f2:
        r5 = g(r26);
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x0101:
        r12 = "debug";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0119;
    L_0x010a:
        r6 = k(r26);
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x0119:
        r12 = "disclosure";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0131;
    L_0x0122:
        r2 = l(r26);
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x0131:
        r26.c();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x013f:
        r12 = "images";
        r12 = r12.equals(r13);
        if (r12 == 0) goto L_0x0157;
    L_0x0148:
        r3 = r25.e(r26);
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x0157:
        r26.c();
        r12 = r20;
        r13 = r23;
        r24 = r9;
        r9 = r7;
        r7 = r24;
        goto L_0x003a;
    L_0x0165:
        r12 = 0;
        r12 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r12 == 0) goto L_0x018b;
    L_0x016b:
        r12 = new cnk;
        r12.<init>();
        r9 = r12.d(r9);
        r12 = 1;
        r9 = r9.c(r12);
        r2 = r2.c;
        r2 = r9.b(r2);
        r2 = r2.a(r10);
        r2 = r2.q();
        r2 = (cni) r2;
        r18 = r2;
    L_0x018b:
        if (r5 == 0) goto L_0x019b;
    L_0x018d:
        r2 = r5.b;
        r2 = com.twitter.util.aj.a(r2);
        if (r2 != 0) goto L_0x019b;
    L_0x0195:
        r2 = com.twitter.util.aj.a(r23);
        if (r2 == 0) goto L_0x01ae;
    L_0x019b:
        r2 = r25.e();
        if (r2 == 0) goto L_0x01ac;
    L_0x01a1:
        r3 = new com.twitter.library.util.InvalidDataException;
        r4 = "Failed parsing trendsplus module; missing required data";
        r3.<init>(r4);
        r2.a(r3);
    L_0x01ac:
        r2 = 0;
    L_0x01ad:
        return r2;
    L_0x01ae:
        if (r3 == 0) goto L_0x021d;
    L_0x01b0:
        r9 = new java.util.ArrayList;
        r9.<init>();
        r3 = r3.iterator();
    L_0x01b9:
        r2 = r3.hasNext();
        if (r2 == 0) goto L_0x01d5;
    L_0x01bf:
        r2 = r3.next();
        r2 = (com.twitter.model.core.cm) r2;
        r10 = r2.e;
        r10 = r10.d;
        r10 = r10.c();
        if (r10 != 0) goto L_0x01b9;
    L_0x01cf:
        r2 = r2.e;
        r9.add(r2);
        goto L_0x01b9;
    L_0x01d5:
        r3 = r9;
    L_0x01d6:
        r2 = new com.twitter.model.topic.i;
        r9 = r28;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9);
        r6 = new com.twitter.model.topic.l;
        r3 = 3;
        r7 = r5.b;
        r7 = com.twitter.model.topic.TwitterTopic.a(r7);
        r8 = 0;
        r6.<init>(r3, r7, r8);
        r3 = new com.twitter.model.topic.TwitterTopic;
        r7 = r5.b;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r11 = 0;
        if (r4 == 0) goto L_0x021a;
    L_0x01f4:
        r5 = r4.e;
        if (r5 == 0) goto L_0x021a;
    L_0x01f8:
        r4 = r4.e;
        r12 = r4.c;
    L_0x01fc:
        r14 = 0;
        r16 = 0;
        r19 = 0;
        r21 = 0;
        r22 = 0;
        r4 = r6;
        r5 = r23;
        r6 = r20;
        r20 = r2;
        r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r14, r16, r18, r19, r20, r21, r22);
        r2 = new com.twitter.library.api.search.j;
        r4 = 0;
        r5 = 0;
        r0 = r27;
        r2.<init>(r0, r3, r4, r5);
        goto L_0x01ad;
    L_0x021a:
        r12 = 0;
        goto L_0x01fc;
    L_0x021d:
        r3 = r14;
        goto L_0x01d6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.search.m.a(com.fasterxml.jackson.core.JsonParser, int, int):com.twitter.library.api.search.j");
    }

    private ArrayList<cm> e(JsonParser jsonParser) throws IOException {
        ArrayList<cm> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    jsonParser.c();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.END_OBJECT) {
                        switch (n.a[a.ordinal()]) {
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                jsonParser.c();
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                cm f = f(jsonParser);
                                if (f == null) {
                                    break;
                                }
                                arrayList.add(f);
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    private cm f(JsonParser jsonParser) throws IOException {
        if ("status".equals(jsonParser.e())) {
            return (cm) g.c(jsonParser, cm.class);
        }
        return null;
    }

    private static cox g(JsonParser jsonParser) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"pinned_tweets".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.d();
                    while (a != null && a != JsonToken.END_ARRAY) {
                        if (a == JsonToken.VALUE_NUMBER_INT) {
                            arrayList.add(Long.valueOf(jsonParser.j()));
                        }
                        a = jsonParser.a();
                    }
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"query".equals(e)) {
                        break;
                    }
                    str = jsonParser.s();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new cox(str, arrayList);
    }

    private static cok h(JsonParser jsonParser) throws IOException {
        List list = null;
        long j = 0;
        JsonToken a = jsonParser.a();
        cop cop = null;
        con con = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"related_queries".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    list = new ArrayList();
                    a = jsonParser.d();
                    while (a != null && a != JsonToken.END_ARRAY) {
                        if (a == JsonToken.VALUE_STRING) {
                            list.add(jsonParser.g());
                        }
                        a = jsonParser.a();
                    }
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"trend_velocity".equals(e)) {
                        if (!"tweet_count".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        cop = j(jsonParser);
                        break;
                    }
                    con = i(jsonParser);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"trend_start_millis".equals(e)) {
                        break;
                    }
                    j = jsonParser.j();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new cok(list, j, con, cop);
    }

    private static con i(JsonParser jsonParser) throws IOException {
        int i = 0;
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"direction".equals(e)) {
                        break;
                    }
                    str = jsonParser.s();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"magnitude".equals(e)) {
                        break;
                    }
                    i = jsonParser.i();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new con(str, i);
    }

    private static cop j(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        int i = 0;
        long j = 0;
        JsonToken a2;
        while (a2 != null && a2 != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a2.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"duration_minutes".equals(e)) {
                        if (!"count".equals(e)) {
                            break;
                        }
                        j = jsonParser.j();
                        break;
                    }
                    i = jsonParser.i();
                    break;
                default:
                    break;
            }
            a2 = jsonParser.a();
        }
        return new cop(i, j);
    }

    private static cor k(JsonParser jsonParser) throws IOException {
        boolean z = true;
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"string".equals(e)) {
                        break;
                    }
                    str = jsonParser.s();
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    if (!"it_should_be_ignored".equals(e)) {
                        break;
                    }
                    z = jsonParser.m();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new cor(str, z);
    }

    private static cou l(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        String str2 = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (n.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!MimeTypes.BASE_TYPE_TEXT.equals(e)) {
                        if (!"type".equals(e)) {
                            break;
                        }
                        str2 = jsonParser.s();
                        break;
                    }
                    str = jsonParser.s();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new cou(str, str2);
    }
}
