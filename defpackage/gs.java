package defpackage;

import cb;
import java.io.IOException;
import java.io.InputStream;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: gs */
class gs {
    private static final Class<?> a;

    gs() {
    }

    static {
        a = gs.class;
    }

    public static int a(int i) {
        switch (i) {
            case p.View_android_focusable /*1*/:
                return 0;
            case p.View_paddingEnd /*3*/:
                return 180;
            case p.Toolbar_contentInsetEnd /*6*/:
                return 90;
            case p.Toolbar_contentInsetRight /*8*/:
                return 270;
            default:
                cb.c(a, "Unsupported orientation");
                return 0;
        }
    }

    public static int a(InputStream inputStream, int i) throws IOException {
        gu guVar = new gu();
        int a = gs.a(inputStream, i, guVar);
        int i2 = guVar.c - 8;
        if (a == 0 || i2 > a) {
            return 0;
        }
        inputStream.skip((long) i2);
        return gs.a(inputStream, gs.a(inputStream, a - i2, guVar.a, 274), guVar.a);
    }

    private static int a(InputStream inputStream, int i, gu guVar) throws IOException {
        if (i <= 8) {
            return 0;
        }
        guVar.b = gr.a(inputStream, 4, false);
        int i2 = i - 4;
        if (guVar.b == 1229531648 || guVar.b == 1296891946) {
            guVar.a = guVar.b == 1229531648;
            guVar.c = gr.a(inputStream, 4, guVar.a);
            int i3 = i2 - 4;
            if (guVar.c >= 8 && guVar.c - 8 <= i3) {
                return i3;
            }
            cb.d(a, "Invalid offset");
            return 0;
        }
        cb.d(a, "Invalid TIFF header");
        return 0;
    }

    private static int a(InputStream inputStream, int i, boolean z, int i2) throws IOException {
        if (i < 14) {
            return 0;
        }
        int a = gr.a(inputStream, 2, z);
        int i3 = i - 2;
        while (true) {
            int i4 = a - 1;
            if (a <= 0 || i3 < 12) {
                return 0;
            }
            a = i3 - 2;
            if (gr.a(inputStream, 2, z) == i2) {
                return a;
            }
            inputStream.skip(10);
            i3 = a - 10;
            a = i4;
        }
    }

    private static int a(InputStream inputStream, int i, boolean z) throws IOException {
        if (i < 10 || gr.a(inputStream, 2, z) != 3 || gr.a(inputStream, 4, z) != 1) {
            return 0;
        }
        int a = gr.a(inputStream, 2, z);
        gr.a(inputStream, 2, z);
        return a;
    }
}
