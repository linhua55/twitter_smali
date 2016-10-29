package defpackage;

import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import beb;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dg;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bpf */
public class bpf extends beb<as> {
    private final long a;
    private final int b;
    private final long c;
    private final long h;
    private final Integer i;
    private boolean j;
    private TwitterUser k;

    protected /* synthetic */ c f() {
        return e();
    }

    public bpf(Context context, Session session, long j, int i, long j2, long j3, Integer num) {
        super(context, bpf.class.getName(), session);
        this.a = j;
        this.b = i;
        this.c = j2;
        this.h = j3;
        this.i = num;
    }

    protected e b() {
        if (this.b == 10 || this.b == 20 || this.b == 19) {
            String str;
            e K = K();
            long[] a = S().a(t(), "users_user_id", null, null);
            K.a("users", "recommendations");
            K.a("connections", true);
            if (this.i != null) {
                K.a("page", (long) this.i.intValue());
            }
            K.a("owner_id", this.a).a("user_type", (long) this.b).a("user_tag", this.c).a("user_id", this.h).a("limit", 1);
            if (a != null && a.length > 0) {
                K.a("excluded", a);
            }
            switch (this.b) {
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str = "st-component";
                    break;
                case bdd.TwitterButton_iconLayout /*19*/:
                    str = "welcome-flow-recommendations";
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    str = "profile-cluster-follow";
                    break;
                default:
                    throw new IllegalArgumentException("Invalid userType: " + this.b);
            }
            K.a("display_location", str);
            K.a("pc", 1);
            K.a("include_user_entities", true);
            return K;
        }
        throw new IllegalArgumentException("Unsupported type");
    }

    private Uri t() {
        ab N = N();
        long j = N != null ? N.c : 0;
        switch (this.b) {
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return ck.a(ContentUris.withAppendedId(dg.w, this.a), j);
            case bdd.TwitterButton_iconLayout /*19*/:
                return ContentUris.withAppendedId(dg.t, this.a);
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return ck.a(ContentUris.withAppendedId(dg.x, this.a), j);
            default:
                throw new IllegalArgumentException("Unsupported type");
        }
    }

    protected as e() {
        return as.a(7);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            di S = S();
            com.twitter.library.provider.e T = T();
            if (httpOperation.j()) {
                List list = (List) asVar.b();
                if (!list.isEmpty()) {
                    this.k = (TwitterUser) list.get(0);
                    this.j = S.a(this.k, this.a, this.b, this.c, this.h, T);
                    if (!this.j) {
                        this.j = S.a(this.k.c, this.a, this.b, this.c);
                    }
                    T.a();
                }
            }
        }
    }

    public TwitterUser g() {
        return this.k;
    }

    public boolean h() {
        return this.j;
    }

    public long s() {
        return this.h;
    }
}
