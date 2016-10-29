package tv.periscope.model.chat;

/* compiled from: Twttr */
public abstract class ChatEvent {
    public abstract Message a();

    public static ChatEvent a(Message message) {
        return new a(message);
    }
}
