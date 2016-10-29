package com.twitter.library.av.model.parser;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.Pair;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import com.twitter.model.av.Audio;
import com.twitter.model.av.AudioPlaylist;
import defpackage.bdc;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class a implements i {
    public AudioPlaylist a;
    private final Context b;

    public a(Context context) {
        this.b = context.getApplicationContext();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r4, java.io.InputStream r5, int r6, java.lang.String r7, java.lang.String r8) throws java.io.IOException {
        /*
        r3 = this;
        r0 = 0;
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r4 == r1) goto L_0x0009;
    L_0x0005:
        r1 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r4 != r1) goto L_0x0027;
    L_0x0009:
        r0 = com.twitter.library.api.at.a(r5);	 Catch:{ Exception -> 0x0017, all -> 0x001f }
        r1 = r3.a(r0, r4);	 Catch:{ Exception -> 0x0017 }
        r3.a = r1;	 Catch:{ Exception -> 0x0017 }
        cvi.a(r0);
    L_0x0016:
        return;
    L_0x0017:
        r1 = move-exception;
        r1 = 0;
        r3.a = r1;	 Catch:{ all -> 0x0036 }
        cvi.a(r0);
        goto L_0x0016;
    L_0x001f:
        r1 = move-exception;
        r2 = r1;
        r1 = r0;
        r0 = r2;
    L_0x0023:
        cvi.a(r1);
        throw r0;
    L_0x0027:
        r0 = new com.twitter.model.av.AudioPlaylist;
        r1 = "unknown";
        r1 = defpackage.bpx.a(r4, r1);
        r0.<init>(r4, r1);
        r3.a = r0;
        goto L_0x0016;
    L_0x0036:
        r1 = move-exception;
        r2 = r1;
        r1 = r0;
        r0 = r2;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.model.parser.a.a(int, java.io.InputStream, int, java.lang.String, java.lang.String):void");
    }

    public void a(k kVar) {
    }

    private AudioPlaylist a(JsonParser jsonParser, int i) throws IOException {
        Audio audio = null;
        JsonToken a = jsonParser.a();
        Pair pair = null;
        Audio[] audioArr = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (a != null) {
            switch (b.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"error".equalsIgnoreCase(str3)) {
                        jsonParser.c();
                        break;
                    }
                    pair = h(jsonParser);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"tracks".equalsIgnoreCase(str3)) {
                        jsonParser.c();
                        break;
                    }
                    audioArr = a(jsonParser);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"uuid".equalsIgnoreCase(str3)) {
                        if (!"title".equalsIgnoreCase(str3)) {
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    str2 = jsonParser.g();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str3 = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (pair != null || i != Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (pair != null) {
                str3 = (String) pair.first;
            } else {
                str3 = null;
            }
            return new AudioPlaylist(i, str3);
        } else if (audioArr == null || audioArr.length <= 0) {
            return new AudioPlaylist(i, this.b.getResources().getString(bdc.av_playlist_download_failed));
        } else {
            if (0 < audioArr.length) {
                audio = audioArr[0];
                if (audio.a() == null) {
                    return new AudioPlaylist(i, this.b.getResources().getString(bdc.av_playlist_download_failed));
                }
            }
            return new AudioPlaylist(str2, str, audio);
        }
    }

    private static Audio[] a(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        ArrayList arrayList = new ArrayList();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (b.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    arrayList.add(b(jsonParser));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return (Audio[]) arrayList.toArray(new Audio[arrayList.size()]);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.av.Audio b(com.fasterxml.jackson.core.JsonParser r13) throws java.io.IOException {
        /*
        r0 = 0;
        r4 = new java.util.HashMap;
        r4.<init>();
        r6 = new java.util.HashMap;
        r6.<init>();
        r5 = new java.util.HashMap;
        r5.<init>();
        r1 = r13.a();
        r2 = r1;
        r9 = r0;
        r7 = r0;
        r3 = r0;
        r10 = r0;
        r11 = r0;
        r1 = r0;
    L_0x001b:
        if (r2 == 0) goto L_0x00f7;
    L_0x001d:
        r8 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r8) goto L_0x00f7;
    L_0x0021:
        r8 = com.twitter.library.av.model.parser.b.a;
        r2 = r2.ordinal();
        r2 = r8[r2];
        switch(r2) {
            case 1: goto L_0x003c;
            case 2: goto L_0x0057;
            case 3: goto L_0x0086;
            case 4: goto L_0x00ec;
            default: goto L_0x002c;
        };
    L_0x002c:
        r2 = r6;
        r8 = r1;
        r6 = r11;
        r1 = r5;
        r5 = r10;
    L_0x0031:
        r10 = r13.a();
        r11 = r6;
        r6 = r2;
        r2 = r10;
        r10 = r5;
        r5 = r1;
        r1 = r8;
        goto L_0x001b;
    L_0x003c:
        r2 = "artist";
        r2 = r2.equalsIgnoreCase(r0);
        if (r2 == 0) goto L_0x004e;
    L_0x0045:
        r2 = c(r13);
        r6 = r11;
        r8 = r1;
        r1 = r5;
        r5 = r10;
        goto L_0x0031;
    L_0x004e:
        r13.c();
        r2 = r6;
        r8 = r1;
        r6 = r11;
        r1 = r5;
        r5 = r10;
        goto L_0x0031;
    L_0x0057:
        r2 = "beacons";
        r2 = r2.equalsIgnoreCase(r0);
        if (r2 == 0) goto L_0x006a;
    L_0x0060:
        r4 = d(r13);
        r2 = r6;
        r8 = r1;
        r6 = r11;
        r1 = r5;
        r5 = r10;
        goto L_0x0031;
    L_0x006a:
        r2 = "sources";
        r2 = r2.equalsIgnoreCase(r0);
        if (r2 == 0) goto L_0x007d;
    L_0x0073:
        r2 = f(r13);
        r5 = r10;
        r8 = r1;
        r1 = r2;
        r2 = r6;
        r6 = r11;
        goto L_0x0031;
    L_0x007d:
        r13.c();
        r2 = r6;
        r8 = r1;
        r6 = r11;
        r1 = r5;
        r5 = r10;
        goto L_0x0031;
    L_0x0086:
        r2 = r13.g();
        r8 = "title";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x0099;
    L_0x0093:
        r1 = r5;
        r8 = r2;
        r5 = r10;
        r2 = r6;
        r6 = r11;
        goto L_0x0031;
    L_0x0099:
        r8 = "cta_value";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x00a8;
    L_0x00a2:
        r8 = r1;
        r1 = r5;
        r5 = r2;
        r2 = r6;
        r6 = r11;
        goto L_0x0031;
    L_0x00a8:
        r8 = "cta_type";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x00b9;
    L_0x00b1:
        r3 = r2;
        r8 = r1;
        r1 = r5;
        r2 = r6;
        r6 = r11;
        r5 = r10;
        goto L_0x0031;
    L_0x00b9:
        r8 = "app_link";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x00ca;
    L_0x00c2:
        r8 = r1;
        r1 = r5;
        r5 = r10;
        r12 = r2;
        r2 = r6;
        r6 = r12;
        goto L_0x0031;
    L_0x00ca:
        r8 = "uuid";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x00db;
    L_0x00d3:
        r7 = r2;
        r8 = r1;
        r2 = r6;
        r1 = r5;
        r6 = r11;
        r5 = r10;
        goto L_0x0031;
    L_0x00db:
        r8 = "artwork";
        r8 = r8.equalsIgnoreCase(r0);
        if (r8 == 0) goto L_0x002c;
    L_0x00e4:
        r9 = r2;
        r8 = r1;
        r2 = r6;
        r1 = r5;
        r6 = r11;
        r5 = r10;
        goto L_0x0031;
    L_0x00ec:
        r0 = r13.g();
        r2 = r6;
        r8 = r1;
        r6 = r11;
        r1 = r5;
        r5 = r10;
        goto L_0x0031;
    L_0x00f7:
        r0 = "progressive";
        r8 = r5.get(r0);
        r8 = (java.lang.String) r8;
        r0 = "handle";
        r5 = r6.get(r0);
        r5 = (java.lang.String) r5;
        r0 = "name";
        r6 = r6.get(r0);
        r6 = (java.lang.String) r6;
        if (r10 != 0) goto L_0x011b;
    L_0x0114:
        r2 = r11;
    L_0x0115:
        r0 = new com.twitter.model.av.Audio;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9);
        return r0;
    L_0x011b:
        r2 = r10;
        goto L_0x0115;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.model.parser.a.b(com.fasterxml.jackson.core.JsonParser):com.twitter.model.av.Audio");
    }

    private static Map<String, String> c(JsonParser jsonParser) throws IOException {
        Map<String, String> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        String str = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (b.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    String g = jsonParser.g();
                    if (!"name".equalsIgnoreCase(str)) {
                        if (!"handle".equalsIgnoreCase(str)) {
                            break;
                        }
                        hashMap.put("handle", g);
                        break;
                    }
                    hashMap.put("name", g);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    private static Map<String, List<String>> d(JsonParser jsonParser) throws IOException {
        List<Pair> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (b.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    arrayList.add(e(jsonParser));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        Map<String, List<String>> hashMap = new HashMap();
        for (Pair pair : arrayList) {
            List list = (List) hashMap.get(pair.first);
            if (list == null) {
                list = new ArrayList();
            }
            list.add(pair.second);
            hashMap.put(pair.first, list);
        }
        return hashMap;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.util.Pair<java.lang.String, java.lang.String> e(com.fasterxml.jackson.core.JsonParser r6) throws java.io.IOException {
        /*
        r0 = 0;
        r1 = r6.a();
        r2 = r1;
        r3 = r0;
        r1 = r0;
    L_0x0008:
        if (r2 == 0) goto L_0x0046;
    L_0x000a:
        r4 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r4) goto L_0x0046;
    L_0x000e:
        r4 = com.twitter.library.av.model.parser.b.a;
        r2 = r2.ordinal();
        r2 = r4[r2];
        switch(r2) {
            case 1: goto L_0x0022;
            case 2: goto L_0x0022;
            case 3: goto L_0x0027;
            case 4: goto L_0x0040;
            default: goto L_0x0019;
        };
    L_0x0019:
        r2 = r3;
    L_0x001a:
        r3 = r6.a();
        r5 = r3;
        r3 = r2;
        r2 = r5;
        goto L_0x0008;
    L_0x0022:
        r6.c();
        r2 = r3;
        goto L_0x001a;
    L_0x0027:
        r2 = r6.g();
        r4 = "url";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 != 0) goto L_0x001a;
    L_0x0034:
        r4 = "key";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x0019;
    L_0x003d:
        r1 = r2;
        r2 = r3;
        goto L_0x001a;
    L_0x0040:
        r0 = r6.g();
        r2 = r3;
        goto L_0x001a;
    L_0x0046:
        r0 = new android.util.Pair;
        r0.<init>(r1, r3);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.model.parser.a.e(com.fasterxml.jackson.core.JsonParser):android.util.Pair<java.lang.String, java.lang.String>");
    }

    private static Map<String, String> f(JsonParser jsonParser) throws IOException {
        Map<String, String> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (b.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    Pair g = g(jsonParser);
                    hashMap.put(g.first, g.second);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.util.Pair<java.lang.String, java.lang.String> g(com.fasterxml.jackson.core.JsonParser r6) throws java.io.IOException {
        /*
        r0 = 0;
        r1 = r6.a();
        r2 = r1;
        r3 = r0;
        r1 = r0;
    L_0x0008:
        if (r2 == 0) goto L_0x0046;
    L_0x000a:
        r4 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r4) goto L_0x0046;
    L_0x000e:
        r4 = com.twitter.library.av.model.parser.b.a;
        r2 = r2.ordinal();
        r2 = r4[r2];
        switch(r2) {
            case 1: goto L_0x0022;
            case 2: goto L_0x0022;
            case 3: goto L_0x0027;
            case 4: goto L_0x0040;
            default: goto L_0x0019;
        };
    L_0x0019:
        r2 = r3;
    L_0x001a:
        r3 = r6.a();
        r5 = r3;
        r3 = r2;
        r2 = r5;
        goto L_0x0008;
    L_0x0022:
        r6.c();
        r2 = r3;
        goto L_0x001a;
    L_0x0027:
        r2 = r6.g();
        r4 = "bitrate";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 != 0) goto L_0x001a;
    L_0x0034:
        r4 = "url";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x0019;
    L_0x003d:
        r1 = r2;
        r2 = r3;
        goto L_0x001a;
    L_0x0040:
        r0 = r6.g();
        r2 = r3;
        goto L_0x001a;
    L_0x0046:
        r0 = new android.util.Pair;
        r0.<init>(r3, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.model.parser.a.g(com.fasterxml.jackson.core.JsonParser):android.util.Pair<java.lang.String, java.lang.String>");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.util.Pair<java.lang.String, java.lang.String> h(com.fasterxml.jackson.core.JsonParser r6) throws java.io.IOException {
        /*
        r0 = 0;
        r1 = r6.a();
        r2 = r1;
        r3 = r0;
        r1 = r0;
    L_0x0008:
        if (r2 == 0) goto L_0x0046;
    L_0x000a:
        r4 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r4) goto L_0x0046;
    L_0x000e:
        r4 = com.twitter.library.av.model.parser.b.a;
        r2 = r2.ordinal();
        r2 = r4[r2];
        switch(r2) {
            case 1: goto L_0x0022;
            case 2: goto L_0x0022;
            case 3: goto L_0x0027;
            case 4: goto L_0x0040;
            default: goto L_0x0019;
        };
    L_0x0019:
        r2 = r3;
    L_0x001a:
        r3 = r6.a();
        r5 = r3;
        r3 = r2;
        r2 = r5;
        goto L_0x0008;
    L_0x0022:
        r6.c();
        r2 = r3;
        goto L_0x001a;
    L_0x0027:
        r2 = r6.g();
        r4 = "error_code";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 != 0) goto L_0x001a;
    L_0x0034:
        r4 = "reason";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x0019;
    L_0x003d:
        r1 = r2;
        r2 = r3;
        goto L_0x001a;
    L_0x0040:
        r0 = r6.g();
        r2 = r3;
        goto L_0x001a;
    L_0x0046:
        r0 = new android.util.Pair;
        r0.<init>(r3, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.model.parser.a.h(com.fasterxml.jackson.core.JsonParser):android.util.Pair<java.lang.String, java.lang.String>");
    }
}
