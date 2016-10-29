package defpackage;

import android.content.Context;
import byi;
import com.twitter.library.client.Session;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bmg */
public class bmg extends bmh {
    public bmg(Context context, byi byi, Session session, List<String> list) {
        super(context, byi, session, list);
    }

    public String e() {
        return "app:twitter_event:moments:subscribe_request";
    }

    protected String b() {
        return "subscribe";
    }
}
