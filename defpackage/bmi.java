package defpackage;

import android.content.Context;
import byi;
import com.twitter.library.client.Session;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bmi */
public class bmi extends bmh {
    public bmi(Context context, byi byi, Session session, List<String> list) {
        super(context, byi, session, list);
    }

    public String e() {
        return "app:twitter_event:moments:unsubscribe_request";
    }

    protected String b() {
        return "unsubscribe";
    }
}
