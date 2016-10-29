package defpackage;

import com.google.android.exoplayer.util.Util;
import com.twitter.media.model.AnimatedGifFile;
import cvi;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bxj */
public class bxj {
    public final List<bxk> a;
    public final int b;
    public final boolean c;

    public bxj(AnimatedGifFile animatedGifFile) throws IOException {
        this(animatedGifFile, 100, 20);
    }

    public bxj(AnimatedGifFile animatedGifFile, int i, int i2) throws IOException {
        Throwable th;
        Closeable closeable = null;
        boolean z = false;
        this.a = new ArrayList();
        try {
            Closeable fileInputStream = new FileInputStream(animatedGifFile.d);
            try {
                int a = (bxj.a(fileInputStream, 10) + 0) + 1;
                int read = fileInputStream.read();
                if ((read & 128) != 0) {
                    a += bxj.a(fileInputStream, ((1 << ((read & 7) + 1)) * 3) + 2);
                }
                boolean z2 = false;
                read = 0;
                int i3 = a;
                Closeable closeable2 = null;
                while (!z2) {
                    boolean z3;
                    int i4;
                    boolean z4;
                    bxk bxk;
                    int i5 = i3 + 1;
                    Object obj;
                    int i6;
                    switch (fileInputStream.read()) {
                        case Util.TYPE_DASH /*0*/:
                            z3 = z2;
                            i4 = read;
                            i3 = i5;
                            obj = closeable2;
                            z4 = z;
                            break;
                        case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                            i6 = i5 + 1;
                            if (fileInputStream.read() != 249) {
                                i4 = read;
                                i3 = i6 + bxj.a(fileInputStream);
                                z3 = z2;
                                obj = closeable2;
                                z4 = z;
                                break;
                            }
                            i5 = (bxj.a(fileInputStream, 2) + i6) + 2;
                            i6 = (fileInputStream.read() + (fileInputStream.read() << 8)) * 10;
                            bxk bxk2 = new bxk(read, i6, i6 >= i2 ? i6 : i, i3, false);
                            i4 = read;
                            i3 = bxj.a(fileInputStream, 2) + i5;
                            z3 = z2;
                            bxk = bxk2;
                            z4 = z;
                            break;
                        case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                            bxk bxk3;
                            if (closeable2 == null) {
                                bxk3 = new bxk(read, 0, i, i3, true);
                                z4 = true;
                            } else {
                                Object obj2 = closeable2;
                                z4 = z;
                            }
                            this.a.add(bxk3);
                            read += bxk3.b;
                            i6 = (bxj.a(fileInputStream, 8) + i5) + 1;
                            i4 = fileInputStream.read();
                            if ((i4 & 128) != 0) {
                                i6 += bxj.a(fileInputStream, (1 << ((i4 & 7) + 1)) * 3);
                            }
                            i4 = read;
                            i3 = (i6 + bxj.a(fileInputStream, 1)) + bxj.a(fileInputStream);
                            obj = null;
                            z3 = z2;
                            break;
                        case bdd.AppCompatTheme_toolbarNavigationButtonStyle /*59*/:
                            z3 = true;
                            i4 = read;
                            i3 = i5;
                            obj = closeable2;
                            z4 = z;
                            break;
                        default:
                            throw new IOException("unknown byte");
                    }
                    z = z4;
                    z2 = z3;
                    Object obj3 = bxk;
                    read = i4;
                }
                this.b = read;
                this.c = z;
                cvi.a(fileInputStream);
            } catch (Throwable th2) {
                th = th2;
                closeable = fileInputStream;
            }
        } catch (Throwable th3) {
            th = th3;
            cvi.a(closeable);
            throw th;
        }
    }

    private static int a(InputStream inputStream, int i) throws IOException {
        int i2 = i;
        while (i2 > 0) {
            i2 = (int) (((long) i2) - inputStream.skip((long) i2));
        }
        return i;
    }

    private static int a(InputStream inputStream) throws IOException {
        int i = 1;
        int read = inputStream.read();
        while (read > 0) {
            i = (bxj.a(inputStream, read) + i) + 1;
            read = inputStream.read();
        }
        return i;
    }
}
