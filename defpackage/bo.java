package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: bo */
public final class bo {
    static final Logger a;

    static {
        a = Logger.getLogger(bo.class.getName());
    }

    private bo() {
    }

    public static void a(@Nullable Closeable closeable, boolean z) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable e) {
                if (z) {
                    a.log(Level.WARNING, "IOException thrown while closing Closeable.", e);
                    return;
                }
                throw e;
            }
        }
    }

    public static void a(@Nullable InputStream inputStream) {
        try {
            bo.a(inputStream, true);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
