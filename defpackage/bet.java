package defpackage;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.internal.network.b;
import com.twitter.internal.network.k;
import com.twitter.library.api.ak;
import com.twitter.library.api.at;
import com.twitter.library.network.w;
import com.twitter.library.service.c;
import com.twitter.model.account.OAuthToken;
import cvi;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bet */
public class bet extends c {
    private OAuthToken a;
    private ak b;
    private String c;

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        Closeable closeable = null;
        if (str == null) {
            return;
        }
        if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
            new b(byteArrayOutputStream, null).a(i, inputStream, i2, str, str2);
            this.a = bet.a(byteArrayOutputStream);
            this.c = bet.b(byteArrayOutputStream);
            return;
        }
        try {
            closeable = at.a(inputStream);
            this.b = at.J(closeable);
        } finally {
            cvi.a(closeable);
        }
    }

    public void a(k kVar) {
    }

    public OAuthToken b() {
        return this.a;
    }

    public String c() {
        return this.c;
    }

    public ak d() {
        return this.b;
    }

    private static OAuthToken a(ByteArrayOutputStream byteArrayOutputStream) {
        List a = w.a(new String(byteArrayOutputStream.toByteArray()), true);
        return new OAuthToken(w.a(a, "oauth_token"), w.a(a, "oauth_token_secret"));
    }

    private static String b(ByteArrayOutputStream byteArrayOutputStream) {
        return w.a(w.a(new String(byteArrayOutputStream.toByteArray()), true), "kdt");
    }
}
