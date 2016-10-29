package com.twitter.android.commerce.network;

import android.content.Context;
import android.os.Bundle;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class e {
    private Session a;

    public e(Context context, Bundle bundle) {
        this.a = bg.a().c();
        if (bundle != null) {
            String string = bundle.getString("commerce_session_id");
            if (aj.b((CharSequence) string)) {
                this.a = bg.a().b(string);
            }
        }
    }

    public Session a() {
        return this.a;
    }

    public static void a(Bundle bundle, String str) {
        bundle.putString("commerce_session_id", str);
    }
}
