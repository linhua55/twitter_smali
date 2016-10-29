package tv.periscope.model.chat;

import java.math.BigInteger;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.SentenceType;
import tv.periscope.model.chat.MessageType.VerdictType;

/* compiled from: Twttr */
final class AutoValue_Message extends Message {
    private final String blockedMessageUUID;
    private final String body;
    private final String broadcasterBlockedMessage;
    private final String broadcasterBlockedUserId;
    private final String broadcasterBlockedUsername;
    private final BigInteger broadcasterNtp;
    private final String displayName;
    private final String initials;
    private final Integer invitedCount;
    private final Integer juryDuration;
    private final VerdictType juryVerdict;
    private final Double latitude;
    private final Double longitude;
    private final BigInteger ntp;
    private final Integer participantIndex;
    private final String profileImageUrl;
    private final String rawWireJson;
    private final ReportType reportType;
    private final String reportedMessageBody;
    private final String reportedMessageBroadcastID;
    private final String reportedMessageUUID;
    private final String reportedMessageUsername;
    private final Integer sentenceDuration;
    private final SentenceType sentenceType;
    private final String signature;
    private final Long timestamp;
    private final Double timestampPlaybackOffset;
    private final MessageType type;
    private final String userId;
    private final String username;
    private final String uuid;
    private final Integer version;
    private final String viewerBlockedMessage;
    private final String viewerBlockedUserId;
    private final String viewerBlockedUsername;

    private AutoValue_Message(Integer num, MessageType messageType, String str, Integer num2, BigInteger bigInteger, String str2, Long l, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, Double d3, Integer num3, String str9, String str10, String str11, BigInteger bigInteger2, String str12, String str13, String str14, String str15, ReportType reportType, String str16, String str17, String str18, VerdictType verdictType, String str19, Integer num4, SentenceType sentenceType, Integer num5, String str20) {
        if (num == null) {
            throw new NullPointerException("Null version");
        }
        this.version = num;
        if (messageType == null) {
            throw new NullPointerException("Null type");
        }
        this.type = messageType;
        this.userId = str;
        this.participantIndex = num2;
        this.ntp = bigInteger;
        this.uuid = str2;
        this.timestamp = l;
        this.signature = str3;
        this.username = str4;
        this.displayName = str5;
        this.initials = str6;
        this.profileImageUrl = str7;
        this.body = str8;
        this.timestampPlaybackOffset = d;
        this.latitude = d2;
        this.longitude = d3;
        this.invitedCount = num3;
        this.broadcasterBlockedMessage = str9;
        this.broadcasterBlockedUserId = str10;
        this.broadcasterBlockedUsername = str11;
        this.broadcasterNtp = bigInteger2;
        this.blockedMessageUUID = str12;
        this.viewerBlockedMessage = str13;
        this.viewerBlockedUserId = str14;
        this.viewerBlockedUsername = str15;
        this.reportType = reportType;
        this.reportedMessageUUID = str16;
        this.reportedMessageBody = str17;
        this.reportedMessageUsername = str18;
        this.juryVerdict = verdictType;
        this.reportedMessageBroadcastID = str19;
        this.juryDuration = num4;
        this.sentenceType = sentenceType;
        this.sentenceDuration = num5;
        this.rawWireJson = str20;
    }

    public Integer a() {
        return this.version;
    }

    public MessageType b() {
        return this.type;
    }

    public String c() {
        return this.userId;
    }

    public Integer d() {
        return this.participantIndex;
    }

    public BigInteger e() {
        return this.ntp;
    }

    public String f() {
        return this.uuid;
    }

    public Long g() {
        return this.timestamp;
    }

    public String h() {
        return this.signature;
    }

    public String i() {
        return this.username;
    }

    public String j() {
        return this.displayName;
    }

    public String k() {
        return this.initials;
    }

    public String l() {
        return this.profileImageUrl;
    }

    public String m() {
        return this.body;
    }

    public Double n() {
        return this.timestampPlaybackOffset;
    }

    public Double o() {
        return this.latitude;
    }

    public Double p() {
        return this.longitude;
    }

    public Integer q() {
        return this.invitedCount;
    }

    public String r() {
        return this.broadcasterBlockedMessage;
    }

    public String s() {
        return this.broadcasterBlockedUserId;
    }

    public String t() {
        return this.broadcasterBlockedUsername;
    }

    public BigInteger u() {
        return this.broadcasterNtp;
    }

    public String v() {
        return this.blockedMessageUUID;
    }

