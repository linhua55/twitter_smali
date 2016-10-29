package com.twitter.library.api;

import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.util.Pair;
import bff;
import bfx;
import blw;
import bpk;
import cbk;
import cgc;
import cgd;
import cho;
import cjl;
import cnn;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.android.mx;
import com.twitter.android.util.CategoryListItem;
import com.twitter.library.api.search.TwitterSearchQuery;
import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.api.search.h;
import com.twitter.library.api.search.i;
import com.twitter.library.commerce.model.ai;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.client.UrlConfiguration;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.core.cg;
import com.twitter.model.core.ck;
import com.twitter.model.core.cm;
import com.twitter.model.core.cn;
import com.twitter.model.core.cp;
import com.twitter.model.core.p;
import com.twitter.model.json.alerts.JsonAlert;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.g;
import com.twitter.model.json.community.JsonCommunity;
import com.twitter.model.json.livevideo.JsonLiveVideoEvent;
import com.twitter.model.json.moments.JsonSuggestedMomentsInjection;
import com.twitter.model.json.moments.JsonTimelineMomentId;
import com.twitter.model.json.search.JsonTwitterUserMetadata;
import com.twitter.model.json.timeline.JsonInlinePrompt;
import com.twitter.model.json.timeline.JsonInlinePromptTwoActions;
import com.twitter.model.json.timeline.JsonRecap;
import com.twitter.model.json.timeline.JsonStrings;
import com.twitter.model.json.timeline.JsonSuggestsInfo;
import com.twitter.model.json.timeline.JsonTimelineMessage;
import com.twitter.model.json.timeline.JsonTweetCarousel;
import com.twitter.model.json.timeline.wtf.JsonSocialProof;
import com.twitter.model.json.timeline.wtf.JsonWhoToFollow;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.ba;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.model.search.d;
import com.twitter.model.search.j;
import com.twitter.model.timeline.ag;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.an;
import com.twitter.model.timeline.as;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.aw;
import com.twitter.model.timeline.b;
import com.twitter.model.timeline.bd;
import com.twitter.model.timeline.bg;
import com.twitter.model.timeline.bj;
import com.twitter.model.timeline.bk;
import com.twitter.model.timeline.bt;
import com.twitter.model.timeline.bv;
import com.twitter.model.timeline.by;
import com.twitter.model.timeline.c;
import com.twitter.model.timeline.ce;
import com.twitter.model.timeline.cf;
import com.twitter.model.timeline.ch;
import com.twitter.model.timeline.cr;
import com.twitter.model.timeline.cs;
import com.twitter.model.timeline.e;
import com.twitter.model.timeline.s;
import com.twitter.model.timeline.w;
import com.twitter.model.timeline.y;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.a;
import com.twitter.model.topic.l;
import com.twitter.util.ak;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.m;
import cvb;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bpl;
import defpackage.bpn;
import defpackage.cfz;
import defpackage.cga;
import defpackage.chs;
import defpackage.cni;
import defpackage.cnm;
import defpackage.cno;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class at {
    public static final JsonFactory a;
    private static final Map<String, Integer> b;
    private static final Map<String, Integer> c;

    static {
        a = new JsonFactory();
        b = new HashMap(10);
        b.put(NotificationCompatApi21.CATEGORY_STATUS, Integer.valueOf(0));
        b.put("user", Integer.valueOf(1));
        b.put("news", Integer.valueOf(4));
        b.put("suggestion", Integer.valueOf(3));
        b.put("user_gallery", Integer.valueOf(6));
        b.put("media_gallery", Integer.valueOf(7));
        b.put("tweet_gallery", Integer.valueOf(10));
        b.put("event_summary", Integer.valueOf(11));
        b.put("event_update", Integer.valueOf(13));
        b.put("summary", Integer.valueOf(12));
        c = new HashMap(4);
        c.put("favorite", Integer.valueOf(36));
        c.put("user", Integer.valueOf(35));
        c.put("megaphone", Integer.valueOf(22));
        c.put("bird", Integer.valueOf(37));
    }

    public static aq<TwitterUser> a(JsonParser jsonParser) throws IOException {
        JsonToken d = jsonParser.d();
        Object obj = null;
        List list = null;
        String str = null;
        while (d != null && d != JsonToken.c) {
            switch (au.a[d.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if ("users".equals(obj)) {
                        list = g.d(jsonParser, TwitterUser.class);
                        break;
                    }
                    while (d != null && d != JsonToken.e) {
                        d = jsonParser.a();
                    }
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"next_cursor_str".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    obj = jsonParser.g();
                    break;
                default:
                    break;
            }
            d = jsonParser.a();
        }
        if (list == null) {
            return null;
        }
        return new aq(str, list);
    }

    public static ArrayList<cm> a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2) throws IOException {
        ArrayList<cm> arrayList = new ArrayList();
        if (jsonParser != null) {
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.e) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        jsonParser.c();
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        cm a2 = a(jsonParser.g(), (HashMap) hashMap, (HashMap) hashMap2);
                        if (a2 == null) {
                            break;
                        }
                        arrayList.add(a2);
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        }
        return arrayList;
    }

    public static boolean b(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"phone".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case mx.UserView_actionButtonPaddingRight /*5*/:
                                if (!"verified".equals(jsonParser.e())) {
                                    break;
                                }
                                return true;
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
        return false;
    }

    public static chs c(JsonParser jsonParser) throws IOException {
        return (chs) g.c(jsonParser, chs.class);
    }

    public static Long d(JsonParser jsonParser) throws IOException {
        Long valueOf = Long.valueOf(0);
        Long l = valueOf;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"media_id_string".equals(jsonParser.e())) {
                        break;
                    }
                    l = Long.valueOf(Long.parseLong(jsonParser.g()));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return l;
    }

    private static a ac(JsonParser jsonParser) throws IOException {
        String str = null;
        long j = -1;
        JsonToken a = jsonParser.a();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    String e = jsonParser.e();
                    if (!"location".equals(e)) {
                        if (!"name".equals(e)) {
                            if (!"score".equals(e)) {
                                if (!"logo_url".equals(e)) {
                                    if (!"abbreviation".equals(e)) {
                                        if (!"player_type".equals(e)) {
                                            break;
                                        }
                                        str = jsonParser.s();
                                        break;
                                    }
                                    str2 = jsonParser.s();
                                    break;
                                }
                                str3 = jsonParser.s();
                                break;
                            }
                            str4 = jsonParser.s();
                            break;
                        }
                        str5 = jsonParser.s();
                        break;
                    }
                    str6 = jsonParser.s();
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (!"user_id".equals(jsonParser.e())) {
                        break;
                    }
                    j = jsonParser.p();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return new a(str6, str5, str4, str3, str2, str, j);
    }

    private static ArrayList<a> ad(JsonParser jsonParser) throws IOException {
        ArrayList<a> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a == JsonToken.b) {
                arrayList.add(ac(jsonParser));
            } else {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private static com.twitter.model.topic.g ae(JsonParser jsonParser) throws IOException {
        List list = null;
        JsonToken a = jsonParser.a();
        List list2 = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (a != null && a != JsonToken.c) {
            String e = jsonParser.e();
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"players".equals(e)) {
                        if (!"secondary_players".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        list = ad(jsonParser);
                        break;
                    }
                    list2 = ad(jsonParser);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"sports_title".equals(e)) {
                        if (!"game_type".equals(e)) {
                            if (!"channel".equals(e)) {
                                if (!"tournament_hashtag".equals(e)) {
                                    break;
                                }
                                str = jsonParser.s();
                                break;
                            }
                            str2 = jsonParser.s();
                            break;
                        }
                        str5 = jsonParser.s();
                        break;
                    }
                    str6 = jsonParser.s();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"game_info".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                String e2 = jsonParser.e();
                                if (!"summary".equals(e2)) {
                                    if (!NotificationCompatApi21.CATEGORY_STATUS.equals(e2)) {
                                        break;
                                    }
                                    str3 = jsonParser.s();
                                    break;
                                }
                                str4 = jsonParser.s();
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return new com.twitter.model.topic.g(str6, str5, str4, str3, str2, list2, list, str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.twitter.model.topic.TwitterTopic b(com.fasterxml.jackson.core.JsonParser r24, java.util.HashMap<java.lang.String, com.twitter.model.core.cm> r25, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r26) throws java.io.IOException {
        /*
        r16 = -1;
        r4 = 0;
        r14 = 0;
        r11 = 0;
        r12 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r5 = 0;
        r6 = 0;
        r22 = 0;
        r3 = 0;
        r20 = 0;
        r18 = 0;
        r19 = 0;
        r2 = r24.a();
        r23 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r23;
    L_0x0021:
        if (r4 == 0) goto L_0x01c1;
    L_0x0023:
        r17 = com.fasterxml.jackson.core.JsonToken.c;
        r0 = r17;
        if (r4 == r0) goto L_0x01c1;
    L_0x0029:
        r17 = r24.e();
        r21 = com.twitter.library.api.au.a;
        r4 = r4.ordinal();
        r4 = r21[r4];
        switch(r4) {
            case 1: goto L_0x0189;
            case 2: goto L_0x0045;
            case 3: goto L_0x0038;
            case 4: goto L_0x00fd;
            case 5: goto L_0x01b1;
            case 6: goto L_0x00d7;
            default: goto L_0x0038;
        };
    L_0x0038:
        r4 = r16;
    L_0x003a:
        r16 = r24.a();
        r23 = r16;
        r16 = r4;
        r4 = r23;
        goto L_0x0021;
    L_0x0045:
        r4 = "seed_hashtag";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0057;
    L_0x0050:
        r8 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x0057:
        r4 = "image_url";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0069;
    L_0x0062:
        r10 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x0069:
        r4 = "title";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x007b;
    L_0x0074:
        r5 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x007b:
        r4 = "subtitle";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x008d;
    L_0x0086:
        r6 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x008d:
        r4 = "query";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x009f;
    L_0x0098:
        r7 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x009f:
        r4 = "reason";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00b1;
    L_0x00aa:
        r11 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x00b1:
        r4 = "view_url";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00c4;
    L_0x00bc:
        r9 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x00c4:
        r4 = "event_status";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0038;
    L_0x00cf:
        r22 = r24.s();
        r4 = r16;
        goto L_0x003a;
    L_0x00d7:
        r4 = "tweet_count";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x00ea;
    L_0x00e2:
        r12 = r24.j();
        r4 = r16;
        goto L_0x003a;
    L_0x00ea:
        r4 = "start_time";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0038;
    L_0x00f5:
        r14 = r24.j();
        r4 = r16;
        goto L_0x003a;
    L_0x00fd:
        r4 = "metadata";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x015c;
    L_0x0108:
        r4 = r24.a();
        r23 = r4;
        r4 = r16;
        r16 = r23;
    L_0x0112:
        if (r16 == 0) goto L_0x003a;
    L_0x0114:
        r17 = com.fasterxml.jackson.core.JsonToken.c;
        r0 = r16;
        r1 = r17;
        if (r0 == r1) goto L_0x003a;
    L_0x011c:
        r17 = com.twitter.library.api.au.a;
        r16 = r16.ordinal();
        r16 = r17[r16];
        switch(r16) {
            case 1: goto L_0x0158;
            case 2: goto L_0x012c;
            case 3: goto L_0x0127;
            case 4: goto L_0x0158;
            default: goto L_0x0127;
        };
    L_0x0127:
        r16 = r24.a();
        goto L_0x0112;
    L_0x012c:
        r16 = r24.e();
        r17 = "id";
        r0 = r17;
        r1 = r16;
        r17 = r0.equals(r1);
        if (r17 == 0) goto L_0x0142;
    L_0x013d:
        r3 = r24.s();
        goto L_0x0127;
    L_0x0142:
        r17 = "type";
        r0 = r17;
        r1 = r16;
        r16 = r0.equals(r1);
        if (r16 == 0) goto L_0x0127;
    L_0x014f:
        r4 = r24.s();
        r4 = com.twitter.model.topic.TwitterTopic.c(r4);
        goto L_0x0127;
    L_0x0158:
        r24.c();
        goto L_0x0127;
    L_0x015c:
        r4 = "sports_data";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x016f;
    L_0x0167:
        r20 = ae(r24);
        r4 = r16;
        goto L_0x003a;
    L_0x016f:
        r4 = "promoted_content";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0182;
    L_0x017a:
        r18 = e(r24);
        r4 = r16;
        goto L_0x003a;
    L_0x0182:
        r24.c();
        r4 = r16;
        goto L_0x003a;
    L_0x0189:
        r4 = "tweets";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x01aa;
    L_0x0194:
        if (r25 != 0) goto L_0x01a2;
    L_0x0196:
        r4 = com.twitter.model.core.cm.class;
        r0 = r24;
        r19 = com.twitter.model.json.common.g.d(r0, r4);
        r4 = r16;
        goto L_0x003a;
    L_0x01a2:
        r19 = a(r24, r25, r26);
        r4 = r16;
        goto L_0x003a;
    L_0x01aa:
        r24.c();
        r4 = r16;
        goto L_0x003a;
    L_0x01b1:
        r4 = "spiking";
        r0 = r17;
        r4 = r4.equals(r0);
        if (r4 == 0) goto L_0x0038;
    L_0x01bc:
        r2 = 1;
        r4 = r16;
        goto L_0x003a;
    L_0x01c1:
        r4 = 3;
        r0 = r16;
        if (r0 != r4) goto L_0x01f4;
    L_0x01c6:
        r4 = 1;
        r17 = r4;
    L_0x01c9:
        if (r3 != 0) goto L_0x01f8;
    L_0x01cb:
        r4 = 1;
    L_0x01cc:
        r4 = r4 & r17;
        if (r4 == 0) goto L_0x020d;
    L_0x01d0:
        r3 = com.twitter.model.topic.TwitterTopic.a(r7);
        r17 = r3;
    L_0x01d6:
        r3 = -1;
        r0 = r16;
        if (r0 == r3) goto L_0x01e7;
    L_0x01db:
        r3 = com.twitter.util.aj.a(r17);
        if (r3 != 0) goto L_0x01e7;
    L_0x01e1:
        r3 = com.twitter.util.aj.a(r7);
        if (r3 == 0) goto L_0x01fa;
    L_0x01e7:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Failed parsing event; missing required data";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r3 = 0;
    L_0x01f3:
        return r3;
    L_0x01f4:
        r4 = 0;
        r17 = r4;
        goto L_0x01c9;
    L_0x01f8:
        r4 = 0;
        goto L_0x01cc;
    L_0x01fa:
        r3 = new com.twitter.model.topic.TwitterTopic;
        r4 = new com.twitter.model.topic.l;
        r0 = r16;
        r1 = r17;
        r4.<init>(r0, r1, r2);
        r16 = 0;
        r21 = 0;
        r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r14, r16, r18, r19, r20, r21, r22);
        goto L_0x01f3;
    L_0x020d:
        r17 = r3;
        goto L_0x01d6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.b(com.fasterxml.jackson.core.JsonParser, java.util.HashMap, java.util.HashMap):com.twitter.model.topic.TwitterTopic");
    }

    public static cni e(JsonParser jsonParser) {
        cni cni = (cni) g.c(jsonParser, cni.class);
        return cni != null ? cni : cni.b;
    }

    public static ClientConfiguration f(JsonParser jsonParser) throws IOException {
        al alVar = null;
        JsonToken a = jsonParser.a();
        UrlConfiguration urlConfiguration = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    String e = jsonParser.e();
                    if (!"access".equals(e)) {
                        if (!"twitter".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        urlConfiguration = (UrlConfiguration) g.c(jsonParser, UrlConfiguration.class);
                        break;
                    }
                    alVar = at(jsonParser);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new ClientConfiguration(urlConfiguration, alVar);
    }

    private static int af(JsonParser jsonParser) throws IOException {
        int i = 0;
        if (jsonParser.d() == JsonToken.d) {
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.e) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        jsonParser.c();
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        String g = jsonParser.g();
                        if (!g.equals("following")) {
                            if (!g.equals("followed_by")) {
                                break;
                            }
                            i |= 2;
                            break;
                        }
                        i |= 1;
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        }
        return i;
    }

    private static TwitterUser ag(JsonParser jsonParser) throws IOException {
        cp cpVar = new cp();
        if (jsonParser.d() == JsonToken.b) {
            JsonToken a = jsonParser.a();
            Object obj = null;
            while (a != null && a != JsonToken.c) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        if (!"connections".equals(obj)) {
                            jsonParser.c();
                            break;
                        }
                        cpVar.i(af(jsonParser));
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if ("name".equals(obj)) {
                            cpVar.a(jsonParser.g());
                        }
                        if (!"screen_name".equals(obj)) {
                            break;
                        }
                        cpVar.f(jsonParser.g());
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        obj = jsonParser.g();
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        jsonParser.c();
                        break;
                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                        if (!"id".equals(obj)) {
                            break;
                        }
                        cpVar.a(jsonParser.j());
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        }
        return (TwitterUser) cpVar.q();
    }

    public static ArrayList<TwitterUser> g(JsonParser jsonParser) throws IOException {
        ArrayList<TwitterUser> arrayList = new ArrayList();
        if (jsonParser.d() == JsonToken.d) {
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.e) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        jsonParser.c();
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        arrayList.add(ag(jsonParser));
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        }
        return arrayList;
    }

    public static int h(JsonParser jsonParser) throws IOException {
        Object obj = null;
        int i = 0;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_AUTH /*3*/:
                    obj = jsonParser.g();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"relationship".equals(obj)) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_AUTH /*3*/:
                                obj = jsonParser.g();
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                if (!"source".equals(obj)) {
                                    jsonParser.c();
                                    break;
                                }
                                i = ah(jsonParser);
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
        return i;
    }

    private static int ah(JsonParser jsonParser) throws IOException {
        int i = 0;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    String e = jsonParser.e();
                    if (!"following".equals(e)) {
                        if (!"followed_by".equals(e)) {
                            if (!"blocking".equals(e)) {
                                if (!"can_dm".equals(e)) {
                                    if (!"notifications_enabled".equals(e)) {
                                        if (!"lifeline_following".equals(e)) {
                                            if (!"email_following".equals(e)) {
                                                if (!"want_retweets".equals(e)) {
                                                    if (!"can_media_tag".equals(e)) {
                                                        if (!"muting".equals(e)) {
                                                            if (!"following_requested".equals(e)) {
                                                                if (!"blocked_by".equals(e)) {
                                                                    break;
                                                                }
                                                                i = p.a(i, AccessibilityNodeInfoCompat.ACTION_PASTE);
                                                                break;
                                                            }
                                                            i = p.a(i, AccessibilityNodeInfoCompat.ACTION_COPY);
                                                            break;
                                                        }
                                                        i = p.a(i, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
                                                        break;
                                                    }
                                                    i = p.a(i, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
                                                    break;
                                                }
                                                i = p.a(i, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
                                                break;
                                            }
                                            i = p.a(i, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
                                            break;
                                        }
                                        i = p.a(i, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
                                        break;
                                    }
                                    i = p.a(i, 16);
                                    break;
                                }
                                i = p.a(i, 8);
                                break;
                            }
                            i = p.a(i, 4);
                            break;
                        }
                        i = p.a(i, 2);
                        break;
                    }
                    i = p.a(i, 1);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return i;
    }

    public static boolean i(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case mx.UserView_actionButtonPaddingRight /*5*/:
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    if (!"saved".equals(jsonParser.e())) {
                        break;
                    }
                    return jsonParser.m();
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return false;
    }

    public static String j(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!NotificationCompatApi21.CATEGORY_STATUS.equals(jsonParser.e())) {
                        break;
                    }
                    return jsonParser.g();
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return null;
    }

    public static String k(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        Object obj = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    obj = jsonParser.e();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"promotion_destination_url".equals(obj)) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        obj = jsonParser.e();
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"string_value".equals(obj)) {
                                    break;
                                }
                                return jsonParser.g();
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
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.twitter.library.api.geo.b l(com.fasterxml.jackson.core.JsonParser r9) throws java.io.IOException {
        /*
        r0 = 0;
        r4 = com.twitter.util.collection.n.d();
        r5 = com.twitter.util.collection.n.d();
        r1 = r9.a();
        r2 = r0;
        r3 = r0;
    L_0x000f:
        if (r1 == 0) goto L_0x00bc;
    L_0x0011:
        r6 = com.fasterxml.jackson.core.JsonToken.c;
        if (r1 == r6) goto L_0x00bc;
    L_0x0015:
        r6 = com.twitter.library.api.au.a;
        r7 = r1.ordinal();
        r6 = r6[r7];
        switch(r6) {
            case 1: goto L_0x002b;
            case 2: goto L_0x009f;
            case 3: goto L_0x0098;
            default: goto L_0x0020;
        };
    L_0x0020:
        r1 = r2;
        r2 = r3;
    L_0x0022:
        r3 = r9.a();
        r8 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r8;
        goto L_0x000f;
    L_0x002b:
        r6 = "places";
        r6 = r6.equals(r0);
        if (r6 == 0) goto L_0x0065;
    L_0x0034:
        if (r1 == 0) goto L_0x0020;
    L_0x0036:
        r6 = com.fasterxml.jackson.core.JsonToken.e;
        if (r1 == r6) goto L_0x0020;
    L_0x003a:
        r1 = r9.a();
        r6 = com.fasterxml.jackson.core.JsonToken.b;
        if (r1 != r6) goto L_0x0034;
    L_0x0042:
        r1 = r9.a();
        r6 = com.fasterxml.jackson.core.JsonToken.f;
        if (r1 != r6) goto L_0x0034;
    L_0x004a:
        r6 = "place";
        r7 = r9.g();
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0034;
    L_0x0057:
        r1 = r9.a();
        r6 = com.twitter.model.geo.TwitterPlace.class;
        r6 = com.twitter.model.json.common.g.c(r9, r6);
        r4.c(r6);
        goto L_0x0034;
    L_0x0065:
        r6 = "attributions";
        r6 = r6.equals(r0);
        if (r6 == 0) goto L_0x0092;
    L_0x006e:
        if (r1 == 0) goto L_0x0020;
    L_0x0070:
        r6 = com.fasterxml.jackson.core.JsonToken.e;
        if (r1 == r6) goto L_0x0020;
    L_0x0074:
        r1 = r9.a();
        r6 = com.fasterxml.jackson.core.JsonToken.b;
        if (r1 != r6) goto L_0x006e;
    L_0x007c:
        r1 = r9.a();
        r6 = com.fasterxml.jackson.core.JsonToken.f;
        if (r1 != r6) goto L_0x006e;
    L_0x0084:
        r6 = r9.g();
        r6 = com.twitter.library.api.geo.PlaceAttribution.a(r6);
        if (r6 == 0) goto L_0x006e;
    L_0x008e:
        r5.c(r6);
        goto L_0x006e;
    L_0x0092:
        r9.c();
        r1 = r2;
        r2 = r3;
        goto L_0x0022;
    L_0x0098:
        r0 = r9.g();
        r1 = r2;
        r2 = r3;
        goto L_0x0022;
    L_0x009f:
        r1 = "autotag_place_id";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x00ac;
    L_0x00a8:
        r3 = r9.g();
    L_0x00ac:
        r1 = "geo_search_request_id";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0020;
    L_0x00b5:
        r1 = r9.g();
        r2 = r3;
        goto L_0x0022;
    L_0x00bc:
        r6 = new com.twitter.library.api.geo.b;
        r0 = r4.q();
        r0 = (java.util.List) r0;
        r1 = r5.q();
        r1 = (java.util.List) r1;
        r6.<init>(r3, r0, r2, r1);
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.l(com.fasterxml.jackson.core.JsonParser):com.twitter.library.api.geo.b");
    }

    public static String a(String str) {
        if (str == null || !str.startsWith("@")) {
            return null;
        }
        String[] split = str.split("[^a-zA-Z0-9_]");
        if (split == null || split.length == 0) {
            return null;
        }
        return split[1];
    }

    public static ArrayList<TwitterSearchQuery> m(JsonParser jsonParser) throws IOException {
        ArrayList<TwitterSearchQuery> arrayList = new ArrayList();
        if (jsonParser != null) {
            JsonToken d = jsonParser.d();
            if (d == JsonToken.d) {
                while (d != null && d != JsonToken.e) {
                    if (d == JsonToken.b) {
                        arrayList.add(n(jsonParser));
                    }
                    d = jsonParser.a();
                }
            }
        }
        return arrayList;
    }

    public static TwitterSearchQuery n(JsonParser jsonParser) throws IOException {
        long j = 0;
        JsonToken a = jsonParser.a();
        String str = null;
        String str2 = null;
        long j2 = 0;
        while (a != null && a != JsonToken.c) {
            String e = jsonParser.e();
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"name".equals(e)) {
                        if (!"query".equals(e)) {
                            if (!"created_at".equals(e)) {
                                break;
                            }
                            j = m.a(al.b, jsonParser.g());
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    str2 = jsonParser.g();
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (!"id".equals(e)) {
                        break;
                    }
                    j2 = jsonParser.j();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new TwitterSearchQuery(str2, str, j, j2, null);
    }

    public static List<TwitterSearchQuery> o(JsonParser jsonParser) throws IOException {
        List arrayList = new ArrayList();
        JsonToken d = jsonParser.d();
        if (d == JsonToken.d) {
            String str = null;
            String str2 = null;
            while (d != null && d != JsonToken.e) {
                if (d == JsonToken.b) {
                    d = jsonParser.a();
                    List list = null;
                    while (d != null && d != JsonToken.c) {
                        switch (au.a[d.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                if (!"users".equals(jsonParser.e())) {
                                    jsonParser.c();
                                    break;
                                }
                                list = g.d(jsonParser, TwitterUser.class);
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                String e = jsonParser.e();
                                if (!"name".equals(e)) {
                                    if (!"slug".equals(e)) {
                                        break;
                                    }
                                    str = jsonParser.g();
                                    break;
                                }
                                str2 = jsonParser.g();
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            default:
                                break;
                        }
                        d = jsonParser.a();
                    }
                    if (!(str2 == null || str == null)) {
                        arrayList.add(new TwitterSearchQuery(str2, str, (long) str.hashCode(), list));
                    }
                }
                d = jsonParser.a();
            }
        }
        return arrayList;
    }

    public static Pair<String, List<TwitterUser>> p(JsonParser jsonParser) throws IOException {
        Object obj = null;
        JsonToken d = jsonParser.d();
        Object obj2 = null;
        Object obj3 = null;
        while (d != null && d != JsonToken.c) {
            switch (au.a[d.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if ("users".equals(obj)) {
                        obj3 = g.d(jsonParser, TwitterUser.class);
                        break;
                    }
                    while (d != null && d != JsonToken.e) {
                        d = jsonParser.a();
                    }
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    obj = jsonParser.g();
                    if (!"name".equals(obj)) {
                        break;
                    }
                    obj2 = jsonParser.b();
                    break;
                default:
                    break;
            }
            d = jsonParser.a();
        }
        return new Pair(obj2, obj3);
    }

    public static ArrayList<CategoryListItem> q(JsonParser jsonParser) throws IOException {
        String str = null;
        ArrayList<CategoryListItem> arrayList = new ArrayList();
        JsonToken d = jsonParser.d();
        if (d == JsonToken.d) {
            JsonToken jsonToken = d;
            String str2 = null;
            while (jsonToken != null && jsonToken != JsonToken.e) {
                if (jsonToken == JsonToken.b) {
                    jsonToken = jsonParser.a();
                    while (jsonToken != null && jsonToken != JsonToken.c) {
                        switch (au.a[jsonToken.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                String e = jsonParser.e();
                                if (!"name".equals(e)) {
                                    if (!"slug".equals(e)) {
                                        break;
                                    }
                                    str2 = jsonParser.g();
                                    break;
                                }
                                str = jsonParser.g();
                                break;
                            default:
                                break;
                        }
                        jsonToken = jsonParser.a();
                    }
                    if (!(str == null || str2 == null)) {
                        arrayList.add(new CategoryListItem(str, str2));
                    }
                }
                jsonToken = jsonParser.a();
            }
        }
        return arrayList;
    }

    public static ArrayList<Long> r(JsonParser jsonParser) throws IOException {
        ArrayList<Long> arrayList = new ArrayList();
        if (jsonParser != null) {
            Object obj = null;
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.e) {
                switch (au.a[a.ordinal()]) {
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        a = jsonParser.a();
                        while (a != null && a != JsonToken.c) {
                            switch (au.a[a.ordinal()]) {
                                case WireMessage.WIRE_CHAT /*1*/:
                                case ControlMessage.CONTROL_PRESENCE /*4*/:
                                    jsonParser.c();
                                    break;
                                case WireMessage.WIRE_AUTH /*3*/:
                                    obj = jsonParser.g();
                                    break;
                                case mx.UserView_actionButtonPaddingBottom /*6*/:
                                    if (!"id".equals(obj)) {
                                        break;
                                    }
                                    arrayList.add(Long.valueOf(jsonParser.j()));
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
        }
        return arrayList;
    }

    public static List<cfz> s(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken d2 = jsonParser.d();
        while (d2 != null && d2 != JsonToken.e) {
            if (d2 == JsonToken.b) {
                jsonParser.a();
                d.c(v(jsonParser));
            }
            d2 = jsonParser.a();
        }
        return (List) d.q();
    }

    public static List<cfz> t(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken d2 = jsonParser.d();
        while (d2 != null && d2 != JsonToken.c) {
            if (d2 == JsonToken.d) {
                String e = jsonParser.e();
                Object obj = -1;
                switch (e.hashCode()) {
                    case 278277193:
                        if (e.equals("activity_events")) {
                            obj = null;
                            break;
                        }
                        break;
                }
                switch (obj) {
                    case mx.View_android_theme /*0*/:
                        d.c(s(jsonParser));
                        break;
                    default:
                        break;
                }
            }
            d2 = jsonParser.a();
        }
        return (List) d.q();
    }

    public static s u(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                if ("prompt".equals(jsonParser.e())) {
                    return ai(jsonParser);
                }
                jsonParser.c();
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.timeline.s ai(com.fasterxml.jackson.core.JsonParser r37) throws java.io.IOException {
        /*
        r27 = "";
        r26 = "";
        r25 = "";
        r24 = "";
        r23 = "";
        r22 = "";
        r21 = "";
        r20 = "";
        r19 = "";
        r18 = "";
        r17 = "";
        r16 = "";
        r15 = "";
        r14 = "";
        r13 = 0;
        r12 = 0;
        r11 = 180; // 0xb4 float:2.52E-43 double:8.9E-322;
        r10 = 0;
        r7 = 0;
        r8 = 0;
        r6 = 0;
        r5 = "";
        r4 = "";
        r3 = "";
        r2 = r37.a();
    L_0x0040:
        if (r2 == 0) goto L_0x0529;
    L_0x0042:
        r28 = com.fasterxml.jackson.core.JsonToken.c;
        r0 = r28;
        if (r2 == r0) goto L_0x0529;
    L_0x0048:
        r28 = r37.e();
        r29 = com.twitter.library.api.au.a;
        r2 = r2.ordinal();
        r2 = r29[r2];
        switch(r2) {
            case 1: goto L_0x04fd;
            case 2: goto L_0x00ae;
            case 3: goto L_0x0057;
            case 4: goto L_0x0333;
            case 5: goto L_0x0057;
            case 6: goto L_0x02bd;
            default: goto L_0x0057;
        };
    L_0x0057:
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r34 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r34;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
    L_0x007e:
        r27 = r37.a();
        r34 = r27;
        r27 = r26;
        r26 = r25;
        r25 = r24;
        r24 = r23;
        r23 = r22;
        r22 = r21;
        r21 = r20;
        r20 = r19;
        r19 = r18;
        r18 = r17;
        r17 = r16;
        r16 = r15;
        r15 = r14;
        r14 = r13;
        r13 = r12;
        r12 = r11;
        r11 = r10;
        r10 = r9;
        r35 = r8;
        r8 = r6;
        r7 = r35;
        r6 = r5;
        r5 = r4;
        r4 = r3;
        r3 = r2;
        r2 = r34;
        goto L_0x0040;
    L_0x00ae:
        r2 = "text";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x00e8;
    L_0x00b9:
        r2 = r37.g();
        r34 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r2;
        r2 = r34;
        goto L_0x007e;
    L_0x00e8:
        r2 = "header";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0123;
    L_0x00f3:
        r2 = r37.g();
        r26 = r27;
        r34 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r2;
        r2 = r3;
        r3 = r34;
        goto L_0x007e;
    L_0x0123:
        r2 = "action_text";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x015e;
    L_0x012e:
        r2 = r37.g();
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r34;
        goto L_0x007e;
    L_0x015e:
        r2 = "action_url";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0199;
    L_0x0169:
        r2 = r37.g();
        r25 = r26;
        r26 = r27;
        r34 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r34;
        goto L_0x007e;
    L_0x0199:
        r2 = "trigger";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x01d1;
    L_0x01a4:
        r2 = r37.g();
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r8;
        r8 = r7;
        r9 = r10;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r34;
        goto L_0x007e;
    L_0x01d1:
        r2 = "icon";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x020c;
    L_0x01dc:
        r2 = r37.g();
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r7;
        r35 = r10;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r8;
        r8 = r34;
        r9 = r35;
        goto L_0x007e;
    L_0x020c:
        r2 = "format";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0247;
    L_0x0217:
        r2 = r37.g();
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r10;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r9 = r34;
        r8 = r7;
        r6 = r35;
        goto L_0x007e;
    L_0x0247:
        r2 = "background_image_url";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0282;
    L_0x0252:
        r2 = r37.g();
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r34;
        goto L_0x007e;
    L_0x0282:
        r2 = "template";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0057;
    L_0x028d:
        r2 = r37.g();
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r34;
        goto L_0x007e;
    L_0x02bd:
        r2 = "prompt_id";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x02f8;
    L_0x02c8:
        r2 = r37.i();
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r2;
        r6 = r35;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r34;
        goto L_0x007e;
    L_0x02f8:
        r2 = "persistence";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0057;
    L_0x0303:
        r2 = r37.i();
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r2;
        r2 = r34;
        goto L_0x007e;
    L_0x0333:
        r2 = "entities";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0371;
    L_0x033e:
        r2 = com.twitter.model.core.bg.class;
        r0 = r37;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.core.bg) r2;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r8;
        r8 = r7;
        r9 = r10;
        r10 = r11;
        r11 = r12;
        r12 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r34;
        goto L_0x007e;
    L_0x0371:
        r2 = "header_entities";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x03b2;
    L_0x037c:
        r2 = com.twitter.model.core.bg.class;
        r0 = r37;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.core.bg) r2;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r10;
        r10 = r11;
        r11 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r35 = r8;
        r9 = r34;
        r8 = r7;
        r6 = r35;
        goto L_0x007e;
    L_0x03b2:
        r2 = "data";
        r0 = r28;
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0057;
    L_0x03bd:
        r30 = aj(r37);
        r2 = "tweetId";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x03e3;
    L_0x03cc:
        r2 = "tweetId";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.Long) r2;
        r28 = r2.longValue();
        r32 = 0;
        r2 = (r28 > r32 ? 1 : (r28 == r32 ? 0 : -1));
        if (r2 <= 0) goto L_0x03e3;
    L_0x03e1:
        r8 = r28;
    L_0x03e3:
        r2 = "insertionIndex";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x03fd;
    L_0x03ee:
        r2 = "insertionIndex";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.Integer) r2;
        r7 = r2.intValue();
    L_0x03fd:
        r2 = "tooltipTarget";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x0415;
    L_0x0408:
        r2 = "tooltipTarget";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r18 = r2;
    L_0x0415:
        r2 = "tweetSelection";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x042d;
    L_0x0420:
        r2 = "tweetSelection";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r17 = r2;
    L_0x042d:
        r2 = "isAppGraphPrompt";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x0447;
    L_0x0438:
        r2 = "isAppGraphPrompt";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.Boolean) r2;
        r6 = r2.booleanValue();
    L_0x0447:
        r2 = "clientExperimentKey";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x045e;
    L_0x0452:
        r2 = "clientExperimentKey";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r5 = r2;
    L_0x045e:
        r2 = "clientExperimentBucket";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x0475;
    L_0x0469:
        r2 = "clientExperimentBucket";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r4 = r2;
    L_0x0475:
        r2 = "displayLocation";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x048c;
    L_0x0480:
        r2 = "displayLocation";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = r2;
    L_0x048c:
        r2 = "email";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x04a4;
    L_0x0497:
        r2 = "email";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r16 = r2;
    L_0x04a4:
        r2 = "corrected_email";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x04bb;
    L_0x04af:
        r2 = "corrected_email";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r15 = r2;
    L_0x04bb:
        r2 = "phone_number";
        r0 = r30;
        r2 = r0.containsKey(r2);
        if (r2 == 0) goto L_0x05ad;
    L_0x04c6:
        r2 = "phone_number";
        r0 = r30;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
    L_0x04d1:
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        r34 = r5;
        r5 = r6;
        r35 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r35;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r34;
        goto L_0x007e;
    L_0x04fd:
        r37.c();
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r34 = r8;
        r8 = r7;
        r9 = r10;
        r6 = r34;
        r10 = r11;
        r11 = r12;
        r12 = r13;
        r13 = r14;
        r14 = r15;
        r15 = r16;
        r16 = r17;
        r17 = r18;
        r18 = r19;
        r19 = r20;
        r20 = r21;
        r21 = r22;
        r22 = r23;
        r23 = r24;
        r24 = r25;
        r25 = r26;
        r26 = r27;
        goto L_0x007e;
    L_0x0529:
        r2 = new com.twitter.model.timeline.u;
        r2.<init>();
        r0 = r27;
        r2 = r2.a(r0);
        r0 = r26;
        r2 = r2.b(r0);
        r0 = r24;
        r2 = r2.c(r0);
        r0 = r25;
        r2 = r2.d(r0);
        r0 = r23;
        r2 = r2.e(r0);
        r0 = r22;
        r2 = r2.f(r0);
        r0 = r21;
        r2 = r2.p(r0);
        r0 = r19;
        r2 = r2.g(r0);
        r2 = r2.b(r11);
        r2 = r2.a(r10);
        r2 = r2.a(r13);
        r2 = r2.b(r12);
        r0 = r20;
        r2 = r2.h(r0);
        r2 = r2.a(r8);
        r2 = r2.c(r7);
        r0 = r18;
        r2 = r2.i(r0);
        r2 = r2.b(r6);
        r0 = r17;
        r2 = r2.j(r0);
        r2 = r2.k(r5);
        r2 = r2.l(r4);
        r2 = r2.m(r3);
        r0 = r16;
        r2 = r2.n(r0);
        r2 = r2.o(r15);
        r2 = r2.q(r14);
        r2 = r2.q();
        r2 = (com.twitter.model.timeline.s) r2;
        return r2;
    L_0x05ad:
        r2 = r14;
        goto L_0x04d1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.ai(com.fasterxml.jackson.core.JsonParser):com.twitter.model.timeline.s");
    }

    private static HashMap<String, Object> aj(JsonParser jsonParser) throws IOException {
        HashMap<String, Object> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"tooltip_tweet_id".equals(jsonParser.e())) {
                        if (!"tooltip_target".equals(jsonParser.e())) {
                            if (!"insertion_index".equals(jsonParser.e())) {
                                if (!"app_graph_optin".equals(jsonParser.e())) {
                                    if (!"tweet_selection".equals(jsonParser.e())) {
                                        if (!"client_experiment_key".equals(jsonParser.e())) {
                                            if (!"client_experiment_bucket".equals(jsonParser.e())) {
                                                if (!"display_location".equals(jsonParser.e())) {
                                                    if (!NotificationCompatApi21.CATEGORY_EMAIL.equals(jsonParser.e())) {
                                                        if (!"corrected_email".equals(jsonParser.e())) {
                                                            if (!"phone_number".equals(jsonParser.e())) {
                                                                break;
                                                            }
                                                            hashMap.put("phone_number", jsonParser.s());
                                                            break;
                                                        }
                                                        hashMap.put("corrected_email", jsonParser.s());
                                                        break;
                                                    }
                                                    hashMap.put(NotificationCompatApi21.CATEGORY_EMAIL, jsonParser.s());
                                                    break;
                                                }
                                                hashMap.put("displayLocation", jsonParser.s());
                                                break;
                                            }
                                            hashMap.put("clientExperimentBucket", jsonParser.s());
                                            break;
                                        }
                                        hashMap.put("clientExperimentKey", jsonParser.s());
                                        break;
                                    }
                                    hashMap.put("tweetSelection", jsonParser.s());
                                    break;
                                }
                                hashMap.put("isAppGraphPrompt", Boolean.valueOf(jsonParser.a(false)));
                                break;
                            }
                            hashMap.put("insertionIndex", Integer.valueOf(jsonParser.o()));
                            break;
                        }
                        hashMap.put("tooltipTarget", jsonParser.s());
                        break;
                    }
                    hashMap.put("tweetId", Long.valueOf(jsonParser.p()));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    public static cfz v(JsonParser jsonParser) throws IOException {
        cgc cgc = new cgc();
        JsonToken d = jsonParser.d();
        b bVar = b.a;
        while (d != null && d != JsonToken.c) {
            String e;
            switch (au.a[d.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    e = jsonParser.e();
                    if (!"sources".equals(e)) {
                        if (!"targets".equals(e)) {
                            if (!"target_objects".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            switch (bVar.e) {
                                case WireMessage.WIRE_CONTROL /*2*/:
                                    cgc.c(g.d(jsonParser, cm.class));
                                    break;
                                case WireMessage.WIRE_AUTH /*3*/:
                                    cgc.c(g.d(jsonParser, cg.class));
                                    break;
                                default:
                                    jsonParser.c();
                                    break;
                            }
                        }
                        switch (bVar.d) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                cgc.b(g.d(jsonParser, TwitterUser.class));
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                cgc.b(g.d(jsonParser, cm.class));
                                break;
                            default:
                                jsonParser.c();
                                break;
                        }
                    } else if (1 != bVar.c) {
                        jsonParser.c();
                        break;
                    } else {
                        cgc.a(g.d(jsonParser, TwitterUser.class));
                        break;
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    e = jsonParser.e();
                    if (!"action".equals(e) && !NotificationCompatApi21.CATEGORY_EVENT.equals(e)) {
                        if (!"created_at".equals(e)) {
                            if (!"max_position".equals(e)) {
                                if (!"min_position".equals(e)) {
                                    break;
                                }
                                cgc.c(Long.parseLong(jsonParser.g()));
                                break;
                            }
                            cgc.b(Long.parseLong(jsonParser.g()));
                            break;
                        }
                        cgc.a(m.a(al.b, jsonParser.g()));
                        break;
                    }
                    bVar = (b) a.a.get(jsonParser.g());
                    if (bVar != null) {
                        cgc.a(bVar.b);
                        cgc.c(bVar.c);
                        cgc.e(bVar.d);
                        cgc.g(bVar.e);
                        break;
                    }
                    return null;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    e = jsonParser.e();
                    if (!"sources_size".equals(e)) {
                        if (!"targets_size".equals(e)) {
                            if (!"target_objects_size".equals(e)) {
                                break;
                            }
                            cgc.f(jsonParser.i());
                            break;
                        }
                        cgc.d(jsonParser.i());
                        break;
                    }
                    cgc.b(jsonParser.i());
                    break;
                default:
                    break;
            }
            d = jsonParser.a();
        }
        return cfz.a((cga) cgc.r());
    }

    public static com.twitter.model.search.m w(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        String str = null;
        String str2 = null;
        int i = -1;
        ArrayList arrayList = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"summary_type".equals(jsonParser.e())) {
                        break;
                    }
                    i = com.twitter.model.search.m.a(jsonParser.g());
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    String e = jsonParser.e();
                    if (!"summary_query".equals(e)) {
                        if (!"title".equals(e)) {
                            if (!"tweets".equals(jsonParser.e())) {
                                jsonParser.c();
                                break;
                            }
                            arrayList = new ArrayList();
                            i = a(jsonParser, arrayList);
                            break;
                        }
                        str = ak(jsonParser);
                        break;
                    }
                    str2 = ak(jsonParser);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (i == -1) {
            return null;
        }
        if ((i == 0 || i == 1) && (str == null || str2 == null)) {
            return null;
        }
        return new com.twitter.model.search.m(i, str2, str, arrayList);
    }

    private static String ak(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"text".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return str;
    }

    private static int a(JsonParser jsonParser, ArrayList<cm> arrayList) throws IOException {
        JsonToken a = jsonParser.a();
        int i = -1;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    arrayList.addAll(g.d(jsonParser, cm.class));
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"context_type".equals(jsonParser.e())) {
                        break;
                    }
                    i = com.twitter.model.search.m.a(jsonParser.g());
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList.isEmpty() ? -1 : i;
    }

    private static int b(JsonParser jsonParser, ArrayList<j> arrayList) throws IOException {
        JsonToken a = jsonParser.a();
        int i = -1;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"suggestions".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    c(jsonParser, (ArrayList) arrayList);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"suggestion_type".equals(jsonParser.e())) {
                        break;
                    }
                    String g = jsonParser.g();
                    if (!"spelling".equals(g)) {
                        if (!"related".equals(g)) {
                            break;
                        }
                        i = 3;
                        break;
                    }
                    i = 2;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        return i;
    }

    private static List<cm> al(JsonParser jsonParser) throws IOException {
        List<cm> z = z(jsonParser);
        if (z.isEmpty()) {
            return null;
        }
        Iterator it = z.iterator();
        while (it.hasNext()) {
            cm cmVar = (cm) it.next();
            if (cmVar == null || !a(cmVar)) {
                it.remove();
            }
        }
        return z;
    }

    private static boolean a(cm cmVar) {
        return !cmVar.e.d.c();
    }

    public static List<TwitterUser> x(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    a = jsonParser.a();
                    TwitterUserMetadata twitterUserMetadata = null;
                    cp cpVar = null;
                    while (a != null && a != JsonToken.c) {
                        TwitterUserMetadata twitterUserMetadata2;
                        cp cpVar2;
                        TwitterUserMetadata twitterUserMetadata3;
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                jsonParser.c();
                                twitterUserMetadata2 = twitterUserMetadata;
                                cpVar2 = cpVar;
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                String e = jsonParser.e();
                                if (!"data".equals(e)) {
                                    if (!"metadata".equals(e)) {
                                        jsonParser.c();
                                        twitterUserMetadata2 = twitterUserMetadata;
                                        cpVar2 = cpVar;
                                        break;
                                    }
                                    twitterUserMetadata2 = y(jsonParser);
                                    cpVar2 = cpVar;
                                    break;
                                }
                                twitterUserMetadata3 = twitterUserMetadata;
                                cpVar2 = (cp) g.c(jsonParser, cp.class);
                                twitterUserMetadata2 = twitterUserMetadata3;
                                break;
                            default:
                                twitterUserMetadata2 = twitterUserMetadata;
                                cpVar2 = cpVar;
                                break;
                        }
                        twitterUserMetadata3 = twitterUserMetadata2;
                        a = jsonParser.a();
                        cpVar = cpVar2;
                        twitterUserMetadata = twitterUserMetadata3;
                    }
                    if (cpVar != null) {
                        if (twitterUserMetadata != null) {
                            cpVar.a(twitterUserMetadata);
                            if (twitterUserMetadata.a != null) {
                                cpVar.i(p.a(cpVar.g(), twitterUserMetadata.a.g));
                            }
                        }
                        d.c(cpVar.q());
                        break;
                    }
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return (List) d.q();
    }

    public static TwitterUserMetadata y(JsonParser jsonParser) throws IOException {
        String str;
        TwitterSocialProof twitterSocialProof;
        boolean z = false;
        JsonTwitterUserMetadata jsonTwitterUserMetadata = (JsonTwitterUserMetadata) g.c(jsonParser, JsonTwitterUserMetadata.class);
        if (jsonTwitterUserMetadata != null) {
            TwitterSocialProof twitterSocialProof2;
            z = "top".equals(jsonTwitterUserMetadata.b);
            str = jsonTwitterUserMetadata.a;
            if (jsonTwitterUserMetadata.c != null) {
                twitterSocialProof2 = (TwitterSocialProof) jsonTwitterUserMetadata.c.b();
            } else {
                twitterSocialProof2 = null;
            }
            twitterSocialProof = twitterSocialProof2;
        } else {
            str = null;
            twitterSocialProof = null;
        }
        return new TwitterUserMetadata(twitterSocialProof, str, null, z, null);
    }

    private static d am(JsonParser jsonParser) throws IOException {
        boolean z = false;
        JsonToken a = jsonParser.a();
        boolean z2 = false;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    String e = jsonParser.e();
                    if (!"follow".equals(e)) {
                        if (!"nearby".equals(e)) {
                            break;
                        }
                        z2 = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new d(z, z2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.library.api.search.i h(com.fasterxml.jackson.core.JsonParser r20, com.twitter.model.core.TwitterUser r21) throws java.io.IOException {
        /*
        r16 = 0;
        r4 = 0;
        r15 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r12 = 0;
        r10 = 0;
        r11 = 0;
        r17 = 0;
        r13 = new java.util.ArrayList;
        r13.<init>();
        r14 = 0;
        r2 = r20.e();
        r3 = b;
        r2 = r3.get(r2);
        r2 = (java.lang.Integer) r2;
        if (r2 == 0) goto L_0x004a;
    L_0x0021:
        r3 = r2.intValue();
        r2 = r20.a();
    L_0x0029:
        if (r2 == 0) goto L_0x021c;
    L_0x002b:
        r5 = com.fasterxml.jackson.core.JsonToken.c;
        if (r2 == r5) goto L_0x021c;
    L_0x002f:
        r5 = com.twitter.library.api.au.a;
        r2 = r2.ordinal();
        r2 = r5[r2];
        switch(r2) {
            case 1: goto L_0x01da;
            case 2: goto L_0x003a;
            case 3: goto L_0x003a;
            case 4: goto L_0x004f;
            default: goto L_0x003a;
        };
    L_0x003a:
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
    L_0x003f:
        r15 = r20.a();
        r16 = r12;
        r12 = r2;
        r2 = r15;
        r15 = r4;
        r4 = r5;
        goto L_0x0029;
    L_0x004a:
        r20.c();
        r2 = 0;
    L_0x004e:
        return r2;
    L_0x004f:
        r2 = r20.e();
        r5 = "metadata";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x0099;
    L_0x005c:
        switch(r3) {
            case 0: goto L_0x0068;
            case 1: goto L_0x0090;
            case 2: goto L_0x005f;
            case 3: goto L_0x005f;
            case 4: goto L_0x0068;
            case 5: goto L_0x005f;
            case 6: goto L_0x0068;
            case 7: goto L_0x0068;
            case 8: goto L_0x005f;
            case 9: goto L_0x005f;
            case 10: goto L_0x0068;
            default: goto L_0x005f;
        };
    L_0x005f:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x0068:
        r2 = com.twitter.model.search.p.class;
        r0 = r20;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.search.p) r2;
        if (r2 == 0) goto L_0x02dc;
    L_0x0074:
        r5 = "top";
        r0 = r2.e;
        r16 = r0;
        r0 = r16;
        r5 = r5.equals(r0);
        if (r5 == 0) goto L_0x02dc;
    L_0x0083:
        r5 = "popular";
        r2.e = r5;
        r5 = r4;
        r4 = r15;
        r19 = r12;
        r12 = r2;
        r2 = r19;
        goto L_0x003f;
    L_0x0090:
        r2 = y(r20);
        r5 = r4;
        r12 = r16;
        r4 = r15;
        goto L_0x003f;
    L_0x0099:
        r5 = "data";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x01ae;
    L_0x00a2:
        switch(r3) {
            case 0: goto L_0x00ae;
            case 1: goto L_0x0107;
            case 2: goto L_0x00a5;
            case 3: goto L_0x0118;
            case 4: goto L_0x00ae;
            case 5: goto L_0x00a5;
            case 6: goto L_0x00a5;
            case 7: goto L_0x017c;
            case 8: goto L_0x00a5;
            case 9: goto L_0x00a5;
            case 10: goto L_0x00a5;
            case 11: goto L_0x0187;
            case 12: goto L_0x016d;
            case 13: goto L_0x0187;
            default: goto L_0x00a5;
        };
    L_0x00a5:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x00ae:
        r2 = com.twitter.model.json.core.JsonTwitterStatus.class;
        r0 = r20;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.json.core.JsonTwitterStatus) r2;
        if (r2 == 0) goto L_0x003a;
    L_0x00ba:
        if (r16 == 0) goto L_0x00c0;
    L_0x00bc:
        r0 = r16;
        r2.E = r0;
    L_0x00c0:
        r2 = r2.a();
        r0 = r21;
        r2.a(r0);
        r2 = r2.r();
        r2 = (com.twitter.model.core.cm) r2;
        if (r2 == 0) goto L_0x00df;
    L_0x00d1:
        r4 = r2.I;
        if (r4 == 0) goto L_0x00df;
    L_0x00d5:
        r4 = 4;
        if (r3 != r4) goto L_0x00e6;
    L_0x00d8:
        r4 = r2.I;
        r5 = "news";
        r4.e = r5;
    L_0x00df:
        r4 = r15;
        r5 = r2;
        r2 = r12;
        r12 = r16;
        goto L_0x003f;
    L_0x00e6:
        r4 = r2.I;
        r4 = r4.d;
        if (r4 == 0) goto L_0x00df;
    L_0x00ec:
        r4 = 9;
        r5 = r2.I;
        r3 = new com.twitter.model.core.ck;
        r3.<init>();
        r18 = 23;
        r0 = r18;
        r3 = r3.a(r0);
        r3 = r3.q();
        r3 = (com.twitter.model.core.TwitterSocialProof) r3;
        r5.f = r3;
        r3 = r4;
        goto L_0x00df;
    L_0x0107:
        r2 = com.twitter.model.core.cp.class;
        r0 = r20;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.core.cp) r2;
        r5 = r4;
        r4 = r2;
        r2 = r12;
        r12 = r16;
        goto L_0x003f;
    L_0x0118:
        r18 = new java.util.ArrayList;
        r18.<init>();
        r0 = r20;
        r1 = r18;
        r5 = b(r0, r1);
        r2 = -1;
        if (r5 == r2) goto L_0x003a;
    L_0x0128:
        switch(r5) {
            case 2: goto L_0x015b;
            case 3: goto L_0x0133;
            default: goto L_0x012b;
        };
    L_0x012b:
        r3 = r5;
        r2 = r12;
        r5 = r4;
        r12 = r16;
        r4 = r15;
        goto L_0x003f;
    L_0x0133:
        r2 = r18.size();
        r8 = new java.lang.String[r2];
        r2 = 0;
        r18 = r18.iterator();
        r3 = r2;
    L_0x013f:
        r2 = r18.hasNext();
        if (r2 == 0) goto L_0x0153;
    L_0x0145:
        r2 = r18.next();
        r2 = (com.twitter.model.search.j) r2;
        r2 = r2.b;
        r8[r3] = r2;
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x013f;
    L_0x0153:
        r3 = r5;
        r2 = r12;
        r5 = r4;
        r12 = r16;
        r4 = r15;
        goto L_0x003f;
    L_0x015b:
        r2 = 0;
        r0 = r18;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.search.j) r2;
        r3 = r5;
        r7 = r2;
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x016d:
        r11 = w(r20);
        if (r11 == 0) goto L_0x003a;
    L_0x0173:
        r6 = r11.e;
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x017c:
        r6 = al(r20);
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x0187:
        r2 = 0;
        r5 = 0;
        r0 = r20;
        r2 = b(r0, r2, r5);
        if (r2 != 0) goto L_0x019f;
    L_0x0191:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null or empty event";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x019f:
        r13.add(r2);
        r2 = 13;
        if (r3 != r2) goto L_0x003a;
    L_0x01a6:
        r14 = 1;
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x01ae:
        r5 = "filter";
        r2 = r5.equals(r2);
        if (r2 == 0) goto L_0x01d0;
    L_0x01b7:
        r2 = 10;
        if (r3 != r2) goto L_0x01c6;
    L_0x01bb:
        r10 = am(r20);
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x01c6:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x01d0:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x01da:
        r2 = "data";
        r5 = r20.e();
        r2 = r2.equals(r5);
        if (r2 == 0) goto L_0x0212;
    L_0x01e7:
        r2 = 6;
        if (r3 != r2) goto L_0x01f5;
    L_0x01ea:
        r9 = x(r20);
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x01f5:
        r2 = 10;
        if (r3 != r2) goto L_0x0208;
    L_0x01f9:
        r2 = com.twitter.model.core.cm.class;
        r0 = r20;
        r6 = com.twitter.model.json.common.g.d(r0, r2);
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x0208:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x0212:
        r20.c();
        r2 = r12;
        r5 = r4;
        r4 = r15;
        r12 = r16;
        goto L_0x003f;
    L_0x021c:
        r5 = 0;
        switch(r3) {
            case 0: goto L_0x0229;
            case 1: goto L_0x0233;
            case 2: goto L_0x025b;
            case 3: goto L_0x026b;
            case 4: goto L_0x0229;
            case 5: goto L_0x0220;
            case 6: goto L_0x028e;
            case 7: goto L_0x029e;
            case 8: goto L_0x0220;
            case 9: goto L_0x0229;
            case 10: goto L_0x029e;
            case 11: goto L_0x0220;
            case 12: goto L_0x027e;
            default: goto L_0x0220;
        };
    L_0x0220:
        r12 = r17;
    L_0x0222:
        r2 = new com.twitter.library.api.search.i;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14);
        goto L_0x004e;
    L_0x0229:
        if (r4 != 0) goto L_0x022e;
    L_0x022b:
        r2 = 0;
        goto L_0x004e;
    L_0x022e:
        r12 = r4.f();
        goto L_0x0222;
    L_0x0233:
        if (r15 != 0) goto L_0x0238;
    L_0x0235:
        r2 = 0;
        goto L_0x004e;
    L_0x0238:
        if (r12 == 0) goto L_0x0250;
    L_0x023a:
        r15.a(r12);
        r2 = r12.a;
        if (r2 == 0) goto L_0x0250;
    L_0x0241:
        r2 = r15.g();
        r5 = r12.a;
        r5 = r5.g;
        r2 = com.twitter.model.core.p.a(r2, r5);
        r15.i(r2);
    L_0x0250:
        r2 = r15.r();
        r2 = (com.twitter.model.core.TwitterUser) r2;
        if (r2 != 0) goto L_0x02d7;
    L_0x0258:
        r2 = 0;
        goto L_0x004e;
    L_0x025b:
        if (r7 != 0) goto L_0x0220;
    L_0x025d:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null spelling suggestions.";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x026b:
        if (r8 == 0) goto L_0x0270;
    L_0x026d:
        r2 = r8.length;
        if (r2 != 0) goto L_0x0220;
    L_0x0270:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null or empty related.";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x027e:
        if (r11 != 0) goto L_0x0220;
    L_0x0280:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null or empty summary.";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x028e:
        if (r9 != 0) goto L_0x0220;
    L_0x0290:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null or empty user gallery.";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x029e:
        if (r6 == 0) goto L_0x02a6;
    L_0x02a0:
        r2 = r6.isEmpty();
        if (r2 == 0) goto L_0x02b4;
    L_0x02a6:
        r2 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r3 = "Search with null or empty tweet/media gallery.";
        r2.<init>(r3);
        defpackage.bbn.a(r2);
        r2 = 0;
        goto L_0x004e;
    L_0x02b4:
        r2 = 0;
        r2 = r6.get(r2);
        r2 = (com.twitter.model.core.cm) r2;
        if (r2 == 0) goto L_0x0220;
    L_0x02bd:
        r12 = r2.I;
        if (r12 == 0) goto L_0x0220;
    L_0x02c1:
        if (r16 == 0) goto L_0x0220;
    L_0x02c3:
        r12 = r2.I;
        r0 = r16;
        r15 = r0.g;
        r12.g = r15;
        r2 = r2.I;
        r0 = r16;
        r12 = r0.h;
        r2.h = r12;
        r12 = r17;
        goto L_0x0222;
    L_0x02d7:
        r5 = r2;
        r12 = r17;
        goto L_0x0222;
    L_0x02dc:
        r5 = r4;
        r4 = r15;
        r19 = r12;
        r12 = r2;
        r2 = r19;
        goto L_0x003f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.h(com.fasterxml.jackson.core.JsonParser, com.twitter.model.core.TwitterUser):com.twitter.library.api.search.i");
    }

    private static ArrayList<i> i(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        ArrayList<i> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                jsonParser.c();
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                i h = h(jsonParser, twitterUser);
                                if (h == null) {
                                    break;
                                }
                                arrayList.add(h);
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

    public static h a(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        int i = 0;
        String str = null;
        int i2 = -1;
        JsonToken a = jsonParser.a();
        boolean z = false;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ArrayList arrayList = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"modules".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    arrayList = i(jsonParser, twitterUser);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"metadata".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"cursor".equals(jsonParser.e())) {
                                    if (!"takeover_type".equals(jsonParser.e())) {
                                        if (!"can_subscribe".equals(jsonParser.e())) {
                                            if (!"event_id".equals(jsonParser.e())) {
                                                if (!"event_page_type".equals(jsonParser.e())) {
                                                    break;
                                                }
                                                str3 = jsonParser.g();
                                                break;
                                            }
                                            str2 = jsonParser.g();
                                            break;
                                        }
                                        z2 = "true".equals(jsonParser.g());
                                        break;
                                    }
                                    str4 = jsonParser.g();
                                    break;
                                }
                                str = jsonParser.g();
                                break;
                            case mx.UserView_actionButtonPaddingRight /*5*/:
                                if (!"has_events_response".equals(jsonParser.e())) {
                                    if (!"can_subscribe".equals(jsonParser.e())) {
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                }
                                z = true;
                                break;
                            case mx.UserView_actionButtonPaddingBottom /*6*/:
                                if (!"refresh_interval_in_sec".equals(jsonParser.e())) {
                                    break;
                                }
                                i2 = jsonParser.o();
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
        ArrayList arrayList2 = new ArrayList();
        if (arrayList == null) {
            throw new InvalidDataException("Search did not return results module");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            if (iVar.j) {
                i++;
            }
            if (iVar.l && iVar.k != null && iVar.k.size() > 0) {
                arrayList2.addAll(iVar.k);
            }
        }
        return new h(arrayList, str, i2, z, i, arrayList2, str4, str3, str2, z2);
    }

    private static void c(JsonParser jsonParser, ArrayList<j> arrayList) throws IOException {
        List arrayList2 = new ArrayList();
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a == JsonToken.b) {
                a = jsonParser.a();
                while (a != null && a != JsonToken.c) {
                    switch (au.a[a.ordinal()]) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            if (!"indices".equals(jsonParser.e())) {
                                break;
                            }
                            a = jsonParser.a();
                            while (a != null && a != JsonToken.e) {
                                int i;
                                int i2;
                                switch (au.a[a.ordinal()]) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                        i = -1;
                                        JsonToken jsonToken = a;
                                        i2 = -1;
                                        while (jsonToken != null && jsonToken != JsonToken.e) {
                                            if (jsonToken == JsonToken.i) {
                                                if (i == -1) {
                                                    i = jsonParser.i();
                                                } else {
                                                    i2 = jsonParser.i();
                                                }
                                            }
                                            jsonToken = jsonParser.a();
                                        }
                                        break;
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        jsonParser.c();
                                        i2 = -1;
                                        i = -1;
                                        break;
                                    default:
                                        i2 = -1;
                                        i = -1;
                                        break;
                                }
                                if (i > -1 && i < i2 && (str == null || i2 <= str.length())) {
                                    arrayList2.add(new int[]{i, i2});
                                }
                                a = jsonParser.a();
                            }
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                            if (!"query".equals(jsonParser.e())) {
                                break;
                            }
                            str = jsonParser.g();
                            break;
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                            jsonParser.c();
                            break;
                        default:
                            break;
                    }
                    a = jsonParser.a();
                }
                arrayList.add(new j(str, arrayList2));
            }
            a = jsonParser.a();
        }
    }

    public static ArrayList<cm> z(JsonParser jsonParser) throws IOException {
        ArrayList<cm> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"media_items".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.e) {
                        if (a == JsonToken.b) {
                            a = jsonParser.a();
                            while (a != null && a != JsonToken.c) {
                                if (a == JsonToken.b) {
                                    if (NotificationCompatApi21.CATEGORY_STATUS.equals(jsonParser.e())) {
                                        cm cmVar = (cm) g.c(jsonParser, cm.class);
                                        if (cmVar != null) {
                                            arrayList.add(cmVar);
                                        }
                                    } else {
                                        jsonParser.c();
                                    }
                                } else if (a == JsonToken.e) {
                                    jsonParser.c();
                                }
                                a = jsonParser.a();
                            }
                        } else if (a == JsonToken.d) {
                            jsonParser.c();
                        }
                        a = jsonParser.a();
                    }
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.twitter.model.core.TwitterUser A(com.fasterxml.jackson.core.JsonParser r9) throws java.io.IOException {
        /*
        r4 = 0;
        r2 = 0;
        r0 = r9.d();
        r3 = r2;
        r1 = r2;
        r5 = r2;
        r6 = r2;
    L_0x000a:
        if (r0 == 0) goto L_0x008d;
    L_0x000c:
        r7 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r7) goto L_0x008d;
    L_0x0010:
        r7 = com.twitter.library.api.au.a;
        r0 = r0.ordinal();
        r0 = r7[r0];
        switch(r0) {
            case 1: goto L_0x005e;
            case 2: goto L_0x0079;
            case 3: goto L_0x001b;
            case 4: goto L_0x0026;
            default: goto L_0x001b;
        };
    L_0x001b:
        r0 = r1;
        r1 = r6;
    L_0x001d:
        r6 = r9.a();
        r8 = r6;
        r6 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x000a;
    L_0x0026:
        r0 = "user";
        r7 = r9.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x003f;
    L_0x0033:
        r0 = com.twitter.model.core.TwitterUser.class;
        r0 = com.twitter.model.json.common.g.c(r9, r0);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x001d;
    L_0x003f:
        r0 = "welcome_flow_reason";
        r7 = r9.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x0058;
    L_0x004c:
        r0 = com.twitter.model.core.av.class;
        r0 = com.twitter.model.json.common.g.c(r9, r0);
        r0 = (com.twitter.model.core.av) r0;
        r5 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x001d;
    L_0x0058:
        r9.c();
        r0 = r1;
        r1 = r6;
        goto L_0x001d;
    L_0x005e:
        r0 = "connections";
        r7 = r9.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x0073;
    L_0x006b:
        r0 = com.twitter.model.core.TwitterUser.class;
        r0 = com.twitter.model.json.common.g.d(r9, r0);
        r1 = r6;
        goto L_0x001d;
    L_0x0073:
        r9.c();
        r0 = r1;
        r1 = r6;
        goto L_0x001d;
    L_0x0079:
        r0 = "token";
        r7 = r9.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x001b;
    L_0x0086:
        r3 = r9.g();
        r0 = r1;
        r1 = r6;
        goto L_0x001d;
    L_0x008d:
        if (r6 == 0) goto L_0x00c5;
    L_0x008f:
        if (r1 == 0) goto L_0x00c6;
    L_0x0091:
        r0 = r1.isEmpty();
        if (r0 != 0) goto L_0x00c6;
    L_0x0097:
        r0 = new com.twitter.model.core.ck;
        r0.<init>();
        r7 = 40;
        r7 = r0.a(r7);
        r0 = r1.get(r4);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        r0 = r0.d;
        r0 = r7.a(r0);
        r1 = r1.size();
        r1 = r1 + -1;
        r0 = r0.d(r1);
        r1 = r0.q();
        r1 = (com.twitter.model.core.TwitterSocialProof) r1;
        r0 = new com.twitter.model.search.TwitterUserMetadata;
        r0.<init>(r1, r2, r3, r4, r5);
        r6.R = r0;
    L_0x00c5:
        return r6;
    L_0x00c6:
        if (r3 == 0) goto L_0x00d1;
    L_0x00c8:
        r0 = new com.twitter.model.search.TwitterUserMetadata;
        r1 = r2;
        r0.<init>(r1, r2, r3, r4, r5);
        r6.R = r0;
        goto L_0x00c5;
    L_0x00d1:
        if (r5 == 0) goto L_0x00c5;
    L_0x00d3:
        r0 = new com.twitter.model.search.TwitterUserMetadata;
        r1 = r2;
        r3 = r2;
        r0.<init>(r1, r2, r3, r4, r5);
        r6.R = r0;
        goto L_0x00c5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.A(com.fasterxml.jackson.core.JsonParser):com.twitter.model.core.TwitterUser");
    }

    public static ArrayList<TwitterUser> B(JsonParser jsonParser) throws IOException {
        ArrayList<TwitterUser> arrayList = new ArrayList();
        JsonToken d = jsonParser.d();
        while (d != null && d != JsonToken.e) {
            if (d == JsonToken.b) {
                jsonParser.a();
                TwitterUser A = A(jsonParser);
                if (A != null) {
                    arrayList.add(A);
                }
            }
            d = jsonParser.a();
        }
        return arrayList;
    }

    public static f C(JsonParser jsonParser) throws IOException {
        boolean z = true;
        String str = null;
        if (jsonParser.d() == JsonToken.b) {
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.c) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        jsonParser.c();
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (!NotificationCompatApi21.CATEGORY_MESSAGE.equals(jsonParser.e())) {
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                        if (!"valid".equals(jsonParser.e())) {
                            break;
                        }
                        z = jsonParser.m();
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        }
        return new f(z, str);
    }

    public static String D(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"suggestion".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return str;
    }

    public static ArrayList<String> E(JsonParser jsonParser) throws IOException {
        ArrayList<String> arrayList = new ArrayList();
        JsonToken d = jsonParser.d();
        while (d != null && d != JsonToken.e) {
            if (d == JsonToken.b) {
                String D = D(jsonParser);
                if (D != null) {
                    arrayList.add(D);
                }
            }
            d = jsonParser.a();
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.twitter.library.api.ActivitySummary F(com.fasterxml.jackson.core.JsonParser r12) throws java.io.IOException {
        /*
        r6 = 0;
        r0 = r12.d();
        r1 = com.fasterxml.jackson.core.JsonToken.b;
        if (r0 != r1) goto L_0x0103;
    L_0x0009:
        r1 = r6;
        r2 = r6;
        r3 = r6;
        r4 = r6;
    L_0x000d:
        r5 = r12.a();
        r0 = com.twitter.library.api.au.a;
        r7 = r5.ordinal();
        r0 = r0[r7];
        switch(r0) {
            case 1: goto L_0x0057;
            case 2: goto L_0x002b;
            case 3: goto L_0x001c;
            case 4: goto L_0x00ce;
            default: goto L_0x001c;
        };
    L_0x001c:
        r0 = r1;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
    L_0x0021:
        r5 = com.fasterxml.jackson.core.JsonToken.c;
        if (r4 != r5) goto L_0x00fd;
    L_0x0025:
        r4 = new com.twitter.library.api.ActivitySummary;
        r4.<init>(r3, r2, r1, r0);
        return r4;
    L_0x002b:
        r0 = r12.e();
        r7 = "favoriters_count";
        r7 = r7.equals(r0);
        if (r7 == 0) goto L_0x0043;
    L_0x0038:
        r0 = r12.g();
        r4 = r5;
        r10 = r2;
        r2 = r3;
        r3 = r0;
        r0 = r1;
        r1 = r10;
        goto L_0x0021;
    L_0x0043:
        r7 = "retweeters_count";
        r0 = r7.equals(r0);
        if (r0 == 0) goto L_0x001c;
    L_0x004c:
        r0 = r12.g();
        r3 = r4;
        r4 = r5;
        r10 = r0;
        r0 = r1;
        r1 = r2;
        r2 = r10;
        goto L_0x0021;
    L_0x0057:
        r0 = r12.e();
        r7 = "favoriters";
        r7 = r7.equals(r0);
        if (r7 == 0) goto L_0x0090;
    L_0x0064:
        r0 = new java.util.ArrayList;
        r0.<init>();
        r2 = r5;
    L_0x006a:
        if (r2 == 0) goto L_0x0084;
    L_0x006c:
        r5 = com.fasterxml.jackson.core.JsonToken.e;
        if (r2 == r5) goto L_0x0084;
    L_0x0070:
        r5 = com.fasterxml.jackson.core.JsonToken.i;
        if (r2 != r5) goto L_0x007f;
    L_0x0074:
        r8 = r12.j();
        r2 = java.lang.Long.valueOf(r8);
        r0.add(r2);
    L_0x007f:
        r2 = r12.a();
        goto L_0x006a;
    L_0x0084:
        r0 = com.twitter.util.collection.CollectionUtils.e(r0);
        r10 = r1;
        r1 = r0;
        r0 = r10;
        r11 = r3;
        r3 = r4;
        r4 = r2;
        r2 = r11;
        goto L_0x0021;
    L_0x0090:
        r7 = "retweeters";
        r0 = r7.equals(r0);
        if (r0 == 0) goto L_0x00c4;
    L_0x0099:
        r0 = new java.util.ArrayList;
        r0.<init>();
        r1 = r5;
    L_0x009f:
        if (r1 == 0) goto L_0x00b9;
    L_0x00a1:
        r5 = com.fasterxml.jackson.core.JsonToken.e;
        if (r1 == r5) goto L_0x00b9;
    L_0x00a5:
        r5 = com.fasterxml.jackson.core.JsonToken.i;
        if (r1 != r5) goto L_0x00b4;
    L_0x00a9:
        r8 = r12.j();
        r1 = java.lang.Long.valueOf(r8);
        r0.add(r1);
    L_0x00b4:
        r1 = r12.a();
        goto L_0x009f;
    L_0x00b9:
        r0 = com.twitter.util.collection.CollectionUtils.e(r0);
        r10 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r1;
        r1 = r10;
        goto L_0x0021;
    L_0x00c4:
        r12.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x0021;
    L_0x00ce:
        r0 = r12.e();
        r7 = "ext";
        r0 = r7.equalsIgnoreCase(r0);
        if (r0 == 0) goto L_0x00f1;
    L_0x00db:
        r0 = com.twitter.model.stratostore.h.class;
        r0 = com.twitter.model.json.common.g.c(r12, r0);
        r0 = (com.twitter.model.stratostore.h) r0;
        if (r0 == 0) goto L_0x00fb;
    L_0x00e5:
        r7 = com.twitter.model.stratostore.j.class;
        r0 = r0.a(r7);
        r0 = (com.twitter.model.stratostore.j) r0;
    L_0x00ed:
        if (r0 == 0) goto L_0x00f1;
    L_0x00ef:
        r8 = r0.a;
    L_0x00f1:
        r12.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x0021;
    L_0x00fb:
        r0 = r6;
        goto L_0x00ed;
    L_0x00fd:
        r4 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        goto L_0x000d;
    L_0x0103:
        r0 = r6;
        r1 = r6;
        r2 = r6;
        r3 = r6;
        goto L_0x0025;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.F(com.fasterxml.jackson.core.JsonParser):com.twitter.library.api.ActivitySummary");
    }

    public static List<TwitterTypeAhead> G(JsonParser jsonParser) throws IOException {
        n d = n.d();
        JsonToken d2 = jsonParser.d();
        while (d2 != null && d2 != JsonToken.c) {
            if (d2 == JsonToken.d) {
                String e = jsonParser.e();
                if ("users".equals(e)) {
                    d.c(an(jsonParser));
                } else if ("topics".equals(e)) {
                    d.c(ap(jsonParser));
                } else {
                    jsonParser.c();
                }
            }
            d2 = jsonParser.a();
        }
        return (List) d.q();
    }

    public static TwitterTypeAheadGroup H(JsonParser jsonParser) throws IOException {
        List list = null;
        JsonToken a = jsonParser.a();
        List list2 = null;
        List list3 = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    String e = jsonParser.e();
                    if (!"users".equals(e)) {
                        if (!"topics".equals(e)) {
                            if (!"hashtags".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            list3 = aq(jsonParser);
                            break;
                        }
                        list = ap(jsonParser);
                        break;
                    }
                    list2 = an(jsonParser);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new TwitterTypeAheadGroup(list2, list, list3);
    }

    private static List<TwitterTypeAhead> an(JsonParser jsonParser) throws IOException {
        List<TwitterTypeAhead> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    TwitterTypeAhead ao = ao(jsonParser);
                    if (ao == null) {
                        break;
                    }
                    arrayList.add(ao);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.library.api.search.TwitterTypeAhead ao(com.fasterxml.jackson.core.JsonParser r12) throws java.io.IOException {
        /*
        r4 = 0;
        r11 = 1;
        r2 = 0;
        r10 = new com.twitter.model.core.cp;
        r10.<init>();
        r0 = r12.a();
        r8 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r7 = r2;
        r6 = r4;
        r9 = r4;
    L_0x0011:
        if (r0 == 0) goto L_0x015e;
    L_0x0013:
        r1 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r1) goto L_0x015e;
    L_0x0017:
        r1 = com.twitter.library.api.au.a;
        r0 = r0.ordinal();
        r0 = r1[r0];
        switch(r0) {
            case 1: goto L_0x0114;
            case 2: goto L_0x002c;
            case 3: goto L_0x0022;
            case 4: goto L_0x0130;
            case 5: goto L_0x007c;
            case 6: goto L_0x00da;
            case 7: goto L_0x00c8;
            default: goto L_0x0022;
        };
    L_0x0022:
        r0 = r8;
        r1 = r9;
    L_0x0024:
        r3 = r12.a();
        r8 = r0;
        r9 = r1;
        r0 = r3;
        goto L_0x0011;
    L_0x002c:
        r0 = r12.e();
        r1 = "name";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0043;
    L_0x0039:
        r0 = r12.g();
        r10.a(r0);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0043:
        r1 = "screen_name";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0056;
    L_0x004c:
        r0 = r12.g();
        r10.f(r0);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0056:
        r1 = "profile_image_url_https";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0069;
    L_0x005f:
        r0 = r12.g();
        r10.b(r0);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0069:
        r1 = "location";
        r0 = r1.equals(r0);
        if (r0 == 0) goto L_0x0022;
    L_0x0072:
        r0 = r12.g();
        r10.g(r0);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x007c:
        r0 = "verified";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x008f;
    L_0x0089:
        r10.c(r11);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x008f:
        r0 = "is_translator";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x00a2;
    L_0x009c:
        r10.d(r11);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x00a2:
        r0 = "is_lifeline_institution";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x00b6;
    L_0x00af:
        r10.e(r11);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x00b6:
        r0 = "is_dm_able";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0022;
    L_0x00c3:
        r0 = r8 | 8;
        r1 = r9;
        goto L_0x0024;
    L_0x00c8:
        r0 = "can_media_tag";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0022;
    L_0x00d5:
        r0 = r8 & -1025;
        r1 = r9;
        goto L_0x0024;
    L_0x00da:
        r0 = r12.e();
        r1 = "id";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x00f2;
    L_0x00e7:
        r0 = r12.j();
        r10.a(r0);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x00f2:
        r1 = "rounded_score";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0103;
    L_0x00fb:
        r0 = r12.i();
        r1 = r0;
        r0 = r8;
        goto L_0x0024;
    L_0x0103:
        r1 = "rounded_graph_weight";
        r0 = r1.equals(r0);
        if (r0 == 0) goto L_0x0022;
    L_0x010c:
        r6 = r12.i();
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0114:
        r0 = "tokens";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0129;
    L_0x0121:
        r7 = as(r12);
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0129:
        r12.c();
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x0130:
        r0 = "social_context";
        r1 = r12.e();
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0157;
    L_0x013d:
        r0 = com.twitter.model.json.search.JsonSearchSocialProof.class;
        r1 = com.twitter.model.json.common.g.a(r12, r0);
        r1 = (com.twitter.model.core.TwitterSocialProof) r1;
        if (r1 == 0) goto L_0x0175;
    L_0x0147:
        r0 = new com.twitter.model.search.TwitterUserMetadata;
        r3 = r2;
        r5 = r2;
        r0.<init>(r1, r2, r3, r4, r5);
        r10.a(r0);
        r0 = r1.g;
        r0 = r0 | r8;
    L_0x0154:
        r1 = r9;
        goto L_0x0024;
    L_0x0157:
        r12.c();
        r0 = r8;
        r1 = r9;
        goto L_0x0024;
    L_0x015e:
        if (r7 != 0) goto L_0x0161;
    L_0x0160:
        return r2;
    L_0x0161:
        r10.i(r8);
        r3 = new com.twitter.library.api.search.TwitterTypeAhead;
        r8 = r10.q();
        r8 = (com.twitter.model.core.TwitterUser) r8;
        r4 = r11;
        r5 = r9;
        r9 = r2;
        r10 = r2;
        r3.<init>(r4, r5, r6, r7, r8, r9, r10);
        r2 = r3;
        goto L_0x0160;
    L_0x0175:
        r0 = r8;
        goto L_0x0154;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.ao(com.fasterxml.jackson.core.JsonParser):com.twitter.library.api.search.TwitterTypeAhead");
    }

    private static List<TwitterTypeAhead> ap(JsonParser jsonParser) throws IOException {
        long b = m.b();
        List<TwitterTypeAhead> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    TwitterTypeAhead a2 = a(jsonParser, b);
                    if (a2 == null) {
                        break;
                    }
                    arrayList.add(a2);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.library.api.search.TwitterTypeAhead a(com.fasterxml.jackson.core.JsonParser r19, long r20) throws java.io.IOException {
        /*
        r2 = 0;
        r11 = 0;
        r9 = 0;
        r12 = 0;
        r10 = 0;
        r1 = 0;
        r0 = r19.a();
        r17 = r0;
        r0 = r1;
        r1 = r17;
    L_0x000f:
        if (r1 == 0) goto L_0x0098;
    L_0x0011:
        r3 = com.fasterxml.jackson.core.JsonToken.c;
        if (r1 == r3) goto L_0x0098;
    L_0x0015:
        r3 = com.twitter.library.api.au.a;
        r1 = r1.ordinal();
        r1 = r3[r1];
        switch(r1) {
            case 1: goto L_0x007b;
            case 2: goto L_0x0028;
            case 3: goto L_0x0020;
            case 4: goto L_0x0093;
            case 5: goto L_0x006b;
            case 6: goto L_0x0059;
            default: goto L_0x0020;
        };
    L_0x0020:
        r1 = r12;
    L_0x0021:
        r3 = r19.a();
        r12 = r1;
        r1 = r3;
        goto L_0x000f;
    L_0x0028:
        r1 = r19.e();
        r3 = "topic";
        r3 = r3.equals(r1);
        if (r3 == 0) goto L_0x003b;
    L_0x0035:
        r2 = r19.g();
        r1 = r12;
        goto L_0x0021;
    L_0x003b:
        r3 = "filter";
        r3 = r3.equals(r1);
        if (r3 == 0) goto L_0x004a;
    L_0x0044:
        r11 = r19.g();
        r1 = r12;
        goto L_0x0021;
    L_0x004a:
        r3 = "location";
        r1 = r3.equals(r1);
        if (r1 == 0) goto L_0x0020;
    L_0x0053:
        r9 = r19.g();
        r1 = r12;
        goto L_0x0021;
    L_0x0059:
        r1 = "rounded_score";
        r3 = r19.e();
        r1 = r1.equals(r3);
        if (r1 == 0) goto L_0x0020;
    L_0x0066:
        r1 = r19.i();
        goto L_0x0021;
    L_0x006b:
        r1 = r19.e();
        r3 = "follow";
        r1 = r3.equals(r1);
        if (r1 == 0) goto L_0x0020;
    L_0x0078:
        r10 = 1;
        r1 = r12;
        goto L_0x0021;
    L_0x007b:
        r1 = "tokens";
        r3 = r19.e();
        r1 = r1.equals(r3);
        if (r1 == 0) goto L_0x008e;
    L_0x0088:
        r0 = as(r19);
        r1 = r12;
        goto L_0x0021;
    L_0x008e:
        r19.c();
        r1 = r12;
        goto L_0x0021;
    L_0x0093:
        r19.c();
        r1 = r12;
        goto L_0x0021;
    L_0x0098:
        if (r2 == 0) goto L_0x009c;
    L_0x009a:
        if (r0 != 0) goto L_0x009e;
    L_0x009c:
        r0 = 0;
    L_0x009d:
        return r0;
    L_0x009e:
        r13 = new com.twitter.library.api.search.TwitterTypeAhead;
        r14 = 3;
        r15 = 0;
        r16 = 0;
        r1 = new com.twitter.library.api.search.TwitterSearchQuery;
        r6 = 0;
        r8 = 0;
        r3 = r2;
        r4 = r20;
        r1.<init>(r2, r3, r4, r6, r8, r9, r10, r11);
        r9 = 0;
        r2 = r13;
        r3 = r14;
        r4 = r12;
        r5 = r15;
        r6 = r0;
        r7 = r16;
        r8 = r1;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9);
        r0 = r13;
        goto L_0x009d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.a(com.fasterxml.jackson.core.JsonParser, long):com.twitter.library.api.search.TwitterTypeAhead");
    }

    private static ArrayList<TwitterTypeAhead> aq(JsonParser jsonParser) throws IOException {
        ArrayList<TwitterTypeAhead> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    TwitterTypeAhead ar = ar(jsonParser);
                    if (ar == null) {
                        break;
                    }
                    arrayList.add(ar);
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private static TwitterTypeAhead ar(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        int i = 0;
        String str = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"hashtag".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (!"rounded_score".equals(jsonParser.e())) {
                        break;
                    }
                    i = jsonParser.i();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (str == null) {
            return null;
        }
        return new TwitterTypeAhead(2, i, 0, null, null, null, str);
    }

    private static ArrayList<String> as(JsonParser jsonParser) throws IOException {
        ArrayList<String> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a == JsonToken.b) {
                a = jsonParser.a();
                while (a != null && a != JsonToken.c) {
                    if (a == JsonToken.h && "token".equals(jsonParser.e())) {
                        arrayList.add(jsonParser.g());
                    }
                    a = jsonParser.a();
                }
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    public static aq<Long> I(JsonParser jsonParser) throws IOException {
        List arrayList = new ArrayList();
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"ids".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    JsonToken a2 = jsonParser.a();
                    while (true) {
                        int i;
                        if (a2 != null) {
                            i = 1;
                        } else {
                            i = 0;
                        }
                        if ((i & (a2 != JsonToken.e ? 1 : 0)) == 0) {
                            break;
                        }
                        if (a2 == JsonToken.i) {
                            arrayList.add(Long.valueOf(jsonParser.j()));
                        }
                        a2 = jsonParser.a();
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"next_cursor_str".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new aq(str, arrayList);
    }

    public static ak a(cd cdVar) throws IOException {
        Iterator it = cdVar.iterator();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (it.hasNext()) {
            ca caVar = (ca) it.next();
            String str6 = caVar.c;
            if (str6 != null && str6.startsWith("The user failed validation: ")) {
                str6 = str6.substring("The user failed validation: ".length());
            }
            if ("name".equals(caVar.e) && str5 == null) {
                str5 = str6;
            } else if ("screen_name".equals(caVar.e) && str2 == null) {
                str2 = str6;
            } else if ("password".equals(caVar.e) && str == null) {
                str = str6;
            } else if (NotificationCompatApi21.CATEGORY_EMAIL.equals(caVar.e) && str4 == null) {
                str4 = str6;
            } else if ("devices".equals(caVar.e) && str3 == null) {
                str3 = str6;
            }
        }
        return new ak(str5, str4, str3, str2, str, null, null);
    }

    public static ak J(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    String e = jsonParser.e();
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.e) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"fullname".equals(e) || r1 != null) {
                                    if (!"screen_name".equals(e) || r4 != null) {
                                        if (!"password".equals(e) || r5 != null) {
                                            if (!NotificationCompatApi21.CATEGORY_EMAIL.equals(e) || r2 != null) {
                                                if ("phone_number".equals(e) && r3 == null) {
                                                    str5 = cvb.d.b(jsonParser.g()).a;
                                                    break;
                                                }
                                            }
                                            str6 = cvb.d.b(jsonParser.g()).a;
                                            break;
                                        }
                                        str3 = cvb.d.b(jsonParser.g()).a;
                                        break;
                                    }
                                    str4 = cvb.d.b(jsonParser.g()).a;
                                    break;
                                }
                                str7 = cvb.d.b(jsonParser.g()).a;
                                break;
                                break;
                            default:
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    String e2 = jsonParser.e();
                    if (!"captcha_token".equals(e2)) {
                        if (!"captcha_image_url".equals(e2)) {
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    str2 = jsonParser.g();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new ak(str7, str6, str5, str4, str3, str2, str);
    }

    private static al at(JsonParser jsonParser) throws IOException {
        an anVar = new an();
        JsonToken a = jsonParser.a();
        String str = null;
        while (a != null && a != JsonToken.c) {
            String e;
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    e = jsonParser.e();
                    if (!"name".equals(e)) {
                        if (!"key".equals(e)) {
                            if (!"banner".equals(e)) {
                                break;
                            }
                            anVar.b(jsonParser.g());
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    anVar.a(jsonParser.g());
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    e = jsonParser.e();
                    if (!"host_map".equals(e)) {
                        if (!"display_flags".equals(e)) {
                            if (!"interstitial".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            a = jsonParser.a();
                            while (a != null && a != JsonToken.c) {
                                switch (au.a[a.ordinal()]) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        jsonParser.c();
                                        break;
                                    case WireMessage.WIRE_CONTROL /*2*/:
                                        if (!"text".equals(jsonParser.e())) {
                                            break;
                                        }
                                        anVar.c(jsonParser.g());
                                        break;
                                    default:
                                        break;
                                }
                                a = jsonParser.a();
                            }
                        } else {
                            a = jsonParser.a();
                            while (a != null && a != JsonToken.c) {
                                switch (au.a[a.ordinal()]) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        jsonParser.c();
                                        break;
                                    case mx.UserView_actionButtonPaddingRight /*5*/:
                                        e = jsonParser.e();
                                        if (!"inline_media_interstitial".equals(e)) {
                                            if (!"external_links_interstitial".equals(e)) {
                                                if (!"footer_text".equals(e)) {
                                                    if (!"banner_message".equals(e)) {
                                                        break;
                                                    }
                                                    anVar.e(true);
                                                    break;
                                                }
                                                anVar.d(true);
                                                break;
                                            }
                                            anVar.c(true);
                                            break;
                                        }
                                        anVar.b(true);
                                        break;
                                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                                        if (!"zero_rate_videos".equals(jsonParser.e())) {
                                            break;
                                        }
                                        anVar.f(false);
                                        break;
                                    default:
                                        break;
                                }
                                a = jsonParser.a();
                            }
                        }
                    } else {
                        anVar.a(au(jsonParser));
                        break;
                    }
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    if (!"zero_rate".equals(jsonParser.e())) {
                        break;
                    }
                    anVar.a(true);
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (!"expire_seconds".equals(jsonParser.e())) {
                        break;
                    }
                    anVar.a(jsonParser.j());
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return str != null ? anVar.d(str) : null;
    }

    private static HashMap<String, String> au(JsonParser jsonParser) throws IOException {
        HashMap<String, String> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    String e = jsonParser.e();
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.c) {
                        switch (au.a[a.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"host".equals(jsonParser.e())) {
                                    break;
                                }
                                hashMap.put(e, jsonParser.g());
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
        return hashMap;
    }

    public static ArrayList<TwitterLocation> K(JsonParser jsonParser) throws IOException {
        ArrayList<TwitterLocation> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a == JsonToken.b) {
                a = jsonParser.a();
                String str = null;
                String str2 = null;
                long j = 0;
                String str3 = null;
                while (a != null && a != JsonToken.c) {
                    switch (au.a[a.ordinal()]) {
                        case WireMessage.WIRE_CHAT /*1*/:
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                            jsonParser.c();
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                            String e = jsonParser.e();
                            if (!"name".equals(e)) {
                                if (!"country".equals(e)) {
                                    if (!"countryCode".equals(e)) {
                                        break;
                                    }
                                    str = jsonParser.g();
                                    break;
                                }
                                str2 = jsonParser.g();
                                break;
                            }
                            str3 = jsonParser.g();
                            break;
                        case mx.UserView_actionButtonPaddingBottom /*6*/:
                            if (!"woeid".equals(jsonParser.e())) {
                                break;
                            }
                            j = jsonParser.j();
                            break;
                        default:
                            break;
                    }
                    a = jsonParser.a();
                }
                if (!(str3 == null || j == 0)) {
                    arrayList.add(new TwitterLocation(str3, j, str2, str));
                }
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    public static ai b(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        return new ai(j(jsonParser, twitterUser));
    }

    private static ag j(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        n d = n.d();
        n d2 = n.d();
        HashMap hashMap = new HashMap();
        Map map = null;
        HashMap hashMap2 = null;
        HashMap hashMap3 = null;
        bk bkVar = null;
        ag agVar = null;
        cho cho = null;
        JsonAlert jsonAlert = null;
        String str = BuildConfig.VERSION_NAME;
        boolean z = false;
        Map hashMap4 = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            Map map2;
            cho cho2;
            boolean z2;
            ag agVar2;
            HashMap hashMap5;
            String str2;
            bk bkVar2;
            JsonAlert jsonAlert2;
            HashMap hashMap6;
            JsonAlert jsonAlert3;
            cho cho3;
            HashMap hashMap7;
            if (a == JsonToken.b) {
                String e = jsonParser.e();
                if ("twitter_objects".equals(e)) {
                    cho cho4 = cho;
                    JsonToken a2 = jsonParser.a();
                    while (a2 != null && a2 != JsonToken.c) {
                        if (a2 == JsonToken.b) {
                            String e2 = jsonParser.e();
                            if ("tweets".equals(e2)) {
                                hashMap3 = g(jsonParser, twitterUser);
                            } else if ("users".equals(e2)) {
                                hashMap2 = N(jsonParser);
                            } else if ("event_summaries".equals(e2)) {
                                hashMap.putAll(a(hashMap3, hashMap2, jsonParser));
                            } else if ("custom_timelines".equals(e2)) {
                                hashMap.putAll(ax(jsonParser));
                            } else if ("moments".equals(e2)) {
                                map = com.twitter.model.json.common.j.a(g.e(jsonParser, ab.class));
                            } else if ("community".equals(e2)) {
                                JsonCommunity jsonCommunity = (JsonCommunity) g.c(jsonParser, JsonCommunity.class);
                                cho4 = jsonCommunity == null ? null : (cho) jsonCommunity.b();
                            } else if ("events".equals(e2)) {
                                hashMap4.putAll(g.e(jsonParser, cjl.class));
                            } else {
                                jsonParser.c();
                            }
                        } else if (a2 == JsonToken.d) {
                            jsonParser.c();
                        }
                        a2 = jsonParser.a();
                    }
                    map2 = map;
                    cho2 = cho4;
                    z2 = z;
                    agVar2 = agVar;
                    hashMap5 = hashMap3;
                    str2 = str;
                    bkVar2 = bkVar;
                    HashMap hashMap8 = hashMap2;
                    jsonAlert2 = jsonAlert;
                    hashMap6 = hashMap8;
                } else if ("response".equals(e)) {
                    a = jsonParser.a();
                    bk bkVar3 = bkVar;
                    ag agVar3 = agVar;
                    String str3 = str;
                    boolean z3 = z;
                    while (a != null && a != JsonToken.c) {
                        if (a.f()) {
                            if ("start_at_top".equals(jsonParser.e())) {
                                z3 = jsonParser.m();
                            }
                        } else if (a == JsonToken.d) {
                            if ("notifications".equals(jsonParser.e())) {
                                List d3 = g.d(jsonParser, bk.class);
                                z2 = d3.isEmpty() || d3.size() == 1;
                                com.twitter.util.j.b(z2);
                                bkVar3 = (bk) CollectionUtils.b(d3);
                            } else if ("timeline".equals(jsonParser.e())) {
                                d.c(a(jsonParser, hashMap3, hashMap2, hashMap, map, false));
                            } else if ("ads".equals(jsonParser.e())) {
                                d2.c(c(jsonParser, hashMap3, hashMap2));
                            } else {
                                jsonParser.c();
                            }
                        } else if (a == JsonToken.b) {
                            if ("cursor".equals(jsonParser.e())) {
                                agVar3 = (ag) g.c(jsonParser, ag.class);
                            } else if (NotificationCompatApi21.CATEGORY_EVENT.equals(jsonParser.e())) {
                                str3 = av(jsonParser);
                            } else {
                                jsonParser.c();
                            }
                        }
                        a = jsonParser.a();
                    }
                    z2 = z3;
                    agVar2 = agVar3;
                    bkVar2 = bkVar3;
                    cho3 = cho;
                    map2 = map;
                    cho2 = cho3;
                    jsonAlert3 = jsonAlert;
                    hashMap6 = hashMap2;
                    jsonAlert2 = jsonAlert3;
                    HashMap hashMap9 = hashMap3;
                    str2 = str3;
                    hashMap5 = hashMap9;
                } else if ("alert".equals(e)) {
                    hashMap6 = hashMap2;
                    jsonAlert2 = (JsonAlert) g.c(jsonParser, JsonAlert.class);
                    z2 = z;
                    agVar2 = agVar;
                    hashMap5 = hashMap3;
                    str2 = str;
                    bkVar2 = bkVar;
                    cho3 = cho;
                    map2 = map;
                    cho2 = cho3;
                } else {
                    jsonParser.c();
                    z2 = z;
                    agVar2 = agVar;
                    hashMap5 = hashMap3;
                    str2 = str;
                    bkVar2 = bkVar;
                    cho3 = cho;
                    map2 = map;
                    cho2 = cho3;
                    hashMap7 = hashMap2;
                    jsonAlert2 = jsonAlert;
                    hashMap6 = hashMap7;
                }
            } else {
                if (a == JsonToken.d) {
                    jsonParser.c();
                }
                z2 = z;
                agVar2 = agVar;
                hashMap5 = hashMap3;
                str2 = str;
                bkVar2 = bkVar;
                cho3 = cho;
                map2 = map;
                cho2 = cho3;
                hashMap7 = hashMap2;
                jsonAlert2 = jsonAlert;
                hashMap6 = hashMap7;
            }
            bkVar = bkVar2;
            str = str2;
            hashMap3 = hashMap5;
            agVar = agVar2;
            z = z2;
            a = jsonParser.a();
            jsonAlert3 = jsonAlert2;
            hashMap2 = hashMap6;
            jsonAlert = jsonAlert3;
            cho cho5 = cho2;
            map = map2;
            cho = cho5;
        }
        return (ag) new ah().a((List) d.q()).a(agVar).b((List) d2.q()).a(cho).a(jsonAlert == null ? null : (cgd) jsonAlert.a().a(hashMap2).q()).a(bkVar).a((cjl) hashMap4.get(str)).a(z).q();
    }

    private static String av(JsonParser jsonParser) {
        JsonLiveVideoEvent jsonLiveVideoEvent = (JsonLiveVideoEvent) g.c(jsonParser, JsonLiveVideoEvent.class);
        return jsonLiveVideoEvent == null ? BuildConfig.VERSION_NAME : String.valueOf(jsonLiveVideoEvent.a);
    }

    public static bfx c(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        return new bfx(j(jsonParser, twitterUser));
    }

    public static blw d(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        return new blw(j(jsonParser, twitterUser));
    }

    public static bff e(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        return new bff(j(jsonParser, twitterUser));
    }

    public static av L(JsonParser jsonParser) throws IOException {
        ai aiVar = new ai();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                while (a != null && a != JsonToken.c) {
                    if ("price".equals(jsonParser.e())) {
                        jsonParser.a();
                        if ("amount".equals(jsonParser.e())) {
                            jsonParser.a();
                            aiVar.a(jsonParser.l());
                        }
                    }
                    a = jsonParser.a();
                }
            } else if (a == JsonToken.h) {
                r0 = jsonParser.e();
                if ("media_search_string".equals(r0)) {
                    aiVar.f(jsonParser.g());
                } else if ("description".equals(r0)) {
                    aiVar.c(jsonParser.g());
                } else if ("search_string".equals(r0)) {
                    aiVar.e(jsonParser.g());
                } else if ("destination_url".equals(r0)) {
                    aiVar.g(jsonParser.g());
                } else if ("title".equals(r0)) {
                    aiVar.b(jsonParser.g());
                } else if ("card_url".equals(r0)) {
                    aiVar.h(jsonParser.g());
                }
            } else if (a == JsonToken.i) {
                if ("id".equals(jsonParser.e())) {
                    r0 = jsonParser.h();
                    aiVar.a(r0 != null ? r0.toString() : "0");
                }
            } else if (a == JsonToken.d) {
                String e = jsonParser.e();
                if ("images".equals(e)) {
                    aiVar.a(a(jsonParser, a));
                } else if ("related_tweet_ids".equals(e)) {
                    List arrayList = new ArrayList();
                    while (a != null && a != JsonToken.e) {
                        a = jsonParser.a();
                        if (a == JsonToken.i) {
                            arrayList.add(Long.valueOf(jsonParser.j()));
                        }
                    }
                    aiVar.b(arrayList);
                } else if ("related_pages".equals(e)) {
                    List arrayList2 = new ArrayList();
                    while (a != null && a != JsonToken.e) {
                        if (a == JsonToken.b) {
                            ai aiVar2 = new ai();
                            while (a != null && a != JsonToken.c) {
                                JsonToken a2 = jsonParser.a();
                                if (a2 == JsonToken.d) {
                                    if ("images".equals(jsonParser.e())) {
                                        aiVar2.a(a(jsonParser, a2));
                                        a = a2;
                                    }
                                } else if (a2 == JsonToken.h) {
                                    r0 = jsonParser.e();
                                    if ("description".equals(r0)) {
                                        aiVar2.c(jsonParser.g());
                                        a = a2;
                                    } else if ("title".equals(r0)) {
                                        aiVar2.b(jsonParser.g());
                                        a = a2;
                                    }
                                } else if (a2 == JsonToken.i) {
                                    if ("id".equals(jsonParser.e())) {
                                        r0 = jsonParser.h();
                                        aiVar2.a(r0 != null ? r0.toString() : "0");
                                        a = a2;
                                    }
                                }
                                a = a2;
                            }
                            arrayList2.add(aiVar2);
                        }
                        a = jsonParser.a();
                    }
                    aiVar.c(arrayList2);
                } else {
                    jsonParser.c();
                }
            }
            a = jsonParser.a();
        }
        av avVar = new av();
        avVar.a(aiVar);
        return avVar;
    }

    private static List<ImageSpec> a(JsonParser jsonParser, JsonToken jsonToken) throws IOException {
        List<ImageSpec> arrayList = new ArrayList();
        while (jsonToken != null && jsonToken != JsonToken.e) {
            JsonToken a = jsonParser.a();
            if (a == JsonToken.b) {
                ImageSpec imageSpec = new ImageSpec();
                Object obj = null;
                Object obj2 = null;
                int i = 0;
                int i2 = 0;
                JsonToken jsonToken2 = a;
                Object obj3 = null;
                while (jsonToken2 != null && jsonToken2 != JsonToken.c) {
                    if (jsonToken2 == JsonToken.h) {
                        if ("url".equals(jsonParser.e())) {
                            imageSpec.c = jsonParser.g();
                            obj3 = 1;
                        } else {
                            jsonParser.c();
                        }
                    } else if (jsonToken2 == JsonToken.i) {
                        String e = jsonParser.e();
                        if ("width".equals(e)) {
                            i2 = jsonParser.i();
                            obj2 = 1;
                        } else if ("height".equals(e)) {
                            i = jsonParser.i();
                            int i3 = 1;
                        }
                        if (!(obj2 == null || r2 == null)) {
                            imageSpec.d = new Vector2F(((float) i2) * ak.b(), ((float) i) * ak.b());
                        }
                    }
                    jsonToken2 = jsonParser.a();
                }
                if (!(obj3 == null || r3 == null || r2 == null)) {
                    arrayList.add(imageSpec);
                }
                jsonToken = jsonToken2;
            } else {
                jsonToken = a;
            }
        }
        return arrayList;
    }

    public static ap f(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        TwitterUser twitterUser2;
        TwitterTopic twitterTopic;
        n d = n.d();
        JsonToken a = jsonParser.a();
        Pair pair = null;
        HashMap hashMap = null;
        HashMap hashMap2 = null;
        HashMap hashMap3 = null;
        Object obj = null;
        while (a != null && a != JsonToken.c) {
            HashMap hashMap4;
            HashMap hashMap5;
            Pair pair2;
            if (a == JsonToken.b) {
                String e = jsonParser.e();
                String e2;
                if ("objects".equals(e)) {
                    JsonToken a2 = jsonParser.a();
                    hashMap4 = hashMap3;
                    hashMap3 = hashMap2;
                    hashMap2 = hashMap;
                    while (a2 != null && a2 != JsonToken.c) {
                        if (a2 == JsonToken.b) {
                            e2 = jsonParser.e();
                            if ("tweets".equals(e2)) {
                                hashMap3 = g(jsonParser, twitterUser);
                            } else if ("users".equals(e2)) {
                                hashMap4 = N(jsonParser);
                            } else if ("timelines".equals(e2)) {
                                hashMap2 = ax(jsonParser);
                            } else {
                                jsonParser.c();
                            }
                        } else if (a2 == JsonToken.d) {
                            jsonParser.c();
                        }
                        a2 = jsonParser.a();
                    }
                    Pair pair3 = pair;
                    hashMap5 = hashMap4;
                    hashMap4 = hashMap3;
                    hashMap3 = hashMap2;
                    pair2 = pair3;
                } else if ("response".equals(e)) {
                    e2 = obj;
                    Pair pair4 = pair;
                    JsonToken a3 = jsonParser.a();
                    while (a3 != null && a3 != JsonToken.c) {
                        switch (au.a[a3.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                if (!"timeline".equals(jsonParser.e())) {
                                    jsonParser.c();
                                    break;
                                }
                                d.c(a(jsonParser, hashMap2, hashMap3, null, null, true));
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"timeline_id".equals(jsonParser.e())) {
                                    break;
                                }
                                e2 = jsonParser.g();
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                if (!"position".equals(jsonParser.e())) {
                                    jsonParser.c();
                                    break;
                                }
                                pair4 = M(jsonParser);
                                break;
                            default:
                                break;
                        }
                        a3 = jsonParser.a();
                    }
                    String str = e2;
                    hashMap4 = hashMap2;
                    hashMap5 = hashMap3;
                    pair2 = pair4;
                    hashMap3 = hashMap;
                } else {
                    jsonParser.c();
                    hashMap4 = hashMap2;
                    pair2 = pair;
                    hashMap5 = hashMap3;
                    hashMap3 = hashMap;
                }
            } else {
                if (a == JsonToken.d) {
                    jsonParser.c();
                }
                hashMap4 = hashMap2;
                pair2 = pair;
                hashMap5 = hashMap3;
                hashMap3 = hashMap;
            }
            hashMap = hashMap3;
            hashMap3 = hashMap5;
            pair = pair2;
            hashMap2 = hashMap4;
            a = jsonParser.a();
        }
        if (hashMap == null || hashMap3 == null) {
            twitterUser2 = null;
            twitterTopic = null;
        } else {
            TwitterTopic twitterTopic2 = (TwitterTopic) hashMap.get(obj);
            if (twitterTopic2 != null) {
                twitterUser2 = (TwitterUser) hashMap3.get(String.valueOf(twitterTopic2.o()));
                twitterTopic = twitterTopic2;
            } else {
                twitterUser2 = null;
                twitterTopic = twitterTopic2;
            }
        }
        return new ap(twitterTopic, twitterUser2, (List) d.q(), (String) pair.first, (String) pair.second);
    }

    public static Pair<String, String> M(JsonParser jsonParser) throws IOException {
        Object obj = null;
        JsonToken a = jsonParser.a();
        Object obj2 = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    String e = jsonParser.e();
                    if (!"min_position".equals(e)) {
                        if (!"max_position".equals(e)) {
                            break;
                        }
                        obj2 = jsonParser.g();
                        break;
                    }
                    obj = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new Pair(obj, obj2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.topic.TwitterTopic aw(com.fasterxml.jackson.core.JsonParser r30) throws java.io.IOException {
        /*
        r13 = r30.e();
        r12 = 0;
        r26 = 0;
        r22 = 0;
        r11 = 0;
        r25 = 0;
        r6 = 0;
        r4 = -1;
        r5 = -1;
        r8 = 0;
        r7 = 0;
        r10 = 4;
        r23 = 0;
        r2 = r30.a();
    L_0x0019:
        if (r2 == 0) goto L_0x0207;
    L_0x001b:
        r3 = com.fasterxml.jackson.core.JsonToken.c;
        if (r2 == r3) goto L_0x0207;
    L_0x001f:
        r3 = com.twitter.library.api.au.a;
        r2 = r2.ordinal();
        r2 = r3[r2];
        switch(r2) {
            case 1: goto L_0x01be;
            case 2: goto L_0x0048;
            case 3: goto L_0x002a;
            case 4: goto L_0x01cf;
            case 5: goto L_0x019a;
            case 6: goto L_0x0129;
            case 7: goto L_0x019a;
            default: goto L_0x002a;
        };
    L_0x002a:
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
    L_0x0036:
        r14 = r30.a();
        r22 = r9;
        r26 = r10;
        r10 = r2;
        r2 = r14;
        r27 = r6;
        r6 = r8;
        r8 = r4;
        r5 = r3;
        r4 = r27;
        goto L_0x0019;
    L_0x0048:
        r2 = r30.e();
        r3 = "name";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0068;
    L_0x0055:
        r2 = r30.g();
        r3 = r5;
        r27 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r4;
        r4 = r27;
        r29 = r10;
        r10 = r2;
        r2 = r29;
        goto L_0x0036;
    L_0x0068:
        r3 = "description";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0081;
    L_0x0071:
        r2 = r30.g();
        r3 = r5;
        r27 = r8;
        r8 = r6;
        r9 = r2;
        r6 = r4;
        r2 = r10;
        r4 = r27;
        r10 = r26;
        goto L_0x0036;
    L_0x0081:
        r3 = "user_id";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0098;
    L_0x008a:
        r2 = r30.g();
        r3 = r5;
        r6 = r4;
        r4 = r8;
        r8 = r2;
        r9 = r22;
        r2 = r10;
        r10 = r26;
        goto L_0x0036;
    L_0x0098:
        r3 = "custom_timeline_url";
        r3 = r3.equals(r2);
        if (r3 != 0) goto L_0x00aa;
    L_0x00a1:
        r3 = "url";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x00c3;
    L_0x00aa:
        r2 = r30.g();
        r3 = com.twitter.util.aj.b(r2);
        if (r3 == 0) goto L_0x00b5;
    L_0x00b4:
        r11 = r2;
    L_0x00b5:
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x00c3:
        r3 = "collection_type";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x00de;
    L_0x00cc:
        r25 = r30.g();
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x00de:
        r3 = "id";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x00fa;
    L_0x00e7:
        r2 = r30.g();
        r3 = r5;
        r12 = r2;
        r2 = r10;
        r10 = r26;
        r27 = r6;
        r6 = r4;
        r4 = r8;
        r8 = r27;
        r9 = r22;
        goto L_0x0036;
    L_0x00fa:
        r3 = "type";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x002a;
    L_0x0103:
        r2 = r30.g();
        r3 = "list";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x011e;
    L_0x0110:
        r2 = 5;
    L_0x0111:
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x011e:
        r3 = "curated";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x023f;
    L_0x0127:
        r2 = 4;
        goto L_0x0111;
    L_0x0129:
        r2 = r30.e();
        r3 = "members";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0148;
    L_0x0136:
        r4 = r30.i();
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x0148:
        r3 = "subscribers";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x0163;
    L_0x0151:
        r5 = r30.i();
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x0163:
        r3 = "most_recent_tweet_timestamp";
        r3 = r3.equals(r2);
        if (r3 == 0) goto L_0x017e;
    L_0x016c:
        r2 = r30.j();
        r8 = r6;
        r9 = r22;
        r6 = r4;
        r27 = r5;
        r4 = r2;
        r2 = r10;
        r3 = r27;
        r10 = r26;
        goto L_0x0036;
    L_0x017e:
        r3 = "id";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x002a;
    L_0x0187:
        r2 = r30.g();
        r3 = r5;
        r12 = r2;
        r2 = r10;
        r10 = r26;
        r27 = r6;
        r6 = r4;
        r4 = r8;
        r8 = r27;
        r9 = r22;
        goto L_0x0036;
    L_0x019a:
        r2 = "following";
        r3 = r30.e();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x002a;
    L_0x01a7:
        r2 = r30.m();
        if (r2 == 0) goto L_0x01bc;
    L_0x01ad:
        r7 = 1;
    L_0x01ae:
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x01bc:
        r7 = 2;
        goto L_0x01ae;
    L_0x01be:
        r30.c();
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x01cf:
        r2 = r30.e();
        r3 = "owner";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x01f6;
    L_0x01dc:
        r2 = com.twitter.model.core.TwitterUser.class;
        r0 = r30;
        r2 = com.twitter.model.json.common.g.c(r0, r2);
        r2 = (com.twitter.model.core.TwitterUser) r2;
        r23 = r2;
        r3 = r5;
        r2 = r10;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x01f6:
        r30.c();
        r2 = r10;
        r3 = r5;
        r10 = r26;
        r27 = r4;
        r4 = r8;
        r8 = r6;
        r9 = r22;
        r6 = r27;
        goto L_0x0036;
    L_0x0207:
        if (r23 == 0) goto L_0x0238;
    L_0x0209:
        r18 = r23.bf_();
    L_0x020d:
        r3 = new com.twitter.model.topic.e;
        r6 = 0;
        r14 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r8 = r8 * r14;
        r3.<init>(r4, r5, r6, r7, r8);
        if (r12 != 0) goto L_0x023d;
    L_0x0218:
        r9 = r13;
    L_0x0219:
        r5 = new com.twitter.model.topic.TwitterTopic;
        r6 = new com.twitter.model.topic.l;
        r2 = 0;
        r6.<init>(r10, r9, r2);
        r10 = 0;
        r12 = 0;
        r13 = 0;
        r14 = 0;
        r16 = 0;
        r20 = 0;
        r21 = 0;
        r24 = 0;
        r7 = r26;
        r8 = r22;
        r22 = r3;
        r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r16, r18, r20, r21, r22, r23, r24, r25);
        return r5;
    L_0x0238:
        r18 = java.lang.Long.parseLong(r6);
        goto L_0x020d;
    L_0x023d:
        r9 = r12;
        goto L_0x0219;
    L_0x023f:
        r2 = r10;
        goto L_0x0111;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.aw(com.fasterxml.jackson.core.JsonParser):com.twitter.model.topic.TwitterTopic");
    }

    public static ArrayList<Pair<String, String>> b(String str) {
        ArrayList<Pair<String, String>> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator keys = jSONObject.keys();
            String str2 = null;
            while (keys.hasNext()) {
                String str3 = (String) keys.next();
                JSONArray jSONArray;
                int i;
                if ("errors".equals(str3) || "warnings".equals(str3)) {
                    jSONArray = (JSONArray) jSONObject.get(str3);
                    for (i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = (JSONObject) jSONArray.get(i);
                        str2 = jSONObject2.getString("eventName");
                        arrayList.add(new Pair(str2 + " [" + str3 + "]", jSONObject2.toString(2)));
                    }
                } else if ("logs".equals(str3)) {
                    jSONArray = (JSONArray) jSONObject.get(str3);
                    i = 0;
                    while (i < jSONArray.length()) {
                        JSONArray jSONArray2 = (JSONArray) jSONArray.get(i);
                        if (jSONArray2.length() >= 2) {
                            JSONObject jSONObject3 = (JSONObject) jSONArray2.get(0);
                            String str4 = (String) jSONArray2.get(1);
                            if ("client_event".equals(str4)) {
                                str2 = jSONObject3.getString("eventName");
                            } else if ("perftown".equals(str4)) {
                                str2 = jSONObject3.getString("product") + ":" + jSONObject3.getString("description");
                            } else if ("client_watch_error".equals(str4)) {
                                str2 = jSONObject3.getString("error");
                            }
                            arrayList.add(new Pair(str2 + " [" + str4 + "]", jSONObject3.toString(2)));
                        }
                        i++;
                        str2 = str2;
                    }
                }
            }
        } catch (JSONException e) {
        }
        return arrayList;
    }

    public static HashMap<String, cm> g(JsonParser jsonParser, TwitterUser twitterUser) throws IOException {
        HashMap<String, cm> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                cn cnVar = (cn) g.c(jsonParser, cn.class);
                hashMap.put(jsonParser.e(), cnVar != null ? (cm) cnVar.a(twitterUser).r() : null);
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    public static HashMap<String, TwitterUser> N(JsonParser jsonParser) throws IOException {
        HashMap<String, TwitterUser> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                hashMap.put(jsonParser.e(), g.c(jsonParser, TwitterUser.class));
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    private static HashMap<String, TwitterTopic> ax(JsonParser jsonParser) throws IOException {
        HashMap<String, TwitterTopic> hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                TwitterTopic aw = aw(jsonParser);
                if (aw != null) {
                    hashMap.put(jsonParser.e(), aw);
                }
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    private static HashMap<String, TwitterTopic> a(HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, JsonParser jsonParser) throws IOException {
        HashMap<String, TwitterTopic> hashMap3 = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                TwitterTopic b = b(jsonParser, hashMap, hashMap2);
                if (b != null) {
                    hashMap3.put(jsonParser.e(), b);
                }
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return hashMap3;
    }

    private static List<cnm> c(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2) {
        if (hashMap == null || hashMap2 == null) {
            bbn.a(new InvalidJsonFormatException("Missing tweets map or users map"));
            return n.g();
        }
        List<cno> d = g.d(jsonParser, cno.class);
        n b = n.b(d.size());
        for (cno cno : d) {
            List arrayList = new ArrayList();
            for (Long longValue : cno.c) {
                cm a = a(String.valueOf(longValue.longValue()), (HashMap) hashMap, (HashMap) hashMap2);
                if (a != null) {
                    arrayList.add(a);
                }
            }
            Object obj = (cnm) new cnn().a(arrayList).a(cno).r();
            if (obj != null) {
                b.c(obj);
            }
        }
        return (List) b.q();
    }

    private static List<av> a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, HashMap<String, TwitterTopic> hashMap3, Map<Long, ab> map, boolean z) throws IOException {
        if ((hashMap == null || hashMap2 == null) && (hashMap3 == null || hashMap3.isEmpty())) {
            bbn.a(new InvalidJsonFormatException("Missing tweets map or users map"));
            return n.g();
        }
        n d = n.d();
        av avVar = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            if (a == JsonToken.b) {
                av b = b(jsonParser, hashMap, hashMap2, hashMap3, map, z);
                if (b != null) {
                    if ((b instanceof bt) || (b instanceof cf)) {
                        b.n = avVar != null ? avVar.n : m.b();
                    } else if (avVar != null && (av.d(b) != null || (b instanceof an))) {
                        b.n = avVar.n;
                    } else if (b.d != 0) {
                        b.n = avVar != null ? avVar.n : -1;
                    }
                    d.c((Object) b);
                } else {
                    b = avVar;
                }
                avVar = b;
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return (List) d.q();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.core.TwitterSocialProof a(com.fasterxml.jackson.core.JsonParser r10, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r11) throws java.io.IOException {
        /*
        r8 = 1;
        r5 = 0;
        r4 = 0;
        r6 = new java.util.ArrayList;
        r6.<init>();
        r0 = r10.a();
        r1 = r5;
        r2 = r4;
        r3 = r4;
    L_0x000f:
        if (r0 == 0) goto L_0x00e1;
    L_0x0011:
        r7 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r7) goto L_0x00e1;
    L_0x0015:
        r7 = com.twitter.library.api.au.a;
        r0 = r0.ordinal();
        r0 = r7[r0];
        switch(r0) {
            case 1: goto L_0x00d9;
            case 2: goto L_0x002d;
            case 3: goto L_0x0020;
            case 4: goto L_0x0059;
            default: goto L_0x0020;
        };
    L_0x0020:
        r0 = r1;
        r1 = r2;
        r2 = r3;
    L_0x0023:
        r3 = r10.a();
        r9 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x000f;
    L_0x002d:
        r0 = "type";
        r7 = r10.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x0043;
    L_0x003a:
        r0 = r10.g();
        r9 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r9;
        goto L_0x0023;
    L_0x0043:
        r0 = "text";
        r7 = r10.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x0020;
    L_0x0050:
        r0 = r10.g();
        r2 = r3;
        r9 = r0;
        r0 = r1;
        r1 = r9;
        goto L_0x0023;
    L_0x0059:
        r0 = "users";
        r7 = r10.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x00d1;
    L_0x0066:
        r0 = r10.a();
    L_0x006a:
        if (r0 == 0) goto L_0x0020;
    L_0x006c:
        r7 = com.fasterxml.jackson.core.JsonToken.c;
        if (r0 == r7) goto L_0x0020;
    L_0x0070:
        r7 = com.twitter.library.api.au.a;
        r0 = r0.ordinal();
        r0 = r7[r0];
        switch(r0) {
            case 1: goto L_0x0096;
            case 2: goto L_0x0080;
            case 3: goto L_0x007b;
            case 4: goto L_0x00cd;
            default: goto L_0x007b;
        };
    L_0x007b:
        r0 = r10.a();
        goto L_0x006a;
    L_0x0080:
        r0 = "count";
        r7 = r10.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x007b;
    L_0x008d:
        r0 = r10.g();
        r1 = java.lang.Integer.parseInt(r0);
        goto L_0x007b;
    L_0x0096:
        r0 = "ids";
        r7 = r10.e();
        r0 = r0.equals(r7);
        if (r0 == 0) goto L_0x00c9;
    L_0x00a3:
        r0 = r10.a();
    L_0x00a7:
        if (r0 == 0) goto L_0x007b;
    L_0x00a9:
        r7 = com.fasterxml.jackson.core.JsonToken.e;
        if (r0 == r7) goto L_0x007b;
    L_0x00ad:
        r7 = com.fasterxml.jackson.core.JsonToken.h;
        if (r0 != r7) goto L_0x00c5;
    L_0x00b1:
        r0 = r10.g();
        r0 = r11.get(r0);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        if (r0 == 0) goto L_0x00c0;
    L_0x00bd:
        r6.add(r0);
    L_0x00c0:
        r0 = r10.a();
        goto L_0x00a7;
    L_0x00c5:
        r10.c();
        goto L_0x00c0;
    L_0x00c9:
        r10.c();
        goto L_0x007b;
    L_0x00cd:
        r10.c();
        goto L_0x007b;
    L_0x00d1:
        r10.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x00d9:
        r10.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x00e1:
        if (r2 == 0) goto L_0x011b;
    L_0x00e3:
        r0 = c;
        r0 = r0.containsKey(r3);
        if (r0 == 0) goto L_0x0118;
    L_0x00eb:
        r0 = c;
        r0 = r0.get(r3);
        r0 = (java.lang.Integer) r0;
        r0 = r0.intValue();
    L_0x00f7:
        r9 = r4;
        r4 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r9;
    L_0x00fc:
        r3 = new com.twitter.model.core.ck;
        r3.<init>();
        r1 = r3.a(r1);
        r1 = r1.a(r4);
        r1 = r1.b(r2);
        r0 = r1.b(r0);
        r0 = r0.q();
        r0 = (com.twitter.model.core.TwitterSocialProof) r0;
        return r0;
    L_0x0118:
        r0 = 28;
        goto L_0x00f7;
    L_0x011b:
        r0 = "favorite";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x015b;
    L_0x0124:
        r0 = r6.isEmpty();
        if (r0 == 0) goto L_0x0130;
    L_0x012a:
        r0 = 17;
        r2 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x00fc;
    L_0x0130:
        r7 = r6.size();
        r3 = r1 - r7;
        r0 = r6.get(r5);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        r2 = r0.c();
        if (r7 <= r8) goto L_0x0156;
    L_0x0142:
        r0 = r6.get(r8);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        r1 = r0.c();
    L_0x014c:
        if (r3 != 0) goto L_0x0158;
    L_0x014e:
        r0 = 16;
    L_0x0150:
        r4 = r2;
        r2 = r3;
        r9 = r0;
        r0 = r1;
        r1 = r9;
        goto L_0x00fc;
    L_0x0156:
        r1 = r4;
        goto L_0x014c;
    L_0x0158:
        r0 = 33;
        goto L_0x0150;
    L_0x015b:
        r0 = -1;
        r2 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x00fc;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.a(com.fasterxml.jackson.core.JsonParser, java.util.HashMap):com.twitter.model.core.TwitterSocialProof");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.timeline.av b(com.fasterxml.jackson.core.JsonParser r15, java.util.HashMap<java.lang.String, com.twitter.model.core.cm> r16, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r17, java.util.HashMap<java.lang.String, com.twitter.model.topic.TwitterTopic> r18, java.util.Map<java.lang.Long, com.twitter.model.moments.ab> r19, boolean r20) throws java.io.IOException {
        /*
        r10 = 0;
        r9 = 0;
        r8 = 0;
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r3 = 0;
        r2 = r15.a();
    L_0x000c:
        if (r2 == 0) goto L_0x026b;
    L_0x000e:
        r11 = com.fasterxml.jackson.core.JsonToken.c;
        if (r2 == r11) goto L_0x026b;
    L_0x0012:
        r11 = com.twitter.library.api.au.a;
        r2 = r2.ordinal();
        r2 = r11[r2];
        switch(r2) {
            case 2: goto L_0x024e;
            case 3: goto L_0x001d;
            case 4: goto L_0x0030;
            default: goto L_0x001d;
        };
    L_0x001d:
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
    L_0x0023:
        r10 = r15.a();
        r14 = r10;
        r10 = r9;
        r9 = r8;
        r8 = r5;
        r5 = r4;
        r4 = r3;
        r3 = r2;
        r2 = r14;
        goto L_0x000c;
    L_0x0030:
        r2 = r15.e();
        r11 = "tweet";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x0050;
    L_0x003d:
        r2 = new com.twitter.model.timeline.by;
        r2.<init>();
        r0 = r16;
        r1 = r17;
        r2 = a(r15, r0, r1, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x0050:
        r11 = "conversation";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x006c;
    L_0x0059:
        r2 = new com.twitter.model.timeline.as;
        r2.<init>();
        r0 = r16;
        r1 = r17;
        r2 = a(r15, r0, r1, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x006c:
        r11 = "recap";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x0088;
    L_0x0075:
        r2 = new com.twitter.model.timeline.bv;
        r2.<init>();
        r0 = r16;
        r1 = r17;
        r2 = a(r15, r0, r1, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x0088:
        r11 = "carousel";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x00a4;
    L_0x0091:
        r2 = new com.twitter.model.timeline.ch;
        r2.<init>();
        r0 = r16;
        r1 = r17;
        r2 = a(r15, r0, r1, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x00a4:
        r11 = "who_to_follow";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x00c1;
    L_0x00ad:
        r2 = new com.twitter.model.timeline.cm;
        r2.<init>();
        r0 = r16;
        r1 = r17;
        r2 = a(r15, r0, r1, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x00c1:
        r11 = "topic";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x00da;
    L_0x00ca:
        r2 = new com.twitter.model.timeline.ce;
        r2.<init>();
        r2 = a(r15, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x00da:
        r11 = "moment_start";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x00f6;
    L_0x00e3:
        r2 = 1;
        r3 = new com.twitter.model.timeline.bj;
        r3.<init>();
        r0 = r19;
        r2 = a(r2, r15, r0, r3);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x00f6:
        r11 = "moment_end";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x0112;
    L_0x00ff:
        r2 = 2;
        r3 = new com.twitter.model.timeline.bj;
        r3.<init>();
        r0 = r19;
        r2 = a(r2, r15, r0, r3);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x0112:
        r11 = "message";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x012b;
    L_0x011b:
        r2 = new com.twitter.model.timeline.bg;
        r2.<init>();
        r2 = a(r15, r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x012b:
        r11 = "ad_slot";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x014c;
    L_0x0134:
        r3 = new com.twitter.model.timeline.ap;
        r3.<init>();
        r2 = defpackage.cnq.class;
        r2 = com.twitter.model.json.common.g.c(r15, r2);
        r2 = (defpackage.cnq) r2;
        r2 = r3.a(r2);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x014c:
        r11 = "suggested_moments_injection";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x016b;
    L_0x0155:
        r2 = new com.twitter.model.timeline.cb;
        r2.<init>();
        r0 = r19;
        r3 = a(r15, r0);
        r2 = r2.a(r3);
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x016b:
        r11 = "entity_id";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x01e2;
    L_0x0174:
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r2 = r15.a();
    L_0x017d:
        if (r2 == 0) goto L_0x01d5;
    L_0x017f:
        r11 = com.fasterxml.jackson.core.JsonToken.c;
        if (r2 == r11) goto L_0x01d5;
    L_0x0183:
        r11 = com.fasterxml.jackson.core.JsonToken.h;
        if (r2 != r11) goto L_0x01a0;
    L_0x0187:
        r2 = "type";
        r11 = r15.e();
        r2 = r2.equals(r11);
        if (r2 == 0) goto L_0x019b;
    L_0x0194:
        r2 = r15.g();
        r10.append(r2);
    L_0x019b:
        r2 = r15.a();
        goto L_0x017d;
    L_0x01a0:
        r11 = com.fasterxml.jackson.core.JsonToken.d;
        if (r2 != r11) goto L_0x01cd;
    L_0x01a4:
        r2 = "ids";
        r11 = r15.e();
        r2 = r2.equals(r11);
        if (r2 == 0) goto L_0x01c9;
    L_0x01b1:
        r2 = az(r15);
        r11 = r2.iterator();
    L_0x01b9:
        r2 = r11.hasNext();
        if (r2 == 0) goto L_0x019b;
    L_0x01bf:
        r2 = r11.next();
        r2 = (java.lang.String) r2;
        r10.append(r2);
        goto L_0x01b9;
    L_0x01c9:
        r15.c();
        goto L_0x019b;
    L_0x01cd:
        r11 = com.fasterxml.jackson.core.JsonToken.b;
        if (r2 != r11) goto L_0x019b;
    L_0x01d1:
        r15.c();
        goto L_0x019b;
    L_0x01d5:
        r2 = r10.toString();
        r14 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r2;
        r2 = r14;
        goto L_0x0023;
    L_0x01e2:
        r11 = "banner";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x01fa;
    L_0x01eb:
        r0 = r17;
        r2 = a(r15, r0);
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        r14 = r3;
        r3 = r2;
        r2 = r14;
        goto L_0x0023;
    L_0x01fa:
        r11 = "suggests_info";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x0214;
    L_0x0203:
        r2 = com.twitter.model.timeline.aj.class;
        r2 = com.twitter.model.json.common.g.c(r15, r2);
        r2 = (com.twitter.model.timeline.aj) r2;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        r14 = r3;
        r3 = r4;
        r4 = r2;
        r2 = r14;
        goto L_0x0023;
    L_0x0214:
        r11 = "moment";
        r11 = r11.equals(r2);
        if (r11 == 0) goto L_0x022d;
    L_0x021d:
        r2 = 0;
        r0 = r19;
        r2 = a(r2, r15, r0);
        r9 = r10;
        r14 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r2;
        r2 = r3;
        r3 = r14;
        goto L_0x0023;
    L_0x022d:
        r11 = "dismiss_info";
        r2 = r11.equals(r2);
        if (r2 == 0) goto L_0x0243;
    L_0x0236:
        r2 = ay(r15);
        r8 = r9;
        r9 = r10;
        r14 = r5;
        r5 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r14;
        goto L_0x0023;
    L_0x0243:
        r15.c();
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x024e:
        r2 = "sort_index";
        r11 = r15.e();
        r2 = r2.equals(r11);
        if (r2 == 0) goto L_0x001d;
    L_0x025b:
        r2 = r15.g();
        r6 = java.lang.Long.parseLong(r2);
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r8;
        r8 = r9;
        r9 = r10;
        goto L_0x0023;
    L_0x026b:
        if (r3 != 0) goto L_0x026f;
    L_0x026d:
        r2 = 0;
    L_0x026e:
        return r2;
    L_0x026f:
        if (r9 == 0) goto L_0x0274;
    L_0x0271:
        r3.a(r9);
    L_0x0274:
        r12 = 0;
        r2 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r2 <= 0) goto L_0x027d;
    L_0x027a:
        r3.a(r6);
    L_0x027d:
        if (r4 == 0) goto L_0x0282;
    L_0x027f:
        r3.a(r4);
    L_0x0282:
        if (r5 == 0) goto L_0x028c;
    L_0x0284:
        r3.a(r5);
        r2 = r5.b;
        r3.a(r2);
    L_0x028c:
        if (r8 == 0) goto L_0x0291;
    L_0x028e:
        r3.a(r8);
    L_0x0291:
        if (r20 == 0) goto L_0x02a7;
    L_0x0293:
        r2 = r3 instanceof com.twitter.model.timeline.by;
        if (r2 == 0) goto L_0x02a7;
    L_0x0297:
        r2 = com.twitter.util.object.ObjectUtils.a(r3);
        r2 = (com.twitter.model.timeline.by) r2;
        r2 = r2.d();
        if (r2 == 0) goto L_0x02a7;
    L_0x02a3:
        r10 = r2.bg_();
    L_0x02a7:
        r2 = com.twitter.util.aj.b(r10);
        if (r2 == 0) goto L_0x02b0;
    L_0x02ad:
        r3.b(r10);
    L_0x02b0:
        r2 = r3.r();
        r2 = com.twitter.util.object.ObjectUtils.a(r2);
        r2 = (com.twitter.model.timeline.av) r2;
        goto L_0x026e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.b(com.fasterxml.jackson.core.JsonParser, java.util.HashMap, java.util.HashMap, java.util.HashMap, java.util.Map, boolean):com.twitter.model.timeline.av");
    }

    private static com.twitter.model.moments.an a(JsonParser jsonParser, Map<Long, ab> map) {
        return ((JsonSuggestedMomentsInjection) g.c(jsonParser, JsonSuggestedMomentsInjection.class)).a(map);
    }

    private static aw a(JsonParser jsonParser, bg bgVar) {
        JsonTimelineMessage jsonTimelineMessage = (JsonTimelineMessage) g.c(jsonParser, JsonTimelineMessage.class);
        if (jsonTimelineMessage != null) {
            if (jsonTimelineMessage.c != null && jsonTimelineMessage.c.a()) {
                JsonInlinePromptTwoActions jsonInlinePromptTwoActions = jsonTimelineMessage.c;
                bgVar.a(new bd(jsonInlinePromptTwoActions.a, jsonInlinePromptTwoActions.b, jsonInlinePromptTwoActions.c, jsonInlinePromptTwoActions.d, jsonTimelineMessage.b));
            } else if (jsonTimelineMessage.d != null && jsonTimelineMessage.d.a()) {
                JsonInlinePrompt jsonInlinePrompt = jsonTimelineMessage.d;
                bgVar.a(new bd(jsonInlinePrompt.a, jsonInlinePrompt.b, jsonInlinePrompt.c, jsonInlinePrompt.d, jsonTimelineMessage.b));
            }
            if (jsonTimelineMessage.a != null) {
                bgVar.a(jsonTimelineMessage.a);
            }
        }
        return bgVar;
    }

    private static aw a(int i, JsonParser jsonParser, Map<Long, ab> map, bj bjVar) {
        ba a = a(i, jsonParser, (Map) map);
        if (a != null) {
            bjVar.a(a);
        }
        return bjVar;
    }

    private static ba a(int i, JsonParser jsonParser, Map<Long, ab> map) {
        if (map != null) {
            JsonTimelineMomentId jsonTimelineMomentId = (JsonTimelineMomentId) g.c(jsonParser, JsonTimelineMomentId.class);
            if (jsonTimelineMomentId != null) {
                ab abVar = (ab) map.get(Long.valueOf(jsonTimelineMomentId.a));
                if (abVar != null) {
                    return new ba(i, abVar);
                }
            }
        }
        return null;
    }

    private static aw a(JsonParser jsonParser, ce ceVar) throws IOException {
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            String str7;
            String e = jsonParser.e();
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    str7 = str2;
                    str2 = str;
                    str = str7;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (TwitterTopic.c(e.toUpperCase()) == -1) {
                        jsonParser.c();
                        str7 = str2;
                        str2 = str;
                        str = str7;
                        break;
                    }
                    String str8 = str4;
                    String str9 = str3;
                    JsonToken a2 = jsonParser.a();
                    str6 = str5;
                    str7 = str2;
                    str2 = str;
                    str = str7;
                    while (a2 != null && a2 != JsonToken.c) {
                        str5 = jsonParser.e();
                        switch (au.a[a2.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"name".equals(str5)) {
                                    if (!"query".equals(str5)) {
                                        if (!"seed_hashtag".equals(str5)) {
                                            if (!"id".equals(str5)) {
                                                if (!"event_status".equals(str5)) {
                                                    break;
                                                }
                                                str8 = jsonParser.s();
                                                break;
                                            }
                                            str = jsonParser.s();
                                            break;
                                        }
                                        str6 = jsonParser.s();
                                        break;
                                    }
                                    str9 = jsonParser.s();
                                    break;
                                }
                                str2 = jsonParser.s();
                                break;
                            default:
                                break;
                        }
                        a2 = jsonParser.a();
                    }
                    str5 = str6;
                    str4 = str8;
                    str3 = str9;
                    str6 = e;
                    break;
                    break;
                default:
                    str7 = str2;
                    str2 = str;
                    str = str7;
                    break;
            }
            a = jsonParser.a();
            str7 = str;
            str = str2;
            str2 = str7;
        }
        if (str6 != null) {
            ceVar.a(new TwitterTopic(new l(TwitterTopic.c(str6.toUpperCase()), str2, false), str, null, str3, str5, null, null, null, 1, 0, 0, null, null, null, null, str4, null));
        }
        return ceVar;
    }

    private static aw a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, bv bvVar) throws IOException {
        JsonRecap jsonRecap = (JsonRecap) g.c(jsonParser, JsonRecap.class);
        if (!(jsonRecap == null || jsonRecap.a == null)) {
            n a = n.a(jsonRecap.a.length);
            n a2 = n.a(jsonRecap.a.length);
            JsonSuggestsInfo jsonSuggestsInfo = jsonRecap.b;
            for (String str : jsonRecap.a) {
                cm a3 = a(str, (HashMap) hashMap, (HashMap) hashMap2);
                if (a3 != null) {
                    by byVar = new by();
                    if (!(jsonRecap.e == null || jsonRecap.e.a == null)) {
                        com.twitter.model.timeline.a aVar = (com.twitter.model.timeline.a) jsonRecap.e.a.get(str);
                        if (aVar != null && c.containsKey(aVar.a)) {
                            byVar.a((TwitterSocialProof) new ck().a(((Integer) c.get(aVar.a)).intValue()).a(aVar.b).q());
                        }
                    }
                    if (jsonSuggestsInfo != null) {
                        byVar.a((aj) jsonSuggestsInfo.b.get(str));
                    }
                    a.c(byVar.a(a3));
                    a2.c(Long.valueOf(a3.b));
                }
            }
            List list = (List) a.q();
            y a4 = new y().a(jsonSuggestsInfo != null ? jsonSuggestsInfo.a : null).a((List) a2.q());
            JsonStrings jsonStrings = jsonRecap.c;
            if (jsonStrings != null) {
                a4.a(jsonStrings.a);
            }
            bvVar.a(list);
            bvVar.a((w) a4.q());
            bvVar.a(jsonRecap.f);
            com.twitter.model.timeline.l lVar = jsonRecap.d;
            if (lVar != null) {
                bvVar.a(lVar);
            }
            bvVar.b(1);
        }
        return bvVar;
    }

    private static aw a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, com.twitter.model.timeline.cm cmVar) throws IOException {
        JsonWhoToFollow jsonWhoToFollow = (JsonWhoToFollow) g.c(jsonParser, JsonWhoToFollow.class);
        if (jsonWhoToFollow != null) {
            int c = c(jsonWhoToFollow.c);
            JsonSuggestsInfo jsonSuggestsInfo = jsonWhoToFollow.f;
            if (c != -1) {
                Object obj;
                n d = n.d();
                n d2 = n.d();
                r d3 = r.d();
                Set<Entry> entrySet = jsonWhoToFollow.d.entrySet();
                Collection<String> values = jsonWhoToFollow.b.values();
                n d4 = n.d();
                n d5 = n.d();
                aj ajVar = jsonSuggestsInfo != null ? jsonSuggestsInfo.a : null;
                Map a = jsonSuggestsInfo != null ? r.a(jsonSuggestsInfo.c) : Collections.emptyMap();
                for (Entry entry : entrySet) {
                    d3.b(entry.getKey(), a((JsonSocialProof) entry.getValue(), (Map) hashMap2));
                }
                for (Object obj2 : jsonWhoToFollow.a) {
                    obj2 = (TwitterUser) hashMap2.get(obj2);
                    obj2.T = (aj) a.get(obj2.bg_());
                    d.c(obj2);
                    d4.c(Long.valueOf(obj2.c));
                }
                for (String a2 : values) {
                    obj2 = a(a2, (HashMap) hashMap, (HashMap) hashMap2);
                    d2.c(obj2);
                    d5.c(Long.valueOf(obj2.bf_()));
                }
                cs a3 = new cs().a(c).a((Map) d3.q()).a(ajVar).b(a).a((List) d5.q(), (List) d4.q());
                JsonStrings jsonStrings = jsonWhoToFollow.e;
                if (jsonStrings != null) {
                    a3.a(jsonStrings.a).b(jsonStrings.b);
                }
                cmVar.a(new com.twitter.model.timeline.cp((List) d.q(), (List) d2.q(), (cr) a3.q()));
                com.twitter.model.timeline.l lVar = jsonWhoToFollow.g;
                if (lVar != null) {
                    cmVar.a(lVar);
                }
                cmVar.a(jsonWhoToFollow.h);
            }
        }
        return cmVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int c(java.lang.String r4) {
        /*
        r2 = 2;
        r1 = 1;
        r0 = -1;
        if (r4 != 0) goto L_0x0006;
    L_0x0005:
        return r0;
    L_0x0006:
        r3 = r4.hashCode();
        switch(r3) {
            case 851840698: goto L_0x001f;
            case 1499234039: goto L_0x0014;
            case 1692486116: goto L_0x002a;
            default: goto L_0x000d;
        };
    L_0x000d:
        r3 = r0;
    L_0x000e:
        switch(r3) {
            case 0: goto L_0x0012;
            case 1: goto L_0x0035;
            case 2: goto L_0x0037;
            default: goto L_0x0011;
        };
    L_0x0011:
        goto L_0x0005;
    L_0x0012:
        r0 = r1;
        goto L_0x0005;
    L_0x0014:
        r3 = "tweet_forward";
        r3 = r4.equals(r3);
        if (r3 == 0) goto L_0x000d;
    L_0x001d:
        r3 = 0;
        goto L_0x000e;
    L_0x001f:
        r3 = "follow_module";
        r3 = r4.equals(r3);
        if (r3 == 0) goto L_0x000d;
    L_0x0028:
        r3 = r1;
        goto L_0x000e;
    L_0x002a:
        r3 = "large_carousel";
        r3 = r4.equals(r3);
        if (r3 == 0) goto L_0x000d;
    L_0x0033:
        r3 = r2;
        goto L_0x000e;
    L_0x0035:
        r0 = r2;
        goto L_0x0005;
    L_0x0037:
        r0 = 3;
        goto L_0x0005;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.c(java.lang.String):int");
    }

    private static com.twitter.model.timeline.l ay(JsonParser jsonParser) {
        return (com.twitter.model.timeline.l) g.c(jsonParser, com.twitter.model.timeline.l.class);
    }

    private static TwitterSocialProof a(JsonSocialProof jsonSocialProof, Map<String, TwitterUser> map) {
        String str = null;
        if (!(jsonSocialProof == null || jsonSocialProof.a.b == -1 || CollectionUtils.a(jsonSocialProof.b))) {
            int size;
            List arrayList = new ArrayList(jsonSocialProof.b.length);
            for (Object obj : jsonSocialProof.b) {
                TwitterUser twitterUser = (TwitterUser) map.get(obj);
                if (twitterUser != null) {
                    arrayList.add(twitterUser);
                }
            }
            if (!arrayList.isEmpty()) {
                size = arrayList.size();
                String str2 = ((TwitterUser) arrayList.get(0)).d;
                if (size > 1) {
                    str = ((TwitterUser) arrayList.get(1)).d;
                }
                return (TwitterSocialProof) new ck().a(jsonSocialProof.a.b).a(str2).b(str).g(size > 2 ? size - 2 : 0).q();
            }
        }
        return null;
    }

    private static aw a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, ch chVar) throws IOException {
        JsonTweetCarousel jsonTweetCarousel = (JsonTweetCarousel) g.c(jsonParser, JsonTweetCarousel.class);
        n d = n.d();
        if (!(jsonTweetCarousel == null || jsonTweetCarousel.b == null)) {
            for (String a : jsonTweetCarousel.b) {
                d.c(a(a, (HashMap) hashMap, (HashMap) hashMap2));
            }
            chVar.a(new b(jsonTweetCarousel.a, (List) d.q()));
        }
        return chVar;
    }

    private static aw a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, by byVar) throws IOException {
        cm cmVar = null;
        JsonToken a = jsonParser.a();
        int i = 0;
        String str = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    String e = jsonParser.e();
                    if (!"id".equals(e)) {
                        if (!"sort_index".equals(e)) {
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    cmVar = a(jsonParser.g(), (HashMap) hashMap, (HashMap) hashMap2);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    if (!"is_suggestion".equals(jsonParser.e())) {
                        break;
                    }
                    i = 1;
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (cmVar != null) {
            byVar.a(cmVar).b(cmVar.J);
            if (str != null) {
                byVar.a(Long.parseLong(str));
            }
            if (i != 0) {
                byVar.a(1);
            }
        }
        return byVar;
    }

    public static ao O(JsonParser jsonParser) throws IOException {
        List arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = null;
        JsonToken a = jsonParser.a();
        String str = null;
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                HashMap hashMap3;
                String e = jsonParser.e();
                if ("objects".equals(e)) {
                    hashMap3 = hashMap2;
                    hashMap2 = hashMap;
                    JsonToken a2 = jsonParser.a();
                    while (a2 != null && a2 != JsonToken.c) {
                        if (a2 == JsonToken.b) {
                            String e2 = jsonParser.e();
                            if ("users".equals(e2)) {
                                hashMap2 = N(jsonParser);
                            } else if ("timelines".equals(e2)) {
                                hashMap3 = ax(jsonParser);
                            } else {
                                jsonParser.c();
                            }
                        } else if (a2 == JsonToken.d) {
                            jsonParser.c();
                        }
                        a2 = jsonParser.a();
                    }
                } else if ("response".equals(e)) {
                    e = str;
                    JsonToken a3 = jsonParser.a();
                    while (a3 != null && a3 != JsonToken.c) {
                        if (a3 == JsonToken.b) {
                            if ("cursors".equals(jsonParser.e())) {
                                str = e;
                                a = jsonParser.a();
                                while (a != null && a != JsonToken.c) {
                                    switch (au.a[a.ordinal()]) {
                                        case WireMessage.WIRE_CHAT /*1*/:
                                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                                            jsonParser.c();
                                            break;
                                        case WireMessage.WIRE_CONTROL /*2*/:
                                            if (!"next_cursor".equals(jsonParser.e())) {
                                                break;
                                            }
                                            str = jsonParser.g();
                                            break;
                                        default:
                                            break;
                                    }
                                    a = jsonParser.a();
                                }
                            } else {
                                jsonParser.c();
                                str = e;
                            }
                            e = str;
                        } else if (a3 == JsonToken.d) {
                            if ("results".equals(jsonParser.e())) {
                                a3 = jsonParser.a();
                                while (a3 != null && a3 != JsonToken.e) {
                                    switch (au.a[a3.ordinal()]) {
                                        case WireMessage.WIRE_CHAT /*1*/:
                                            jsonParser.c();
                                            break;
                                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                                            a3 = jsonParser.a();
                                            while (a3 != null && a3 != JsonToken.c) {
                                                switch (au.a[a3.ordinal()]) {
                                                    case WireMessage.WIRE_CHAT /*1*/:
                                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                                        jsonParser.c();
                                                        break;
                                                    case WireMessage.WIRE_CONTROL /*2*/:
                                                        if (!"timeline_id".equals(jsonParser.e())) {
                                                            break;
                                                        }
                                                        TwitterTopic twitterTopic = (TwitterTopic) hashMap2.get(jsonParser.g());
                                                        if (twitterTopic == null) {
                                                            break;
                                                        }
                                                        arrayList.add(twitterTopic);
                                                        break;
                                                    default:
                                                        break;
                                                }
                                                a3 = jsonParser.a();
                                            }
                                            break;
                                        default:
                                            break;
                                    }
                                    a3 = jsonParser.a();
                                }
                            } else {
                                jsonParser.c();
                            }
                        }
                        a3 = jsonParser.a();
                    }
                    str = e;
                    hashMap3 = hashMap2;
                    hashMap2 = hashMap;
                } else {
                    jsonParser.c();
                    hashMap3 = hashMap2;
                    hashMap2 = hashMap;
                }
                hashMap = hashMap2;
                hashMap2 = hashMap3;
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return new ao(arrayList, hashMap.values(), str);
    }

    public static TwitterTopic P(JsonParser jsonParser) throws IOException {
        HashMap hashMap = null;
        JsonToken a = jsonParser.a();
        TwitterTopic twitterTopic = null;
        while (a != null && a != JsonToken.c) {
            if (a == JsonToken.b) {
                HashMap hashMap2;
                TwitterTopic twitterTopic2;
                String e = jsonParser.e();
                if ("objects".equals(e)) {
                    hashMap2 = hashMap;
                    JsonToken a2 = jsonParser.a();
                    while (a2 != null && a2 != JsonToken.c) {
                        if (a2 == JsonToken.b) {
                            if ("timelines".equals(jsonParser.e())) {
                                hashMap2 = ax(jsonParser);
                            } else {
                                jsonParser.c();
                            }
                        } else if (a2 == JsonToken.d) {
                            jsonParser.c();
                        }
                        a2 = jsonParser.a();
                    }
                    twitterTopic2 = twitterTopic;
                } else if ("response".equals(e)) {
                    TwitterTopic twitterTopic3 = twitterTopic;
                    JsonToken a3 = jsonParser.a();
                    while (a3 != null && a3 != JsonToken.c) {
                        switch (au.a[a3.ordinal()]) {
                            case WireMessage.WIRE_CHAT /*1*/:
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                jsonParser.c();
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                if (!"timeline_id".equals(jsonParser.e())) {
                                    break;
                                }
                                twitterTopic3 = (TwitterTopic) hashMap.get(jsonParser.g());
                                break;
                            default:
                                break;
                        }
                        a3 = jsonParser.a();
                    }
                    HashMap hashMap3 = hashMap;
                    twitterTopic2 = twitterTopic3;
                    hashMap2 = hashMap3;
                } else {
                    jsonParser.c();
                    hashMap2 = hashMap;
                    twitterTopic2 = twitterTopic;
                }
                twitterTopic = twitterTopic2;
                hashMap = hashMap2;
            } else if (a == JsonToken.d) {
                jsonParser.c();
            }
            a = jsonParser.a();
        }
        return twitterTopic;
    }

    private static LinkedHashSet<String> az(JsonParser jsonParser) throws IOException {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    linkedHashSet.add(jsonParser.g());
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return linkedHashSet;
    }

    private static aw a(JsonParser jsonParser, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2, as asVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        e eVar = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            e eVar2;
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"ids".equals(jsonParser.e())) {
                        jsonParser.c();
                        eVar2 = eVar;
                        break;
                    }
                    Iterator it = az(jsonParser).iterator();
                    while (it.hasNext()) {
                        cm a2 = a((String) it.next(), (HashMap) hashMap, (HashMap) hashMap2);
                        if (a2 != null) {
                            arrayList.add(a2);
                        }
                    }
                    eVar2 = eVar;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"context".equals(jsonParser.e())) {
                        jsonParser.c();
                        eVar2 = eVar;
                        break;
                    }
                    eVar2 = b(jsonParser, (HashMap) hashMap2);
                    break;
                default:
                    eVar2 = eVar;
                    break;
            }
            eVar = eVar2;
            a = jsonParser.a();
        }
        if (!arrayList.isEmpty()) {
            c cVar = new c(eVar, (cm[]) arrayList.toArray(new cm[arrayList.size()]));
            asVar.a(cVar).b(cVar.a().J);
        }
        return asVar;
    }

    private static boolean a(cm cmVar, HashMap<String, TwitterUser> hashMap) {
        cm cmVar2 = cmVar.F;
        if (!(cmVar2 == null || cmVar2.C == null)) {
            TwitterUser twitterUser = (TwitterUser) hashMap.get(String.valueOf(cmVar2.C.c));
            if (twitterUser != null) {
                cmVar2.C = twitterUser;
            } else {
                bbn.a(new InvalidJsonFormatException("Missing user " + cmVar2.C.c));
                return false;
            }
        }
        return true;
    }

    public static cm a(String str, HashMap<String, cm> hashMap, HashMap<String, TwitterUser> hashMap2) {
        cm cmVar = (cm) hashMap.get(str);
        if (cmVar == null || cmVar.C == null) {
            return cmVar;
        }
        TwitterUser twitterUser = (TwitterUser) hashMap2.get(String.valueOf(cmVar.C.c));
        if (twitterUser != null) {
            cmVar.C = twitterUser;
        } else if (!cmVar.g()) {
            bbl bbl = new bbl();
            bbl.a("Missing user tweetId", Long.valueOf(cmVar.b));
            bbl.a("Missing user usersMap size", Integer.valueOf(hashMap2.size()));
            bbl.a("Missing user tweetsMap size", Integer.valueOf(hashMap.size()));
            bbl.a(new InvalidJsonFormatException("Missing user " + cmVar.C.c));
            bbn.a(bbl);
            return null;
        }
        if (!a(cmVar, (HashMap) hashMap2)) {
            return null;
        }
        if (cmVar.o == null || cmVar.o.C == null) {
            return cmVar;
        }
        twitterUser = (TwitterUser) hashMap2.get(String.valueOf(cmVar.o.C.c));
        if (twitterUser != null) {
            cmVar.o.C = twitterUser;
            if (a(cmVar.o, (HashMap) hashMap2)) {
                return cmVar;
            }
            return null;
        }
        bbn.a(new InvalidJsonFormatException("Missing original user " + cmVar.o.C.c));
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.twitter.model.timeline.e b(com.fasterxml.jackson.core.JsonParser r17, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r18) throws java.io.IOException {
        /*
        r2 = r17.a();
        r3 = 0;
        r7 = new java.util.ArrayList;
        r7.<init>();
        r8 = 0;
        r4 = 0;
        r6 = 0;
    L_0x000e:
        if (r2 == 0) goto L_0x00c3;
    L_0x0010:
        r9 = com.fasterxml.jackson.core.JsonToken.c;
        if (r2 == r9) goto L_0x00c3;
    L_0x0014:
        r9 = com.twitter.library.api.au.a;
        r2 = r2.ordinal();
        r2 = r9[r2];
        switch(r2) {
            case 1: goto L_0x00a3;
            case 2: goto L_0x004c;
            case 3: goto L_0x001f;
            case 4: goto L_0x00bd;
            case 5: goto L_0x001f;
            case 6: goto L_0x002a;
            default: goto L_0x001f;
        };
    L_0x001f:
        r2 = r3;
    L_0x0020:
        r3 = r17.a();
        r16 = r2;
        r2 = r3;
        r3 = r16;
        goto L_0x000e;
    L_0x002a:
        r2 = r17.e();
        r9 = "participants_count";
        r9 = r9.equals(r2);
        if (r9 == 0) goto L_0x003d;
    L_0x0037:
        r8 = r17.i();
        r2 = r3;
        goto L_0x0020;
    L_0x003d:
        r9 = "target_count";
        r2 = r9.equals(r2);
        if (r2 == 0) goto L_0x001f;
    L_0x0046:
        r6 = r17.i();
        r2 = r3;
        goto L_0x0020;
    L_0x004c:
        r2 = r17.e();
        r9 = "root_user_id";
        r9 = r9.equals(r2);
        if (r9 == 0) goto L_0x008f;
    L_0x0059:
        r3 = r17.g();
        r2 = r17.g();
        r0 = r18;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.core.TwitterUser) r2;
        if (r2 != 0) goto L_0x0020;
    L_0x006b:
        r9 = new com.twitter.model.json.common.InvalidJsonFormatException;
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "Root user ";
        r10 = r10.append(r11);
        r3 = r10.append(r3);
        r10 = " not in users map";
        r3 = r3.append(r10);
        r3 = r3.toString();
        r9.<init>(r3);
        defpackage.bbn.a(r9);
        goto L_0x0020;
    L_0x008f:
        r9 = "target_tweet_id";
        r2 = r9.equals(r2);
        if (r2 == 0) goto L_0x001f;
    L_0x0098:
        r2 = r17.g();
        r4 = java.lang.Long.parseLong(r2);
        r2 = r3;
        goto L_0x0020;
    L_0x00a3:
        r2 = "participant_ids";
        r9 = r17.e();
        r2 = r2.equals(r9);
        if (r2 == 0) goto L_0x00b7;
    L_0x00b0:
        r7 = c(r17, r18);
        r2 = r3;
        goto L_0x0020;
    L_0x00b7:
        r17.c();
        r2 = r3;
        goto L_0x0020;
    L_0x00bd:
        r17.c();
        r2 = r3;
        goto L_0x0020;
    L_0x00c3:
        if (r3 == 0) goto L_0x00ea;
    L_0x00c5:
        r9 = 0;
        r10 = r7.iterator();
    L_0x00ca:
        r2 = r10.hasNext();
        if (r2 == 0) goto L_0x00f0;
    L_0x00d0:
        r2 = r10.next();
        r2 = (com.twitter.model.timeline.g) r2;
        r12 = r2.b;
        r14 = r3.c;
        r2 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r2 != 0) goto L_0x00ca;
    L_0x00de:
        r2 = 1;
    L_0x00df:
        if (r2 != 0) goto L_0x00ea;
    L_0x00e1:
        r2 = 0;
        r9 = new com.twitter.model.timeline.g;
        r9.<init>(r3);
        r7.add(r2, r9);
    L_0x00ea:
        r3 = new com.twitter.model.timeline.e;
        r3.<init>(r4, r6, r7, r8);
        return r3;
    L_0x00f0:
        r2 = r9;
        goto L_0x00df;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.api.at.b(com.fasterxml.jackson.core.JsonParser, java.util.HashMap):com.twitter.model.timeline.e");
    }

    private static ArrayList<com.twitter.model.timeline.g> c(JsonParser jsonParser, HashMap<String, TwitterUser> hashMap) throws IOException {
        ArrayList<com.twitter.model.timeline.g> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    String g = jsonParser.g();
                    TwitterUser twitterUser = (TwitterUser) hashMap.get(g);
                    if (twitterUser == null) {
                        bbn.a(new InvalidJsonFormatException("Participant " + g + " not in users map"));
                        break;
                    }
                    arrayList.add(new com.twitter.model.timeline.g(twitterUser));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    public static long Q(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        long j = -1;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    j = jsonParser.j();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        if (j < 0) {
            bbn.a(new InvalidJsonFormatException("Could not parse timestamp"));
        }
        return j;
    }

    public static Boolean R(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!jsonParser.e().equals("is_device_follow")) {
                        break;
                    }
                    return Boolean.valueOf(Boolean.parseBoolean(jsonParser.g()));
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return Boolean.valueOf(false);
    }

    public static y S(JsonParser jsonParser) throws IOException {
        y yVar = new y();
        try {
            JsonToken a = jsonParser.a();
            while (a != null && a != JsonToken.c) {
                switch (au.a[a.ordinal()]) {
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (!"normalized_phone_number".equals(jsonParser.e())) {
                            break;
                        }
                        yVar.c = jsonParser.g();
                        break;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                        if (!"valid".equals(jsonParser.e())) {
                            if (!"available".equals(jsonParser.e())) {
                                break;
                            }
                            yVar.b = true;
                            break;
                        }
                        yVar.a = true;
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
        } catch (IOException e) {
        }
        return yVar;
    }

    public static String T(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"access_token".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return str;
    }

    public static String U(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"guest_token".equals(jsonParser.e())) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return str;
    }

    public static ArrayList<q> V(JsonParser jsonParser) throws IOException {
        ArrayList<q> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.e) {
            switch (au.a[a.ordinal()]) {
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    arrayList.add(aA(jsonParser));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private static q aA(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        String str2 = null;
        String str3 = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    jsonParser.c();
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    String e = jsonParser.e();
                    if (!"id".equals(e)) {
                        if (!"url".equals(e)) {
                            if (!"name".equals(e)) {
                                break;
                            }
                            str3 = jsonParser.g();
                            break;
                        }
                        str = jsonParser.g();
                        break;
                    }
                    str2 = jsonParser.g();
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new q(str2, Uri.parse(str), str3);
    }

    public static boolean W(JsonParser jsonParser) throws IOException {
        boolean z = false;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    if (!"is_numeric".equals(jsonParser.e())) {
                        break;
                    }
                    z = true;
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return z;
    }

    public static boolean X(JsonParser jsonParser) throws IOException {
        boolean z = false;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    if (!"is_valid".equals(jsonParser.e())) {
                        break;
                    }
                    z = true;
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return z;
    }

    public static x Y(JsonParser jsonParser) throws IOException {
        String str = null;
        boolean z = false;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            String e = jsonParser.e();
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"message".equals(e)) {
                        break;
                    }
                    str = jsonParser.g();
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    if (!"pass".equals(e)) {
                        break;
                    }
                    z = jsonParser.m();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return new x(z, str);
    }

    public static bpl Z(JsonParser jsonParser) throws IOException {
        JsonToken d = jsonParser.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (d != null && d != JsonToken.c) {
            JsonToken a;
            Boolean valueOf;
            String str;
            if (d == JsonToken.d && "emails".equals(jsonParser.e())) {
                a = jsonParser.a();
                while (true) {
                    if (((a != null ? 1 : 0) & (a != JsonToken.e ? 1 : 0)) != 0) {
                        if (a == JsonToken.b) {
                            valueOf = Boolean.valueOf(false);
                            a = jsonParser.a();
                            str = null;
                            while (a != null && a != JsonToken.c) {
                                switch (au.a[a.ordinal()]) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        jsonParser.c();
                                        break;
                                    case WireMessage.WIRE_CONTROL /*2*/:
                                        if (!NotificationCompatApi21.CATEGORY_EMAIL.equals(jsonParser.e())) {
                                            break;
                                        }
                                        str = jsonParser.g();
                                        break;
                                    case mx.UserView_actionButtonPaddingRight /*5*/:
                                        if (!"email_verified".equals(jsonParser.e())) {
                                            break;
                                        }
                                        valueOf = Boolean.valueOf(jsonParser.m());
                                        break;
                                    default:
                                        break;
                                }
                                a = jsonParser.a();
                            }
                            if (str != null) {
                                arrayList.add(new bpk(str, valueOf));
                            }
                        } else if (a == JsonToken.d) {
                            jsonParser.c();
                        }
                        a = jsonParser.a();
                    }
                }
            } else if (d == JsonToken.d && "phone_numbers".equals(jsonParser.e())) {
                a = jsonParser.a();
                while (true) {
                    if (((a != null ? 1 : 0) & (a != JsonToken.e ? 1 : 0)) != 0) {
                        if (a == JsonToken.b) {
                            valueOf = Boolean.valueOf(false);
                            a = jsonParser.a();
                            str = null;
                            while (a != null && a != JsonToken.c) {
                                switch (au.a[a.ordinal()]) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        jsonParser.c();
                                        break;
                                    case WireMessage.WIRE_CONTROL /*2*/:
                                        if (!"phone_number".equals(jsonParser.e())) {
                                            break;
                                        }
                                        str = jsonParser.g();
                                        break;
                                    case mx.UserView_actionButtonPaddingRight /*5*/:
                                        if (!"phone_number_verified".equals(jsonParser.e())) {
                                            break;
                                        }
                                        valueOf = Boolean.valueOf(true);
                                        break;
                                    default:
                                        break;
                                }
                                a = jsonParser.a();
                            }
                            if (str != null) {
                                arrayList2.add(new bpn(str, valueOf));
                            }
                        } else if (a == JsonToken.d) {
                            jsonParser.c();
                        }
                        a = jsonParser.a();
                    }
                }
            }
            d = jsonParser.a();
        }
        return new bpl(arrayList, arrayList2);
    }

    public static ArrayList<cbk> aa(JsonParser jsonParser) throws IOException {
        ArrayList<cbk> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"news_events".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    a = jsonParser.a();
                    while (a != null && a != JsonToken.e) {
                        switch (au.a[a.ordinal()]) {
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                arrayList.add(aB(jsonParser));
                                break;
                            default:
                                jsonParser.c();
                                break;
                        }
                        a = jsonParser.a();
                    }
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private static cbk aB(JsonParser jsonParser) throws IOException {
        cbk cbk = new cbk();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.c) {
            String e = jsonParser.e();
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (!"id".equals(e)) {
                        if (!"title".equals(e)) {
                            if (!"image_url".equals(e)) {
                                if (!"author_name".equals(e)) {
                                    if (!"article_description".equals(e)) {
                                        if (!"article_url".equals(e)) {
                                            if (!"start_time".equals(e)) {
                                                break;
                                            }
                                            cbk.g = m.a(al.b, jsonParser.g());
                                            break;
                                        }
                                        cbk.f = jsonParser.g();
                                        break;
                                    }
                                    cbk.e = jsonParser.g();
                                    break;
                                }
                                cbk.d = jsonParser.g();
                                break;
                            }
                            cbk.c = jsonParser.g();
                            break;
                        }
                        cbk.b = jsonParser.g();
                        break;
                    }
                    cbk.a = jsonParser.g();
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"author_account".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    cbk.j = (TwitterUser) g.c(jsonParser, TwitterUser.class);
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (!"tweet_count".equals(e)) {
                        break;
                    }
                    cbk.h = (long) jsonParser.i();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return cbk;
    }

    public static cbk ab(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        cbk cbk = null;
        List list = null;
        while (a != null && a != JsonToken.c) {
            switch (au.a[a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!"tweets".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    list = g.d(jsonParser, cm.class);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (!"news_event".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    cbk = aB(jsonParser);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        if (cbk == null) {
            return null;
        }
        cbk.i = list;
        return cbk;
    }

    public static JsonParser a(InputStream inputStream) throws IOException {
        JsonParser a = a.a(inputStream);
        a.a();
        return a;
    }
}
