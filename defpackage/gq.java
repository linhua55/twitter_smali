package defpackage;

import bx;
import java.io.IOException;
import java.io.InputStream;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
/* renamed from: gq */
public class gq {
    public static int a(int i) {
        return gs.a(i);
    }

    public static int a(InputStream inputStream) {
        int i = 0;
        try {
            int b = gq.b(inputStream);
            if (b != 0) {
                i = gs.a(inputStream, b);
            }
        } catch (IOException e) {
        }
        return i;
    }

    public static boolean a(InputStream inputStream, int i) throws IOException {
        bx.a(inputStream);
        while (gr.a(inputStream, 1, false) == 255) {
            int i2 = 255;
            while (i2 == 255) {
                i2 = gr.a(inputStream, 1, false);
            }
            if ((i == 192 && gq.b(i2)) || i2 == i) {
                return true;
            }
            if (!(i2 == 216 || i2 == 1)) {
                if (i2 == 217 || i2 == 218) {
                    return false;
                }
                inputStream.skip((long) (gr.a(inputStream, 2, false) - 2));
            }
        }
        return false;
    }

    private static boolean b(int i) {
        switch (i) {
            case 192:
            case 193:
            case 194:
            case 195:
            case 197:
            case 198:
            case 199:
            case 201:
            case ApiRunnable.ACTION_CODE_PUBLIC_PING_WATCHING /*202*/:
            case ApiRunnable.ACTION_CODE_PUBLIC_END_WATCHING /*203*/:
            case ApiRunnable.ACTION_CODE_PUBLIC_END_REPLAY_VIEWED /*205*/:
            case ApiRunnable.ACTION_CODE_PUBLIC_REPLAY_THUMBNAIL_PLAYLIST /*206*/:
            case ApiRunnable.ACTION_CODE_PUBLIC_MARK_ABUSE /*207*/:
                return true;
            default:
                return false;
        }
    }

    private static int b(InputStream inputStream) throws IOException {
        if (gq.a(inputStream, 225)) {
            int a = gr.a(inputStream, 2, false) - 2;
            if (a > 6) {
                int a2 = gr.a(inputStream, 4, false);
                a -= 4;
                int a3 = gr.a(inputStream, 2, false);
                a -= 2;
                if (a2 == 1165519206 && a3 == 0) {
                    return a;
                }
            }
        }
        return 0;
    }
}
