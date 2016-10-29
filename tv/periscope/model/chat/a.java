package tv.periscope.model.chat;

/* compiled from: Twttr */
final class a extends ChatEvent {
    private final Message a;

    a(Message message) {
        if (message == null) {
            throw new NullPointerException("Null message");
        }
        this.a = message;
    }

    public Message a() {
        return this.a;
    }

    public String toString() {
        return "ChatEvent{message=" + this.a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChatEvent)) {
            return false;
        }
        return this.a.equals(((ChatEvent) obj).a());
    }

    public int hashCode() {
        return 1000003 ^ this.a.hashCode();
    }
}
