package defpackage;

import android.content.Context;
import cni;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.at;
import com.twitter.library.av.a;
import com.twitter.library.av.control.d;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bfi */
public class bfi extends b<bfk> {
    Map<Long, DynamicAdInfo> a;
    List<a> b;
    final bfk c;
    final DynamicAd g;
    final boolean h;

    protected /* synthetic */ c f() {
        return h();
    }

    protected bfi(Context context, Session session, DynamicAd dynamicAd) {
        this(context, bfi.class.getName(), session, new bfk(), dynamicAd);
    }

    protected bfi(Context context, String str, Session session, bfk bfk, DynamicAd dynamicAd) {
        super(context, str, session);
        a(ExecutionClass.a);
        b(1);
        this.c = bfk;
        this.g = dynamicAd;
        this.h = d.a();
    }

    public Map<Long, DynamicAdInfo> b() {
        return this.a;
    }

    public List<a> e() {
        return this.b;
    }

    public void a(List<a> list) {
        if (list == null || list.size() <= 10) {
            this.b = list;
        } else {
            throw new IllegalArgumentException(String.format("Too many tweets %d, max %d", new Object[]{Integer.valueOf(list.size()), Integer.valueOf(10)}));
        }
    }

    protected com.twitter.library.service.d a() {
        e a = K().a(RequestMethod.b).a("videoads/v2/prerolls");
        String g = g();
        if (g != null) {
            a.a("tweets", g);
        }
        return a.a();
    }

    String g() {
        Closeable closeable;
        Throwable th;
        Writer stringWriter = new StringWriter();
        int i = 0;
        Closeable a;
        try {
            a = at.a.a(stringWriter);
            try {
                a.c();
                a.d("tweets");
                if (this.b != null) {
                    int i2 = 0;
                    for (a aVar : this.b) {
                        try {
                            i2++;
                            a.c();
                            a.a("tweet_id", aVar.a);
                            cni cni = aVar.b;
                            if (cni != null) {
                                a.a("impression_id", cni.c);
                            }
                            a.d();
                        } catch (IOException e) {
                            i = i2;
                            closeable = a;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    i = i2;
                }
                a.b();
                if (this.g != null) {
                    a.e("trigger_preroll");
                    a.a("preroll_id", this.g.a);
                    a.a("dynamic_preroll_type", this.g.b);
                    a.d();
                }
                if (this.h) {
                    a.a("include_long_videos", true);
                }
                a.flush();
                cvi.a(a);
            } catch (IOException e2) {
                closeable = a;
                cvi.a(closeable);
                if (i > 0) {
                    return null;
                }
                return stringWriter.toString();
            } catch (Throwable th22) {
                th = th22;
            }
        } catch (IOException e3) {
            closeable = null;
            cvi.a(closeable);
            if (i > 0) {
                return stringWriter.toString();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            a = null;
            cvi.a(a);
            throw th;
        }
        if (i > 0) {
            return stringWriter.toString();
        }
        return null;
    }

    protected bfk h() {
        return this.c;
    }

    public void a(ab<aa> abVar) {
        super.a(abVar);
        if (U()) {
            this.a = this.c.b();
        }
    }
}
