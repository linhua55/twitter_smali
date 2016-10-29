package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: Twttr */
/* renamed from: blj */
public class blj extends t<bll, String> {
    private static final HashMap<String, Integer> a;
    private static final HashMap<String, Integer> b;

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    static {
        a = new HashMap(6);
        a.put("tweet_story", Integer.valueOf(1));
        a.put("follow_story", Integer.valueOf(6));
        a.put("topic_story", Integer.valueOf(7));
        a.put("url_story", Integer.valueOf(8));
        a.put("classic_trends_story", Integer.valueOf(9));
        a.put("news_story", Integer.valueOf(10));
        b = new HashMap(13);
        b.put("favorited_by", Integer.valueOf(2));
        b.put("retweeted_by", Integer.valueOf(3));
        b.put("shared_by", Integer.valueOf(4));
        b.put("followed_by", Integer.valueOf(5));
        b.put("author_followed_by", Integer.valueOf(13));
        b.put("photo_from_who_you_follow", Integer.valueOf(6));
        b.put("vine_from_who_you_follow", Integer.valueOf(7));
        b.put("popular_now", Integer.valueOf(8));
        b.put("happening_now", Integer.valueOf(9));
        b.put("top_photo", Integer.valueOf(10));
        b.put("top_vine", Integer.valueOf(11));
        b.put("top_tweet_in_timeline", Integer.valueOf(12));
        b.put("rare_tweet", Integer.valueOf(14));
    }

    protected String b(JsonParser jsonParser, int i) throws IOException {
        return null;
    }

