package defpackage;

import android.content.Context;
import bfz;
import com.twitter.library.client.Session;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bga */
public abstract class bga<U extends bfz> extends f<U> {
    private final Context a;
    private final Session b;
    private int c;
    private int d;
    private Map<String, ByteBuffer> e;
    private List<String> f;

    protected bga(Context context, Session session) {
        this.a = context;
        this.b = session;
        this.e = r.e();
        this.f = n.g();
    }

    public bga<U> a(int i) {
        this.c = i;
        return this;
    }

    public bga<U> b(int i) {
        this.d = i;
        return this;
    }

    public bga<U> a(Map<String, ByteBuffer> map) {
        this.e = map;
        return this;
    }

    public bga<U> a(List<String> list) {
        this.f = list;
        return this;
    }
}
