package defpackage;

import bo;
import bx;
import ca;
import com.facebook.common.util.c;
import com.facebook.imagepipeline.memory.aa;
import com.facebook.imagepipeline.memory.f;
import java.io.IOException;
import java.io.InputStream;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: ga */
public class ga {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private final f g;

    public ga(f fVar) {
        this.g = (f) bx.a(fVar);
        this.c = 0;
        this.b = 0;
        this.d = 0;
        this.f = 0;
        this.e = 0;
        this.a = 0;
    }

    public boolean a(gj gjVar) {
        if (this.a == 6) {
            return false;
        }
        if (gjVar.j() <= this.c) {
            return false;
        }
        InputStream aaVar = new aa(gjVar.d(), (byte[]) this.g.a(16384), this.g);
        boolean a;
        try {
            c.a(aaVar, (long) this.c);
            a = a(aaVar);
            return a;
        } catch (IOException e) {
            a = e;
            ca.b(a);
            return false;
        } finally {
            bo.a(aaVar);
        }
    }

    private boolean a(InputStream inputStream) {
        int i = this.e;
        while (this.a != 6) {
            int read = inputStream.read();
            if (read != -1) {
                this.c++;
                switch (this.a) {
                    case p.View_android_theme /*0*/:
                        if (read != 255) {
                            this.a = 6;
                            break;
                        }
                        try {
                            this.a = 1;
                            break;
                        } catch (Throwable e) {
                            ca.b(e);
                            break;
                        }
                    case p.View_android_focusable /*1*/:
                        if (read != 216) {
                            this.a = 6;
                            break;
                        }
                        this.a = 2;
                        break;
                    case p.View_paddingStart /*2*/:
                        if (read == 255) {
                            this.a = 3;
                            break;
                        }
                        break;
                    case p.View_paddingEnd /*3*/:
                        if (read != 255) {
                            if (read != 0) {
                                if (read == 218 || read == 217) {
                                    b(this.c - 2);
                                }
                                if (!ga.a(read)) {
                                    this.a = 2;
                                    break;
                                }
                                this.a = 4;
                                break;
                            }
                            this.a = 2;
                            break;
                        }
                        this.a = 3;
                        break;
                    case p.View_theme /*4*/:
                        this.a = 5;
                        break;
                    case p.Toolbar_contentInsetStart /*5*/:
                        int i2 = ((this.b << 8) + read) - 2;
                        c.a(inputStream, (long) i2);
                        this.c = i2 + this.c;
                        this.a = 2;
                        break;
                    default:
                        bx.b(false);
                        break;
                }
                this.b = read;
            } else if (this.a != 6 || this.e == i) {
                return false;
            } else {
                return true;
            }
        }
        if (this.a != 6) {
        }
        return false;
    }

    private static boolean a(int i) {
        boolean z = true;
        if (i == 1) {
            return false;
        }
        if (i >= ApiRunnable.ACTION_CODE_PUBLIC_BLOCK && i <= 215) {
            return false;
        }
        if (i == 217 || i == 216) {
            z = false;
        }
        return z;
    }

    private void b(int i) {
        if (this.d > 0) {
            this.f = i;
        }
        int i2 = this.d;
        this.d = i2 + 1;
        this.e = i2;
    }

    public int a() {
        return this.f;
    }

    public int b() {
        return this.e;
    }
}
