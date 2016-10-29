package tv.periscope.chatman.api;

import dde;
import defpackage.op;
import java.util.List;

/* compiled from: Twttr */
public class ControlMessage implements Kind {
    public static final int CONTROL_BAN = 8;
    public static final int CONTROL_JOIN = 1;
    public static final int CONTROL_LEAVE = 2;
    public static final int CONTROL_PRESENCE = 4;
    public static final int CONTROL_ROSTER = 3;
    @op(a = "body")
    public final String body;
    @op(a = "kind")
    public final int bodyKind;

    /* compiled from: Twttr */
    public class Ban implements Kind {
        @op(a = "ban_type")
        public final int banType;
        @op(a = "duration")
        public final long duration;
        @op(a = "room")
        public final String room;

        public Ban(String str, int i, long j) {
            this.room = str;
            this.banType = i;
            this.duration = j;
        }

        public int kind() {
            return ControlMessage.CONTROL_BAN;
        }
    }

    /* compiled from: Twttr */
    public class Join implements Kind {
        @op(a = "room")
        public final String room;

        public Join(String str) {
            this.room = str;
        }

        public int kind() {
            return ControlMessage.CONTROL_JOIN;
        }

        public String toString() {
            return "join: " + this.room;
        }
    }

    /* compiled from: Twttr */
    public class Leave implements Kind {
        @op(a = "room")
        public final String room;

        public Leave(String str) {
            this.room = str;
        }

        public int kind() {
            return ControlMessage.CONTROL_LEAVE;
        }

        public String toString() {
            return "leave: " + this.room;
        }
    }

    /* compiled from: Twttr */
    public class Presence implements Kind {
        public static final int TYPE_JOIN = 1;
        public static final int TYPE_LEAVE = 2;
        @op(a = "occupancy")
        public final int occupancy;
        @op(a = "room")
        public final String room;
        @op(a = "total_participants")
        public final int totalParticipants;
        @op(a = "type")
        public final int type;

        public Presence(String str, int i, int i2, int i3) {
            this.room = str;
            this.occupancy = i;
            this.type = i2;
            this.totalParticipants = i3;
        }

        public int kind() {
            return ControlMessage.CONTROL_PRESENCE;
        }

        public String toString() {
            return "presence: room=" + this.room + ", occupancy=" + this.occupancy + ", type=" + this.type + ", totalParticipants=" + this.totalParticipants;
        }
    }

    /* compiled from: Twttr */
    public class Roster implements Kind {
        @op(a = "occupants")
        public final List<Occupant> occupants;
        @op(a = "room")
        public final String room;

        public Roster(String str) {
            this.room = str;
            this.occupants = null;
        }

        public int kind() {
            return ControlMessage.CONTROL_ROSTER;
        }
    }

    ControlMessage(int i, String str) {
        this.body = str;
        this.bodyKind = i;
    }

    public static ControlMessage create(Kind kind) {
        return new ControlMessage(kind.kind(), dde.a.a(kind));
    }

    public int kind() {
        return CONTROL_LEAVE;
    }

    public String toString() {
        return "ctrl kind=" + this.bodyKind + ", body=" + this.body;
    }
}
