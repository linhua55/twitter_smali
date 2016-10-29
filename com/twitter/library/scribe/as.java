package com.twitter.library.scribe;

import android.content.Context;
import com.twitter.library.scribe.ScribeDatabaseHelper.LogType;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;
import defpackage.arf;
import defpackage.bbn;
import defpackage.cfb;
import java.nio.charset.Charset;

/* compiled from: Twttr */
public abstract class as<TLogCollection> {
    protected static final Charset a;
    protected final Context b;
    protected final long c;
    protected final OAuthToken d;
    protected final arf e;
    protected final String f;
    protected final t g;
    protected final ap h;
    protected final boolean i;
    protected final LogType j;

    protected abstract int a(TLogCollection tLogCollection);

    protected abstract TLogCollection b(String str, int i);

    protected abstract boolean b(TLogCollection tLogCollection);

    static {
        a = Charset.forName("UTF-8");
    }

    public as(Context context, long j, OAuthToken oAuthToken, arf arf, String str, t tVar, ap apVar, boolean z, LogType logType) {
        this.b = context;
        this.c = j;
        this.d = oAuthToken;
        this.f = str;
        this.e = arf;
        this.g = tVar;
        this.h = apVar;
        this.i = z;
        this.j = logType;
    }

    public final boolean a() {
        int i = 100;
        boolean z = true;
        boolean z2;
        do {
            String a = aj.a(6);
            try {
                Object b = b(a, i);
                if (b == null || !b(b)) {
                    z2 = false;
                    continue;
                } else {
                    z = a(b, a);
                    z2 = z;
                    continue;
                }
            } catch (Throwable e) {
                bbn.a(e);
                if (i == 20) {
                    if (this.i) {
                        cfb.b("ScribeService", "OOM while flush user logs, abort");
                    }
                    z = false;
                    z2 = false;
                } else if (this.i) {
                    cfb.b("ScribeService", "OOM while flush user logs, tune down the log size");
                    i = 20;
                    z2 = true;
                } else {
                    i = 20;
                    z2 = true;
                }
                this.g.a(a, "0", this.j.toString());
                continue;
            }
        } while (z2);
        return z;
    }

    protected final boolean a(TLogCollection tLogCollection, String str) {
        boolean a;
        if (tLogCollection == null) {
            return false;
        }
        if (this.i) {
            cfb.b("ScribeService", "Starting request");
        }
        int a2;
        try {
            a2 = a(tLogCollection);
            try {
                a = this.h.a();
                try {
                    int b = this.h.b();
                    if (a) {
                        if (this.i) {
                            cfb.b("ScribeService", "request success reqId=" + str);
                        }
                        this.g.a(str);
                        if (this.e != null) {
                            this.e.a((long) a2);
                        }
                    } else {
                        if (this.i) {
                            cfb.b("ScribeService", "request failed reqId=" + str + " statusCode=" + b);
                        }
                        if (b != 0) {
                            this.g.b(str);
                        }
                        this.g.a(str, String.valueOf(0), this.j.toString());
                        this.g.bl_();
                    }
                    return a;
                } catch (Throwable th) {
                    if (a) {
                        if (this.i) {
                            cfb.b("ScribeService", "request failed reqId=" + str + " statusCode=" + 0);
                        }
                        this.g.a(str, String.valueOf(0), this.j.toString());
                        this.g.bl_();
                    } else {
                        if (this.i) {
                            cfb.b("ScribeService", "request success reqId=" + str);
                        }
                        this.g.a(str);
                        if (this.e != null) {
                            this.e.a((long) a2);
                        }
                    }
                    return a;
                }
            } catch (Throwable th2) {
                a = false;
                if (a) {
                    if (this.i) {
                        cfb.b("ScribeService", "request success reqId=" + str);
                    }
                    this.g.a(str);
                    if (this.e != null) {
                        this.e.a((long) a2);
                    }
                } else {
                    if (this.i) {
                        cfb.b("ScribeService", "request failed reqId=" + str + " statusCode=" + 0);
                    }
                    this.g.a(str, String.valueOf(0), this.j.toString());
                    this.g.bl_();
                }
                return a;
            }
        } catch (Throwable th3) {
            a2 = 0;
            a = false;
            if (a) {
                if (this.i) {
                    cfb.b("ScribeService", "request success reqId=" + str);
                }
                this.g.a(str);
                if (this.e != null) {
                    this.e.a((long) a2);
                }
            } else {
                if (this.i) {
                    cfb.b("ScribeService", "request failed reqId=" + str + " statusCode=" + 0);
                }
                this.g.a(str, String.valueOf(0), this.j.toString());
                this.g.bl_();
            }
            return a;
        }
    }
}
