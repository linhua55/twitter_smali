package tv.periscope.chatman.api;

import retrofit.http.Body;
import retrofit.http.POST;

/* compiled from: Twttr */
public interface HttpService {
    @POST("/history")
    HistoryResponse history(@Body HistoryRequest historyRequest);
}
