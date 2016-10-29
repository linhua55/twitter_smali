package tv.periscope.android.branch.api;

import android.content.Context;
import retrofit.Callback;
import retrofit.RestAdapter.Builder;
import tv.periscope.android.library.o;

/* compiled from: Twttr */
public class BranchApiClient {
    private BranchApiService a;

    public void a(Context context, String str, String str2, String str3, Callback<d> callback) {
        b bVar = new b(null);
        bVar.a = str2;
        bVar.b = str3;
        bVar.c = str;
        c cVar = new c(null);
        cVar.a = context.getString(o.ps__branch_api_key);
        cVar.b = "android";
        cVar.c = "create_broadcast";
        cVar.d = bVar;
        a().getCreateBroadcastDeeplink(cVar, callback);
    }

    private BranchApiService a() {
        if (this.a == null) {
            this.a = (BranchApiService) new Builder().setEndpoint("https://api.branch.io/v1").build().create(BranchApiService.class);
        }
        return this.a;
    }
}
