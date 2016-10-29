package defpackage;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: dcm */
public class dcm {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
