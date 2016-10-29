package tv.periscope.chatman.model;

import tv.periscope.model.chat.MessageType.SentenceType;

/* compiled from: Twttr */
final class c extends Ban {
    private final SentenceType a;
    private final int b;

    private c(SentenceType sentenceType, int i) {
        if (sentenceType == null) {
            throw new NullPointerException("Null sentenceType");
        }
        this.a = sentenceType;
        this.b = i;
    }

    public SentenceType a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String toString() {
        return "Ban{sentenceType=" + this.a + ", " + "duration=" + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ban)) {
            return false;
        }
        Ban ban = (Ban) obj;
        if (this.a.equals(ban.a()) && this.b == ban.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b;
    }
}
