package tv.periscope.android.branch.api;

import retrofit.Callback;
import retrofit.http.Body;
import retrofit.http.POST;

/* compiled from: Twttr */
interface BranchApiClient$BranchApiService {
    @POST("/url")
    void getCreateBroadcastDeeplink(@Body c cVar, Callback<d> callback);
}
