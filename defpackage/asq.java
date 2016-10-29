package defpackage;

import android.content.Context;
import android.support.annotation.RawRes;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.json.common.g;
import com.twitter.util.object.e;
import cvi;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: asq */
public class asq {
    private static final JsonFactory a;

    static {
        a = new JsonFactory();
    }

    public static civ a(JsonParser jsonParser) {
        return (civ) e.b((civ) g.c(jsonParser, civ.class), civ.b);
    }

    public static civ a(Context context, String str) {
        Throwable th;
        int identifier = context.getResources().getIdentifier(str, "raw", context.getPackageName());
        if (identifier != 0) {
            Closeable a;
            Closeable closeable = null;
            try {
                a = new JsonFactory().a(context.getResources().openRawResource(identifier));
            } catch (IOException e) {
                cvi.a(closeable);
                return civ.b;
            } catch (Throwable th2) {
                Throwable th3 = th2;
                a = null;
                th = th3;
                cvi.a(a);
                throw th;
            }
            try {
                a.a();
                civ a2 = asq.a(a);
                cvi.a(a);
                return a2;
            } catch (IOException e2) {
                closeable = a;
                cvi.a(closeable);
                return civ.b;
            } catch (Throwable th4) {
                th = th4;
                cvi.a(a);
                throw th;
            }
        }
        return civ.b;
    }

    public static ciq a(Context context, @RawRes int i) throws IOException {
        cis cis = new cis();
        Closeable closeable = null;
        try {
            closeable = a.a(context.getResources().openRawResource(i));
            closeable.a();
            cis.a(((cib) g.c(closeable, cib.class)).a);
            return (ciq) cis.q();
        } finally {
            cvi.a(closeable);
        }
    }
}
