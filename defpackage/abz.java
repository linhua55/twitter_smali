package defpackage;

import android.content.Context;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
/* renamed from: abz */
public class abz extends aca {
    private final String a;

    public abz(Context context, String str, String str2, int i) {
        Context context2 = context;
        super(context2, "found_media_items", str2, bg.a().c(), i);
        this.a = str;
    }

    protected String b() {
        return "categories/" + this.a;
    }
}
