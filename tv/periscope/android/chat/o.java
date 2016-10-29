package tv.periscope.android.chat;

import java.math.BigInteger;
import java.util.Comparator;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
class o implements Comparator<Message> {
    o() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Message) obj, (Message) obj2);
    }

    public int a(Message message, Message message2) {
        return b(message, message2);
    }

    private int b(Message message, Message message2) {
        BigInteger e = message.e();
        BigInteger e2 = message2.e();
        if (e == null && e2 == null) {
            return 0;
        }
        if (e == null) {
            return -1;
        }
        if (e2 == null) {
            return 1;
        }
        return e.compareTo(e2);
    }
}