    public String w() {
        return this.viewerBlockedMessage;
    }

    public String x() {
        return this.viewerBlockedUserId;
    }

    public String y() {
        return this.viewerBlockedUsername;
    }

    public ReportType z() {
        return this.reportType;
    }

    public String A() {
        return this.reportedMessageUUID;
    }

    public String B() {
        return this.reportedMessageBody;
    }

    public String C() {
        return this.reportedMessageUsername;
    }

    public VerdictType D() {
        return this.juryVerdict;
    }

    public String E() {
        return this.reportedMessageBroadcastID;
    }

    public Integer F() {
        return this.juryDuration;
    }

    public SentenceType G() {
        return this.sentenceType;
    }

    public Integer H() {
        return this.sentenceDuration;
    }

    public String I() {
        return this.rawWireJson;
    }

    public String toString() {
        return "Message{version=" + this.version + ", " + "type=" + this.type + ", " + "userId=" + this.userId + ", " + "participantIndex=" + this.participantIndex + ", " + "ntp=" + this.ntp + ", " + "uuid=" + this.uuid + ", " + "timestamp=" + this.timestamp + ", " + "signature=" + this.signature + ", " + "username=" + this.username + ", " + "displayName=" + this.displayName + ", " + "initials=" + this.initials + ", " + "profileImageUrl=" + this.profileImageUrl + ", " + "body=" + this.body + ", " + "timestampPlaybackOffset=" + this.timestampPlaybackOffset + ", " + "latitude=" + this.latitude + ", " + "longitude=" + this.longitude + ", " + "invitedCount=" + this.invitedCount + ", " + "broadcasterBlockedMessage=" + this.broadcasterBlockedMessage + ", " + "broadcasterBlockedUserId=" + this.broadcasterBlockedUserId + ", " + "broadcasterBlockedUsername=" + this.broadcasterBlockedUsername + ", " + "broadcasterNtp=" + this.broadcasterNtp + ", " + "blockedMessageUUID=" + this.blockedMessageUUID + ", " + "viewerBlockedMessage=" + this.viewerBlockedMessage + ", " + "viewerBlockedUserId=" + this.viewerBlockedUserId + ", " + "viewerBlockedUsername=" + this.viewerBlockedUsername + ", " + "reportType=" + this.reportType + ", " + "reportedMessageUUID=" + this.reportedMessageUUID + ", " + "reportedMessageBody=" + this.reportedMessageBody + ", " + "reportedMessageUsername=" + this.reportedMessageUsername + ", " + "juryVerdict=" + this.juryVerdict + ", " + "reportedMessageBroadcastID=" + this.reportedMessageBroadcastID + ", " + "juryDuration=" + this.juryDuration + ", " + "sentenceType=" + this.sentenceType + ", " + "sentenceDuration=" + this.sentenceDuration + ", " + "rawWireJson=" + this.rawWireJson + "}";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r5 != r4) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r5 instanceof tv.periscope.model.chat.Message;
        if (r2 == 0) goto L_0x033e;
    L_0x0009:
        r5 = (tv.periscope.model.chat.Message) r5;
        r2 = r4.version;
        r3 = r5.a();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0017:
        r2 = r4.type;
        r3 = r5.b();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0023:
        r2 = r4.userId;
        if (r2 != 0) goto L_0x0170;
    L_0x0027:
        r2 = r5.c();
        if (r2 != 0) goto L_0x016d;
    L_0x002d:
        r2 = r4.participantIndex;
        if (r2 != 0) goto L_0x017e;
    L_0x0031:
        r2 = r5.d();
        if (r2 != 0) goto L_0x016d;
    L_0x0037:
        r2 = r4.ntp;
        if (r2 != 0) goto L_0x018c;
    L_0x003b:
        r2 = r5.e();
        if (r2 != 0) goto L_0x016d;
    L_0x0041:
        r2 = r4.uuid;
        if (r2 != 0) goto L_0x019a;
    L_0x0045:
        r2 = r5.f();
        if (r2 != 0) goto L_0x016d;
    L_0x004b:
        r2 = r4.timestamp;
        if (r2 != 0) goto L_0x01a8;
    L_0x004f:
        r2 = r5.g();
        if (r2 != 0) goto L_0x016d;
    L_0x0055:
        r2 = r4.signature;
        if (r2 != 0) goto L_0x01b6;
    L_0x0059:
        r2 = r5.h();
        if (r2 != 0) goto L_0x016d;
    L_0x005f:
        r2 = r4.username;
        if (r2 != 0) goto L_0x01c4;
    L_0x0063:
        r2 = r5.i();
        if (r2 != 0) goto L_0x016d;
    L_0x0069:
        r2 = r4.displayName;
        if (r2 != 0) goto L_0x01d2;
    L_0x006d:
        r2 = r5.j();
        if (r2 != 0) goto L_0x016d;
    L_0x0073:
        r2 = r4.initials;
        if (r2 != 0) goto L_0x01e0;
    L_0x0077:
        r2 = r5.k();
        if (r2 != 0) goto L_0x016d;
    L_0x007d:
        r2 = r4.profileImageUrl;
        if (r2 != 0) goto L_0x01ee;
    L_0x0081:
        r2 = r5.l();
        if (r2 != 0) goto L_0x016d;
    L_0x0087:
        r2 = r4.body;
        if (r2 != 0) goto L_0x01fc;
    L_0x008b:
        r2 = r5.m();
        if (r2 != 0) goto L_0x016d;
    L_0x0091:
        r2 = r4.timestampPlaybackOffset;
        if (r2 != 0) goto L_0x020a;
    L_0x0095:
        r2 = r5.n();
        if (r2 != 0) goto L_0x016d;
    L_0x009b:
        r2 = r4.latitude;
        if (r2 != 0) goto L_0x0218;
    L_0x009f:
        r2 = r5.o();
        if (r2 != 0) goto L_0x016d;
    L_0x00a5:
        r2 = r4.longitude;
        if (r2 != 0) goto L_0x0226;
    L_0x00a9:
        r2 = r5.p();
        if (r2 != 0) goto L_0x016d;
    L_0x00af:
        r2 = r4.invitedCount;
        if (r2 != 0) goto L_0x0234;
    L_0x00b3:
        r2 = r5.q();
        if (r2 != 0) goto L_0x016d;
    L_0x00b9:
        r2 = r4.broadcasterBlockedMessage;
        if (r2 != 0) goto L_0x0242;
    L_0x00bd:
        r2 = r5.r();
        if (r2 != 0) goto L_0x016d;
    L_0x00c3:
        r2 = r4.broadcasterBlockedUserId;
        if (r2 != 0) goto L_0x0250;
    L_0x00c7:
        r2 = r5.s();
        if (r2 != 0) goto L_0x016d;
    L_0x00cd:
        r2 = r4.broadcasterBlockedUsername;
        if (r2 != 0) goto L_0x025e;
    L_0x00d1:
        r2 = r5.t();
        if (r2 != 0) goto L_0x016d;
    L_0x00d7:
        r2 = r4.broadcasterNtp;
        if (r2 != 0) goto L_0x026c;
    L_0x00db:
        r2 = r5.u();
        if (r2 != 0) goto L_0x016d;
    L_0x00e1:
        r2 = r4.blockedMessageUUID;
        if (r2 != 0) goto L_0x027a;
    L_0x00e5:
        r2 = r5.v();
        if (r2 != 0) goto L_0x016d;
    L_0x00eb:
        r2 = r4.viewerBlockedMessage;
        if (r2 != 0) goto L_0x0288;
    L_0x00ef:
        r2 = r5.w();
        if (r2 != 0) goto L_0x016d;
    L_0x00f5:
        r2 = r4.viewerBlockedUserId;
        if (r2 != 0) goto L_0x0296;
    L_0x00f9:
        r2 = r5.x();
        if (r2 != 0) goto L_0x016d;
    L_0x00ff:
        r2 = r4.viewerBlockedUsername;
        if (r2 != 0) goto L_0x02a4;
    L_0x0103:
        r2 = r5.y();
        if (r2 != 0) goto L_0x016d;
    L_0x0109:
        r2 = r4.reportType;
        if (r2 != 0) goto L_0x02b2;
    L_0x010d:
        r2 = r5.z();
        if (r2 != 0) goto L_0x016d;
    L_0x0113:
        r2 = r4.reportedMessageUUID;
        if (r2 != 0) goto L_0x02c0;
    L_0x0117:
        r2 = r5.A();
        if (r2 != 0) goto L_0x016d;
    L_0x011d:
        r2 = r4.reportedMessageBody;
        if (r2 != 0) goto L_0x02ce;
    L_0x0121:
        r2 = r5.B();
        if (r2 != 0) goto L_0x016d;
    L_0x0127:
        r2 = r4.reportedMessageUsername;
        if (r2 != 0) goto L_0x02dc;
    L_0x012b:
        r2 = r5.C();
        if (r2 != 0) goto L_0x016d;
    L_0x0131:
        r2 = r4.juryVerdict;
        if (r2 != 0) goto L_0x02ea;
    L_0x0135:
        r2 = r5.D();
        if (r2 != 0) goto L_0x016d;
    L_0x013b:
        r2 = r4.reportedMessageBroadcastID;
        if (r2 != 0) goto L_0x02f8;
    L_0x013f:
        r2 = r5.E();
        if (r2 != 0) goto L_0x016d;
    L_0x0145:
        r2 = r4.juryDuration;
        if (r2 != 0) goto L_0x0306;
    L_0x0149:
        r2 = r5.F();
        if (r2 != 0) goto L_0x016d;
    L_0x014f:
        r2 = r4.sentenceType;
        if (r2 != 0) goto L_0x0314;
    L_0x0153:
        r2 = r5.G();
        if (r2 != 0) goto L_0x016d;
    L_0x0159:
        r2 = r4.sentenceDuration;
        if (r2 != 0) goto L_0x0322;
    L_0x015d:
        r2 = r5.H();
        if (r2 != 0) goto L_0x016d;
    L_0x0163:
        r2 = r4.rawWireJson;
        if (r2 != 0) goto L_0x0330;
    L_0x0167:
        r2 = r5.I();
        if (r2 == 0) goto L_0x0004;
    L_0x016d:
        r0 = r1;
        goto L_0x0004;
    L_0x0170:
        r2 = r4.userId;
        r3 = r5.c();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x017c:
        goto L_0x002d;
    L_0x017e:
        r2 = r4.participantIndex;
        r3 = r5.d();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x018a:
        goto L_0x0037;
    L_0x018c:
        r2 = r4.ntp;
        r3 = r5.e();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0198:
        goto L_0x0041;
    L_0x019a:
        r2 = r4.uuid;
        r3 = r5.f();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01a6:
        goto L_0x004b;
    L_0x01a8:
        r2 = r4.timestamp;
        r3 = r5.g();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01b4:
        goto L_0x0055;
    L_0x01b6:
        r2 = r4.signature;
        r3 = r5.h();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01c2:
        goto L_0x005f;
    L_0x01c4:
        r2 = r4.username;
        r3 = r5.i();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01d0:
        goto L_0x0069;
    L_0x01d2:
        r2 = r4.displayName;
        r3 = r5.j();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01de:
        goto L_0x0073;
    L_0x01e0:
        r2 = r4.initials;
        r3 = r5.k();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01ec:
        goto L_0x007d;
    L_0x01ee:
        r2 = r4.profileImageUrl;
        r3 = r5.l();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x01fa:
        goto L_0x0087;
    L_0x01fc:
        r2 = r4.body;
        r3 = r5.m();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0208:
        goto L_0x0091;
    L_0x020a:
        r2 = r4.timestampPlaybackOffset;
        r3 = r5.n();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0216:
        goto L_0x009b;
    L_0x0218:
        r2 = r4.latitude;
        r3 = r5.o();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0224:
        goto L_0x00a5;
    L_0x0226:
        r2 = r4.longitude;
        r3 = r5.p();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0232:
        goto L_0x00af;
    L_0x0234:
        r2 = r4.invitedCount;
        r3 = r5.q();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0240:
        goto L_0x00b9;
    L_0x0242:
        r2 = r4.broadcasterBlockedMessage;
        r3 = r5.r();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x024e:
        goto L_0x00c3;
    L_0x0250:
        r2 = r4.broadcasterBlockedUserId;
        r3 = r5.s();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x025c:
        goto L_0x00cd;
    L_0x025e:
        r2 = r4.broadcasterBlockedUsername;
        r3 = r5.t();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x026a:
        goto L_0x00d7;
    L_0x026c:
        r2 = r4.broadcasterNtp;
        r3 = r5.u();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0278:
        goto L_0x00e1;
    L_0x027a:
        r2 = r4.blockedMessageUUID;
        r3 = r5.v();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0286:
        goto L_0x00eb;
    L_0x0288:
        r2 = r4.viewerBlockedMessage;
        r3 = r5.w();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0294:
        goto L_0x00f5;
    L_0x0296:
        r2 = r4.viewerBlockedUserId;
        r3 = r5.x();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02a2:
        goto L_0x00ff;
    L_0x02a4:
        r2 = r4.viewerBlockedUsername;
        r3 = r5.y();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02b0:
        goto L_0x0109;
    L_0x02b2:
        r2 = r4.reportType;
        r3 = r5.z();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02be:
        goto L_0x0113;
    L_0x02c0:
        r2 = r4.reportedMessageUUID;
        r3 = r5.A();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02cc:
        goto L_0x011d;
    L_0x02ce:
        r2 = r4.reportedMessageBody;
        r3 = r5.B();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02da:
        goto L_0x0127;
    L_0x02dc:
        r2 = r4.reportedMessageUsername;
        r3 = r5.C();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02e8:
        goto L_0x0131;
    L_0x02ea:
        r2 = r4.juryVerdict;
        r3 = r5.D();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x02f6:
        goto L_0x013b;
    L_0x02f8:
        r2 = r4.reportedMessageBroadcastID;
        r3 = r5.E();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0304:
        goto L_0x0145;
    L_0x0306:
        r2 = r4.juryDuration;
        r3 = r5.F();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0312:
        goto L_0x014f;
    L_0x0314:
        r2 = r4.sentenceType;
        r3 = r5.G();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x0320:
        goto L_0x0159;
    L_0x0322:
        r2 = r4.sentenceDuration;
        r3 = r5.H();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x032e:
        goto L_0x0163;
    L_0x0330:
        r2 = r4.rawWireJson;
        r3 = r5.I();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x016d;
    L_0x033c:
        goto L_0x0004;
    L_0x033e:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.chat.AutoValue_Message.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.sentenceDuration == null ? 0 : this.sentenceDuration.hashCode()) ^ (((this.sentenceType == null ? 0 : this.sentenceType.hashCode()) ^ (((this.juryDuration == null ? 0 : this.juryDuration.hashCode()) ^ (((this.reportedMessageBroadcastID == null ? 0 : this.reportedMessageBroadcastID.hashCode()) ^ (((this.juryVerdict == null ? 0 : this.juryVerdict.hashCode()) ^ (((this.reportedMessageUsername == null ? 0 : this.reportedMessageUsername.hashCode()) ^ (((this.reportedMessageBody == null ? 0 : this.reportedMessageBody.hashCode()) ^ (((this.reportedMessageUUID == null ? 0 : this.reportedMessageUUID.hashCode()) ^ (((this.reportType == null ? 0 : this.reportType.hashCode()) ^ (((this.viewerBlockedUsername == null ? 0 : this.viewerBlockedUsername.hashCode()) ^ (((this.viewerBlockedUserId == null ? 0 : this.viewerBlockedUserId.hashCode()) ^ (((this.viewerBlockedMessage == null ? 0 : this.viewerBlockedMessage.hashCode()) ^ (((this.blockedMessageUUID == null ? 0 : this.blockedMessageUUID.hashCode()) ^ (((this.broadcasterNtp == null ? 0 : this.broadcasterNtp.hashCode()) ^ (((this.broadcasterBlockedUsername == null ? 0 : this.broadcasterBlockedUsername.hashCode()) ^ (((this.broadcasterBlockedUserId == null ? 0 : this.broadcasterBlockedUserId.hashCode()) ^ (((this.broadcasterBlockedMessage == null ? 0 : this.broadcasterBlockedMessage.hashCode()) ^ (((this.invitedCount == null ? 0 : this.invitedCount.hashCode()) ^ (((this.longitude == null ? 0 : this.longitude.hashCode()) ^ (((this.latitude == null ? 0 : this.latitude.hashCode()) ^ (((this.timestampPlaybackOffset == null ? 0 : this.timestampPlaybackOffset.hashCode()) ^ (((this.body == null ? 0 : this.body.hashCode()) ^ (((this.profileImageUrl == null ? 0 : this.profileImageUrl.hashCode()) ^ (((this.initials == null ? 0 : this.initials.hashCode()) ^ (((this.displayName == null ? 0 : this.displayName.hashCode()) ^ (((this.username == null ? 0 : this.username.hashCode()) ^ (((this.signature == null ? 0 : this.signature.hashCode()) ^ (((this.timestamp == null ? 0 : this.timestamp.hashCode()) ^ (((this.uuid == null ? 0 : this.uuid.hashCode()) ^ (((this.ntp == null ? 0 : this.ntp.hashCode()) ^ (((this.participantIndex == null ? 0 : this.participantIndex.hashCode()) ^ (((this.userId == null ? 0 : this.userId.hashCode()) ^ ((((this.version.hashCode() ^ 1000003) * 1000003) ^ this.type.hashCode()) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003;
        if (this.rawWireJson != null) {
            i = this.rawWireJson.hashCode();
        }
        return hashCode ^ i;
    }
}
