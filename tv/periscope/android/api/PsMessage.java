package tv.periscope.android.api;

import android.support.v7.recyclerview.BuildConfig;
import defpackage.op;
import java.math.BigInteger;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.Sender;
import tv.periscope.chatman.model.q;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.SentenceType;
import tv.periscope.model.chat.MessageType.VerdictType;

/* compiled from: Twttr */
public class PsMessage {
    @op(a = "blockedMessageUUID")
    public final String blockedMessageUUID;
    @op(a = "body")
    public final String body;
    @op(a = "broadcasterBlockedMessageBody")
    public final String broadcasterBlockedMessage;
    @op(a = "broadcasterBlockedRemoteID")
    public final String broadcasterBlockedUserId;
    @op(a = "broadcasterBlockedUsername")
    public final String broadcasterBlockedUsername;
    @op(a = "ntpForBroadcasterFrame")
    public final BigInteger broadcasterNtp;
    @op(a = "displayName")
    public final String displayName;
    @op(a = "initials")
    public final String initials;
    @op(a = "invited_count")
    public final Integer invitedCount;
    @op(a = "jury_duration")
    public final Long juryDuration;
    @op(a = "verdict")
    public final int juryVerdict;
    @op(a = "lat")
    public final Double latitude;
    @op(a = "lng")
    public final Double longitude;
    @op(a = "ntpForLiveFrame")
    public final BigInteger ntpForLiveFrame;
    @op(a = "participant_index")
    public final Integer participantIndex;
    @op(a = "profileImageURL")
    public final String profileImageUrl;
    @op(a = "report_type")
    public final int reportType;
    @op(a = "message_body")
    public final String reportedMessageBody;
    @op(a = "broadcast_id")
    public final String reportedMessageBroadcastID;
    @op(a = "message_uuid")
    public final String reportedMessageUUID;
    @op(a = "sentence_duration")
    public final Long sentenceDuration;
    @op(a = "sentence_type")
    public final Integer sentenceType;
    @op(a = "signature")
    public final String signature;
    @op(a = "timestamp")
    public final Long timestamp;
    @op(a = "timestampPlaybackOffset")
    public final Double timestampPlaybackOffset;
    @op(a = "type")
    public final int type;
    @op(a = "remoteID")
    public final String userId;
    @op(a = "username")
    public final String username;
    @op(a = "uuid")
    public final String uuid;
    @op(a = "v")
    public final Integer version;
    @op(a = "viewerBlockedMessage")
    public final String viewerBlockedMessage;
    @op(a = "viewerBlockedUserId")
    public final String viewerBlockedUserId;
    @op(a = "viewerBlockedUsername")
    public final String viewerBlockedUsername;

    public PsMessage(Message message) {
        this.type = message.b().ordinal();
        this.participantIndex = message.d();
        this.version = message.a();
        this.uuid = message.f();
        this.ntpForLiveFrame = message.e();
        this.body = message.m();
        this.username = message.i();
        this.profileImageUrl = message.l();
        this.initials = message.k();
        this.timestamp = message.g();
        this.signature = message.h();
        this.displayName = message.j();
        this.userId = message.c();
        this.timestampPlaybackOffset = message.n();
        this.latitude = message.o();
        this.longitude = message.p();
        this.invitedCount = message.q();
        this.broadcasterBlockedMessage = message.r();
        this.broadcasterBlockedUserId = message.s();
        this.broadcasterBlockedUsername = message.t();
        this.broadcasterNtp = message.u();
        this.blockedMessageUUID = message.v();
        this.viewerBlockedMessage = message.w();
        this.viewerBlockedUserId = message.x();
        this.viewerBlockedUsername = message.y();
        this.reportType = safe(message.z()).value;
        this.reportedMessageUUID = message.A();
        this.reportedMessageBody = message.B();
        this.juryVerdict = safe(message.D()).value;
        this.reportedMessageBroadcastID = message.E();
        this.juryDuration = Long.valueOf(TimeUnit.NANOSECONDS.convert((long) safe(message.F()).intValue(), TimeUnit.MILLISECONDS));
        this.sentenceType = Integer.valueOf(safe(message.G()).value);
        this.sentenceDuration = Long.valueOf(TimeUnit.NANOSECONDS.convert((long) safe(message.H()).intValue(), TimeUnit.MILLISECONDS));
    }

    public Message toMessage(q qVar) {
        Sender c = qVar.c();
        return Message.L().a(safe(this.version)).a(MessageType.a(this.type)).a(safe(c.userId)).b(safe(c.participantIndex)).a(safe(this.ntpForLiveFrame)).b(safe(this.uuid)).a(safe(this.timestamp)).c(safe(c.username)).d(safe(c.displayName)).f(safe(c.profileImageUrl)).g(safe(this.body)).a(safe(this.timestampPlaybackOffset)).b(safe(this.latitude)).c(safe(this.longitude)).c(safe(this.invitedCount)).h(safe(this.broadcasterBlockedMessage)).i(safe(this.broadcasterBlockedUserId)).j(safe(this.broadcasterBlockedUsername)).b(safe(this.broadcasterNtp)).k(safe(this.blockedMessageUUID)).l(this.viewerBlockedMessage).m(this.viewerBlockedUserId).n(this.viewerBlockedUsername).a(ReportType.a(safe(Integer.valueOf(this.reportType)).intValue())).o(this.reportedMessageUUID).p(this.reportedMessageBody).a(VerdictType.a(safe(Integer.valueOf(this.juryVerdict)).intValue())).q(this.reportedMessageBroadcastID).d(Integer.valueOf((int) TimeUnit.MILLISECONDS.convert(safe(this.juryDuration).longValue(), TimeUnit.NANOSECONDS))).a(SentenceType.a(safe(this.sentenceType).intValue())).e(Integer.valueOf((int) TimeUnit.MILLISECONDS.convert(safe(this.sentenceDuration).longValue(), TimeUnit.NANOSECONDS))).r(qVar.e()).a();
    }

    private ReportType safe(ReportType reportType) {
        if (reportType == null) {
            return ReportType.a;
        }
        return reportType;
    }

    private VerdictType safe(VerdictType verdictType) {
        if (verdictType == null) {
            return VerdictType.a;
        }
        return verdictType;
    }

    private SentenceType safe(SentenceType sentenceType) {
        if (sentenceType == null) {
            return SentenceType.a;
        }
        return sentenceType;
    }

    private Long safe(Long l) {
        if (l == null) {
            return Long.valueOf(0);
        }
        return l;
    }

    private Integer safe(Integer num) {
        if (num == null) {
            return Integer.valueOf(0);
        }
        return num;
    }

    private Double safe(Double d) {
        if (d == null) {
            return Double.valueOf(0.0d);
        }
        return d;
    }

    private BigInteger safe(BigInteger bigInteger) {
        if (bigInteger == null) {
            return BigInteger.ZERO;
        }
        return bigInteger;
    }

    private String safe(String str) {
        if (str == null) {
            return BuildConfig.VERSION_NAME;
        }
        return str;
    }
}