    protected bll b(JsonParser jsonParser) throws IOException {
        return blj.c(jsonParser);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.bll c(com.fasterxml.jackson.core.JsonParser r8) throws java.io.IOException {
        /*
        r4 = 0;
        r5 = new java.util.ArrayList;
        r5.<init>();
        r3 = -1;
        r0 = r8.a();
        r1 = r4;
        r2 = r4;
    L_0x000d:
        if (r0 == 0) goto L_0x00dd;
    L_0x000f:
        r6 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r6) goto L_0x00dd;
    L_0x0013:
        r6 = defpackage.blk.a;
        r0 = r0.ordinal();
        r0 = r6[r0];
        switch(r0) {
            case 1: goto L_0x002b;
            case 2: goto L_0x007d;
            case 3: goto L_0x00c6;
            default: goto L_0x001e;
        };
    L_0x001e:
        r0 = r1;
        r1 = r2;
        r2 = r3;
    L_0x0021:
        r3 = r8.a();
        r7 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r7;
        goto L_0x000d;
    L_0x002b:
        r0 = r8.e();
        r6 = "twitter_objects";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0076;
    L_0x0038:
        r0 = r8.a();
        r7 = r0;
        r0 = r1;
        r1 = r2;
        r2 = r7;
    L_0x0040:
        if (r2 == 0) goto L_0x00e3;
    L_0x0042:
        r6 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r6) goto L_0x00e3;
    L_0x0046:
        r6 = com.fasterxml.jackson.core.JsonToken.START_OBJECT;
        if (r2 != r6) goto L_0x0072;
    L_0x004a:
        r2 = r8.e();
        r6 = "tweets";
        r6 = r6.equals(r2);
        if (r6 == 0) goto L_0x0060;
    L_0x0057:
        r1 = com.twitter.library.api.at.g(r8, r4);
    L_0x005b:
        r2 = r8.a();
        goto L_0x0040;
    L_0x0060:
        r6 = "users";
        r2 = r6.equals(r2);
        if (r2 == 0) goto L_0x006e;
    L_0x0069:
        r0 = com.twitter.library.api.at.N(r8);
        goto L_0x005b;
    L_0x006e:
        r8.c();
        goto L_0x005b;
    L_0x0072:
        r8.c();
        goto L_0x005b;
    L_0x0076:
        r8.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0021;
    L_0x007d:
        r0 = "stories";
        r6 = r8.e();
        r0 = r0.equals(r6);
        if (r0 == 0) goto L_0x00be;
    L_0x008a:
        if (r2 == 0) goto L_0x00be;
    L_0x008c:
        if (r1 == 0) goto L_0x00be;
    L_0x008e:
        r0 = r8.a();
    L_0x0092:
        if (r0 == 0) goto L_0x001e;
    L_0x0094:
        r6 = com.fasterxml.jackson.core.JsonToken.END_ARRAY;
        if (r0 == r6) goto L_0x001e;
    L_0x0098:
        r6 = com.fasterxml.jackson.core.JsonToken.START_OBJECT;
        if (r0 != r6) goto L_0x00ba;
    L_0x009c:
        r0 = a;
        r6 = r8.e();
        r0 = r0.get(r6);
        r0 = (java.lang.Integer) r0;
        if (r0 == 0) goto L_0x00b5;
    L_0x00aa:
        r0 = r0.intValue();
        r0 = defpackage.blj.a(r8, r0, r2, r1);
        r5.add(r0);
    L_0x00b5:
        r0 = r8.a();
        goto L_0x0092;
    L_0x00ba:
        r8.c();
        goto L_0x00b5;
    L_0x00be:
        r8.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0021;
    L_0x00c6:
        r0 = "display_count";
        r6 = r8.e();
        r0 = r0.equals(r6);
        if (r0 == 0) goto L_0x001e;
    L_0x00d3:
        r0 = r8.o();
        r7 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r7;
        goto L_0x0021;
    L_0x00dd:
        r0 = new bll;
        r0.<init>(r5, r3);
        return r0;
    L_0x00e3:
        r2 = r3;
        goto L_0x0021;
        */
        throw new UnsupportedOperationException("Method not decompiled: blj.c(com.fasterxml.jackson.core.JsonParser):bll");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static defpackage.blh a(com.fasterxml.jackson.core.JsonParser r18, int r19, java.util.HashMap<java.lang.String, com.twitter.model.core.cm> r20, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r21) throws java.io.IOException {
        /*
        r3 = 0;
        r12 = 0;
        r13 = 0;
        r14 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r4 = 0;
        r15 = 0;
        r2 = r18.a();
        r11 = 0;
        r10 = 0;
    L_0x0010:
        if (r2 == 0) goto L_0x019f;
    L_0x0012:
        r5 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r5) goto L_0x019f;
    L_0x0016:
        r5 = defpackage.blk.a;
        r2 = r2.ordinal();
        r2 = r5[r2];
        switch(r2) {
            case 1: goto L_0x002c;
            case 2: goto L_0x00d9;
            case 3: goto L_0x0021;
            case 4: goto L_0x0119;
            default: goto L_0x0021;
        };
    L_0x0021:
        r2 = r4;
    L_0x0022:
        r4 = r18.a();
        r17 = r4;
        r4 = r2;
        r2 = r17;
        goto L_0x0010;
    L_0x002c:
        r2 = r18.e();
        r5 = "metadata";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x008b;
    L_0x0039:
        r2 = r18.a();
    L_0x003d:
        if (r2 == 0) goto L_0x0021;
    L_0x003f:
        r5 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r5) goto L_0x0021;
    L_0x0043:
        r5 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
        if (r2 != r5) goto L_0x0087;
    L_0x0047:
        r2 = r18.e();
        r5 = "title";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x005d;
    L_0x0054:
        r6 = r18.g();
    L_0x0058:
        r2 = r18.a();
        goto L_0x003d;
    L_0x005d:
        r5 = "description";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x006b;
    L_0x0066:
        r7 = r18.g();
        goto L_0x0058;
    L_0x006b:
        r5 = "url";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x0079;
    L_0x0074:
        r8 = r18.g();
        goto L_0x0058;
    L_0x0079:
        r5 = "headerUrl";
        r2 = r5.equals(r2);
        if (r2 == 0) goto L_0x0058;
    L_0x0082:
        r9 = r18.g();
        goto L_0x0058;
    L_0x0087:
        r18.c();
        goto L_0x0058;
    L_0x008b:
        r5 = "header_fallback";
        r5 = r5.equals(r2);
        if (r5 == 0) goto L_0x00bc;
    L_0x0094:
        r2 = r18.a();
    L_0x0098:
        if (r2 == 0) goto L_0x0021;
    L_0x009a:
        r5 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r2 == r5) goto L_0x0021;
    L_0x009e:
        r5 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
        if (r2 != r5) goto L_0x00b8;
    L_0x00a2:
        r2 = "header_image";
        r5 = r18.e();
        r2 = r2.equals(r5);
        if (r2 == 0) goto L_0x00b3;
    L_0x00af:
        r9 = r18.g();
    L_0x00b3:
        r2 = r18.a();
        goto L_0x0098;
    L_0x00b8:
        r18.c();
        goto L_0x00b3;
    L_0x00bc:
        r5 = b;
        r2 = r5.get(r2);
        r2 = (java.lang.Integer) r2;
        if (r2 == 0) goto L_0x00d4;
    L_0x00c6:
        r2 = r2.intValue();
        r0 = r18;
        r1 = r21;
        r2 = defpackage.blj.a(r0, r2, r1);
        goto L_0x0022;
    L_0x00d4:
        r18.c();
        goto L_0x0021;
    L_0x00d9:
        r2 = r18.e();
        r5 = "tweets";
        r2 = r5.equals(r2);
        if (r2 == 0) goto L_0x0113;
    L_0x00e6:
        r2 = r18.a();
        r15 = new java.util.ArrayList;
        r15.<init>();
    L_0x00ef:
        if (r2 == 0) goto L_0x0021;
    L_0x00f1:
        r5 = com.fasterxml.jackson.core.JsonToken.END_ARRAY;
        if (r2 == r5) goto L_0x0021;
    L_0x00f5:
        r5 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
        if (r2 != r5) goto L_0x010f;
    L_0x00f9:
        r2 = r18.g();
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.core.cm) r2;
        if (r2 == 0) goto L_0x010a;
    L_0x0107:
        r15.add(r2);
    L_0x010a:
        r2 = r18.a();
        goto L_0x00ef;
    L_0x010f:
        r18.c();
        goto L_0x010a;
    L_0x0113:
        r18.c();
        r2 = r4;
        goto L_0x0022;
    L_0x0119:
        r5 = r18.e();
        r2 = r18.s();
        r16 = "tweet";
        r0 = r16;
        r16 = r0.equals(r5);
        if (r16 == 0) goto L_0x013c;
    L_0x012c:
        r2 = r18.g();
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.core.cm) r2;
        r12 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x013c:
        r16 = "in_reply_to";
        r0 = r16;
        r16 = r0.equals(r5);
        if (r16 == 0) goto L_0x0157;
    L_0x0147:
        r2 = r18.g();
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.core.cm) r2;
        r13 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x0157:
        r16 = "user";
        r0 = r16;
        r16 = r0.equals(r5);
        if (r16 == 0) goto L_0x0172;
    L_0x0162:
        r2 = r18.g();
        r0 = r21;
        r2 = r0.get(r2);
        r2 = (com.twitter.model.core.TwitterUser) r2;
        r14 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x0172:
        r16 = "story_id";
        r0 = r16;
        r16 = r0.equals(r5);
        if (r16 == 0) goto L_0x0181;
    L_0x017d:
        r3 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x0181:
        r16 = "poptart_impression";
        r0 = r16;
        r16 = r0.equals(r5);
        if (r16 == 0) goto L_0x0190;
    L_0x018c:
        r11 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x0190:
        r16 = "source";
        r0 = r16;
        r5 = r0.equals(r5);
        if (r5 == 0) goto L_0x0021;
    L_0x019b:
        r10 = r2;
        r2 = r4;
        goto L_0x0022;
    L_0x019f:
        if (r4 != 0) goto L_0x01a4;
    L_0x01a1:
        switch(r19) {
            case 9: goto L_0x01ad;
            case 10: goto L_0x01bb;
            default: goto L_0x01a4;
        };
    L_0x01a4:
        r5 = r4;
    L_0x01a5:
        r2 = new blh;
        r4 = r19;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15);
        return r2;
    L_0x01ad:
        r4 = new bli;
        r2 = 15;
        r5 = 0;
        r16 = 0;
        r0 = r16;
        r4.<init>(r2, r5, r0);
        r5 = r4;
        goto L_0x01a5;
    L_0x01bb:
        r4 = new bli;
        r2 = 16;
        r5 = 0;
        r16 = 0;
        r0 = r16;
        r4.<init>(r2, r5, r0);
        r5 = r4;
        goto L_0x01a5;
        */
        throw new UnsupportedOperationException("Method not decompiled: blj.a(com.fasterxml.jackson.core.JsonParser, int, java.util.HashMap, java.util.HashMap):blh");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static defpackage.bli a(com.fasterxml.jackson.core.JsonParser r5, int r6, java.util.HashMap<java.lang.String, com.twitter.model.core.TwitterUser> r7) throws java.io.IOException {
        /*
        r2 = 0;
        r1 = 0;
        r0 = r5.a();
    L_0x0006:
        if (r0 == 0) goto L_0x008b;
    L_0x0008:
        r3 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r3) goto L_0x008b;
    L_0x000c:
        r3 = defpackage.blk.a;
        r0 = r0.ordinal();
        r0 = r3[r0];
        switch(r0) {
            case 2: goto L_0x0045;
            case 3: goto L_0x0025;
            default: goto L_0x0017;
        };
    L_0x0017:
        r5.c();
    L_0x001a:
        r0 = r1;
        r1 = r2;
    L_0x001c:
        r2 = r5.a();
        r4 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x0006;
    L_0x0025:
        r0 = "count";
        r3 = r5.e();
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x003f;
    L_0x0032:
        r0 = "days_since_last_tweeted";
        r3 = r5.e();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x001a;
    L_0x003f:
        r0 = r5.i();
        r1 = r2;
        goto L_0x001c;
    L_0x0045:
        r0 = "users";
        r3 = r5.e();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x0085;
    L_0x0052:
        r0 = r5.a();
        r2 = new java.util.ArrayList;
        r2.<init>();
    L_0x005b:
        if (r0 == 0) goto L_0x001a;
    L_0x005d:
        r3 = com.fasterxml.jackson.core.JsonToken.END_ARRAY;
        if (r0 == r3) goto L_0x001a;
    L_0x0061:
        r3 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
        if (r0 != r3) goto L_0x0079;
    L_0x0065:
        r0 = r5.g();
        r0 = r7.get(r0);
        r0 = (com.twitter.model.core.TwitterUser) r0;
        if (r0 == 0) goto L_0x0074;
    L_0x0071:
        r2.add(r0);
    L_0x0074:
        r0 = r5.a();
        goto L_0x005b;
    L_0x0079:
        r3 = com.fasterxml.jackson.core.JsonToken.START_ARRAY;
        if (r0 == r3) goto L_0x0081;
    L_0x007d:
        r3 = com.fasterxml.jackson.core.JsonToken.START_OBJECT;
        if (r0 != r3) goto L_0x0074;
    L_0x0081:
        r5.c();
        goto L_0x0074;
    L_0x0085:
        r5.c();
        r0 = r1;
        r1 = r2;
        goto L_0x001c;
    L_0x008b:
        r0 = new bli;
        r0.<init>(r6, r1, r2);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: blj.a(com.fasterxml.jackson.core.JsonParser, int, java.util.HashMap):bli");
    }
}
