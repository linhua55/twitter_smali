package tv.periscope.android.api.service.channels;

import java.util.List;
import retrofit.http.GET;
import retrofit.http.Header;
import retrofit.http.Path;
import retrofit.http.Query;

/* compiled from: Twttr */
public interface ChannelsService {
    @GET("/channels/{id}/broadcasts")
    PsGetBroadcastsForChannelResponse getBroadcastsForChannel(@Header("Authorization") String str, @Path("id") String str2);

    @GET("/channels/{id}")
    PsChannel getChannelInfo(@Header("Authorization") String str, @Path("id") String str2);

    @GET("/channels")
    PsGetChannelsResponse getChannels(@Header("Authorization") String str);

    @GET("/channels")
    List<PsChannel> searchChannels(@Header("Authorization") String str, @Query("name") String str2, @Query("language") List<String> list);
}
