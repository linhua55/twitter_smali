package tv.periscope.model.chat;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public enum MessageType {
    Unknown(0, ControlType.a, Throttle.a, false),
    Chat(1, ControlType.a, Throttle.c, false),
    Heart(2, ControlType.a, Throttle.b, false),
    Join(3, ControlType.a, Throttle.d, false),
    Location(4, ControlType.c, Throttle.a, false),
    BroadcastEnded(5, ControlType.c, Throttle.c, false),
    InviteFollowers(6, ControlType.a, Throttle.c, false),
    BroadcastStartedLocally(7, ControlType.b, Throttle.a, false),
    BroadcasterUploadedReplay(8, ControlType.c, Throttle.c, false),
    Timestamp(9, ControlType.c, Throttle.a, false),
    LocalPromptToFollowBroadcaster(10, ControlType.b, Throttle.a, false),
    LocalPromptToShareBroadcast(11, ControlType.b, Throttle.a, false),
    BroadcasterBlockedViewer(12, ControlType.c, Throttle.a, true),
    SharedOnTwitter(13, ControlType.a, Throttle.c, true),
    ViewerBlock(14, ControlType.a, Throttle.a, true),
    SharedOnFacebook(15, ControlType.a, Throttle.c, true),
    Screenshot(16, ControlType.a, Throttle.c, true),
    LocalPromptReplayScrubbing(17, ControlType.b, Throttle.a, false),
    ActiveJuror(18, ControlType.a, Throttle.a, true),
    ActiveJurorVote(19, ControlType.a, Throttle.a, true),
    ModeratorVerdict(20, ControlType.a, Throttle.a, true),
    ReportViewer(21, ControlType.a, Throttle.a, true),
    LocalPromptModeration(22, ControlType.b, Throttle.a, false),
    BroadcasterScreenDrawing(23, ControlType.a, Throttle.a, false),
    LocalPromptMutualsInChat(24, ControlType.b, Throttle.a, false),
    LocalPromptConviction(25, ControlType.b, Throttle.a, false),
    SelectedJuror(26, ControlType.a, Throttle.a, true),
    JuryVerdict(27, ControlType.a, Throttle.a, true),
    VoteTimeout(28, ControlType.a, Throttle.a, true),
    Sentence(29, ControlType.a, Throttle.a, true);
    
    private static final Map<Integer, MessageType> E;
    public final ControlType controlType;
    public final boolean forceVerify;
    public final Throttle throttle;
    public final int value;

    /* compiled from: Twttr */
    public enum ControlType {
        public static final ControlType a;
        public static final ControlType b;
        public static final ControlType c;
        private static final /* synthetic */ ControlType[] d;

        private ControlType(String str, int i) {
        }

        public static ControlType valueOf(String str) {
            return (ControlType) Enum.valueOf(ControlType.class, str);
        }

        public static ControlType[] values() {
            return (ControlType[]) d.clone();
        }

        static {
            a = new ControlType("User", 0);
            b = new ControlType("System", 1);
            c = new ControlType("Broadcaster", 2);
            d = new ControlType[]{a, b, c};
        }
    }

    /* compiled from: Twttr */
    public enum ReportType {
        public static final ReportType a;
        public static final ReportType b;
        public static final ReportType c;
        public static final ReportType d;
        private static final /* synthetic */ ReportType[] e;
        public final int value;

        public static ReportType valueOf(String str) {
            return (ReportType) Enum.valueOf(ReportType.class, str);
        }

        public static ReportType[] values() {
            return (ReportType[]) e.clone();
        }

        static {
            a = new ReportType("Unknown", 0, 0);
            b = new ReportType("Abusive", 1, 1);
            c = new ReportType("Spam", 2, 2);
            d = new ReportType("Other", 3, 3);
            e = new ReportType[]{a, b, c, d};
        }

        private ReportType(String str, int i, int i2) {
            this.value = i2;
        }

        public static ReportType a(int i) {
            if (b.value == i) {
                return b;
            }
            if (c.value == i) {
                return c;
            }
            if (d.value == i) {
                return d;
            }
            return a;
        }
    }

    /* compiled from: Twttr */
    public enum SentenceType {
        public static final SentenceType a;
        public static final SentenceType b;
        public static final SentenceType c;
        public static final SentenceType d;
        public static final SentenceType e;
        private static final /* synthetic */ SentenceType[] f;
        public final int value;

        public static SentenceType valueOf(String str) {
            return (SentenceType) Enum.valueOf(SentenceType.class, str);
        }

        public static SentenceType[] values() {
            return (SentenceType[]) f.clone();
        }

        static {
            a = new SentenceType("Unknown", 0, 0);
            b = new SentenceType("CommentingSuspended", 1, 1);
            c = new SentenceType("CommentingDisabled", 2, 2);
            d = new SentenceType("GlobalCommentingSuspended", 3, 3);
            e = new SentenceType("GlobalCommentingDisabled", 4, 4);
            f = new SentenceType[]{a, b, c, d, e};
        }

        private SentenceType(String str, int i, int i2) {
            this.value = i2;
        }

        public static SentenceType a(int i) {
            if (b.value == i) {
                return b;
            }
            if (c.value == i) {
                return c;
            }
            if (d.value == i) {
                return d;
            }
            if (e.value == i) {
                return e;
            }
            return a;
        }
    }

    /* compiled from: Twttr */
    public enum Throttle {
        public static final Throttle a;
        public static final Throttle b;
        public static final Throttle c;
        public static final Throttle d;
        private static final /* synthetic */ Throttle[] e;
        public final long deliveryThresholdMs;
        public final long duration;
        public final int minQueueSizeForDrop;

        public static Throttle valueOf(String str) {
            return (Throttle) Enum.valueOf(Throttle.class, str);
        }

        public static Throttle[] values() {
            return (Throttle[]) e.clone();
        }

        static {
            a = new Throttle("None", 0, 0, 0);
            b = new Throttle("Heart", 1, 200, 30000);
            c = new Throttle("Channel", 2, 300, 15000);
            d = new Throttle("Join", 3, 10, 0);
            e = new Throttle[]{a, b, c, d};
        }

        private Throttle(String str, int i, long j, long j2) {
            this.duration = j;
            if (j > 0) {
                this.minQueueSizeForDrop = (int) (j2 / j);
            } else {
                this.minQueueSizeForDrop = 0;
            }
            if (j2 > 0) {
                this.deliveryThresholdMs = j2;
            } else {
                this.deliveryThresholdMs = 0;
            }
        }
    }

    /* compiled from: Twttr */
    public enum VerdictType {
        public static final VerdictType a;
        public static final VerdictType b;
        public static final VerdictType c;
        public static final VerdictType d;
        public static final VerdictType e;
        private static final /* synthetic */ VerdictType[] f;
        public final int value;

        public static VerdictType valueOf(String str) {
            return (VerdictType) Enum.valueOf(VerdictType.class, str);
        }

        public static VerdictType[] values() {
            return (VerdictType[]) f.clone();
        }

        static {
            a = new VerdictType("Unknown", 0, 0);
            b = new VerdictType("NotSure", 1, 1);
            c = new VerdictType("LooksOk", 2, 2);
            d = new VerdictType("Abusive", 3, 3);
            e = new VerdictType("Spam", 4, 4);
            f = new VerdictType[]{a, b, c, d, e};
        }

        private VerdictType(String str, int i, int i2) {
            this.value = i2;
        }

        public static VerdictType a(int i) {
            if (b.value == i) {
                return b;
            }
            if (c.value == i) {
                return c;
            }
            if (d.value == i) {
                return d;
            }
            if (e.value == i) {
                return e;
            }
            return a;
        }
    }

    /* compiled from: Twttr */
    public enum VoteType {
        public static final VoteType a;
        public static final VoteType b;
        public static final VoteType c;
        public static final VoteType d;
        private static final /* synthetic */ VoteType[] e;
        public final int value;

        public static VoteType valueOf(String str) {
            return (VoteType) Enum.valueOf(VoteType.class, str);
        }

        public static VoteType[] values() {
            return (VoteType[]) e.clone();
        }

        static {
            a = new VoteType("Unknown", 0, 0);
            b = new VoteType("NotSure", 1, 1);
            c = new VoteType("LooksOK", 2, 2);
            d = new VoteType("NotOK", 3, 3);
            e = new VoteType[]{a, b, c, d};
        }

        private VoteType(String str, int i, int i2) {
            this.value = i2;
        }
    }

    static {
        E = new HashMap();
        MessageType[] values = values();
        int length = values.length;
        int i;
        while (i < length) {
            MessageType messageType = values[i];
            E.put(Integer.valueOf(messageType.value), messageType);
            i++;
        }
    }

    private MessageType(int i, ControlType controlType, Throttle throttle, boolean z) {
        this.controlType = controlType;
        this.forceVerify = z;
        this.throttle = throttle;
        this.value = i;
    }

    public static MessageType a(int i) {
        MessageType messageType = (MessageType) E.get(Integer.valueOf(i));
        if (messageType == null) {
            return Unknown;
        }
        return messageType;
    }
}
