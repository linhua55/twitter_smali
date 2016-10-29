package defpackage;

import dbs;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;
import tv.periscope.android.branch.api.d;

/* compiled from: Twttr */
/* renamed from: dbu */
final class dbu implements Callback<d> {
    final /* synthetic */ dbw a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;

    dbu(dbw dbw, String str, String str2, String str3) {
        this.a = dbw;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public /* synthetic */ void success(Object obj, Response response) {
        a((d) obj, response);
    }

    public void a(d dVar, Response response) {
        String str = (dVar == null || dVar.a == null) ? "https://b.pscp.tv/g97c" : dVar.a;
        this.a.a(dbs.a(str, this.b, this.c, this.d));
    }

    public void failure(RetrofitError retrofitError) {
        this.a.a(dbs.a("https://b.pscp.tv/g97c", this.b, this.c, this.d));
    }
}
