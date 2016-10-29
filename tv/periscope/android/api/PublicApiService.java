package tv.periscope.android.api;

import java.util.List;
import retrofit.http.Body;
import retrofit.http.POST;

/* compiled from: Twttr */
public interface PublicApiService {
    @POST("/blockPublic")
    BlockResponse blockPublic(@Body BlockPublicRequest blockPublicRequest);

    @POST("/endReplayViewedPublic")
    EndReplayViewedResponse endReplayViewedPublic(@Body EndReplayViewedPublicRequest endReplayViewedPublicRequest);

    @POST("/stopPublic")
    EndWatchingResponse endWatchingPublic(@Body EndWatchingPublicRequest endWatchingPublicRequest);

    @POST("/accessChatPublic")
    AccessChatResponse getAccessChatPublic(@Body AccessChatPublicRequest accessChatPublicRequest);

    @POST("/accessVideoPublic")
    AccessVideoResponse getAccessVideoPublic(@Body AccessVideoPublicRequest accessVideoPublicRequest);

    @POST("/getBroadcastsPublic")
    List<PsBroadcast> getBroadcastsPublic(@Body GetBroadcastsPublicRequest getBroadcastsPublicRequest);

    @POST("/markAbusePublic")
    MarkAbuseResponse markAbusePublic(@Body MarkAbusePublicRequest markAbusePublicRequest);

    @POST("/pingPublic")
    PingWatchingResponse pingPublic(@Body PingPublicRequest pingPublicRequest);

    @POST("/pingReplayViewedPublic")
    PingReplayViewedResponse pingReplayViewedPublic(@Body PingReplayViewedPublicRequest pingReplayViewedPublicRequest);

    @POST("/publicReplayThumbnailPlaylist")
    ThumbnailPlaylistResponse replayThumbnailPlaylistPublic(@Body ThumbnailPlaylistPublicRequest thumbnailPlaylistPublicRequest);

    @POST("/replayViewedPublic")
    ReplayViewedResponse replayViewedPublic(@Body ReplayViewedPublicRequest replayViewedPublicRequest);

    @POST("/startPublic")
    StartWatchingResponse startWatchingPublic(@Body StartWatchingPublicRequest startWatchingPublicRequest);
}
