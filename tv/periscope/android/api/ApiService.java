package tv.periscope.android.api;

import java.util.List;
import retrofit.http.Body;
import retrofit.http.GET;
import retrofit.http.Multipart;
import retrofit.http.POST;
import retrofit.http.Part;
import retrofit.mime.TypedFile;
import retrofit.mime.TypedInput;
import tv.periscope.android.api.geo.TrendingLocations;

/* compiled from: Twttr */
public interface ApiService {
    @POST("/accessChat")
    AccessChatResponse accessChat(@Body AccessChatRequest accessChatRequest);

    @POST("/accessVideo")
    AccessVideoResponse accessVideo(@Body AccessVideoRequest accessVideoRequest);

    @POST("/adjustBroadcastRank")
    AdjustBroadcastRankResponse adjustBroadcastRank(@Body AdjustBroadcastRankRequest adjustBroadcastRankRequest);

    @POST("/block/add")
    BlockResponse block(@Body BlockRequest blockRequest);

    @POST("/broadcastMeta")
    BroadcastMetaResponse broadcastMeta(@Body BroadcastMetaRequest broadcastMetaRequest);

    @POST("/broadcastSearch")
    List<PsBroadcast> broadcastSearch(@Body BroadcastSearchRequest broadcastSearchRequest);

    @POST("/broadcastSummary")
    BroadcastSummaryResponse broadcastSummary(@Body BroadcastSummaryRequest broadcastSummaryRequest);

    @POST("/deactivateAccount")
    PsResponse deactivateAccount(@Body PsRequest psRequest);

    @POST("/deleteBroadcast")
    PsResponse deleteBroadcast(@Body DeleteBroadcastRequest deleteBroadcastRequest);

    @POST("/deleteReplay")
    DeleteReplayResponse deleteReplay(@Body DeleteReplayRequest deleteReplayRequest);

    @POST("/endBroadcast")
    @Multipart
    EndBroadcastResponse endBroadcast(@Part("cookie") String str, @Part("broadcast_id") String str2, @Part("log") TypedInput typedInput);

    @POST("/endReplayViewed")
    EndReplayViewedResponse endReplayViewed(@Body EndReplayViewedRequest endReplayViewedRequest);

    @POST("/stopWatching")
    @Multipart
    EndWatchingResponse endWatching(@Part("cookie") String str, @Part("session") String str2, @Part("log") TypedInput typedInput, @Part("n_hearts") String str3, @Part("n_comments") String str4);

    @POST("/featuredBroadcastFeed")
    List<PsBroadcast> featuredBroadcastFeed(@Body MainBroadcastFeaturedRequest mainBroadcastFeaturedRequest);

    @POST("/follow")
    FollowResponse follow(@Body FollowRequest followRequest);

    @POST("/followingBroadcastFeed")
    List<PsBroadcast> followingBroadcastFeed(@Body MainBroadcastFollowingRequest mainBroadcastFollowingRequest);

    @POST("/authorizeToken")
    AuthorizeTokenResponse getAuthorizationTokenForService(@Body AuthorizeTokenRequest authorizeTokenRequest);

    @POST("/block/users")
    List<PsUser> getBlocked(@Body PsRequest psRequest);

    @POST("/getBroadcastIdForShareToken")
    BroadcastResponse getBroadcastIdForShareToken(@Body BroadcastIdForTokenRequest broadcastIdForTokenRequest);

    @POST("/broadcastRank")
    BroadcastRankResponse getBroadcastRank(@Body BroadcastRankRequest broadcastRankRequest);

    @POST("/getBroadcastShareURL")
    GetBroadcastShareUrlResponse getBroadcastShareUrl(@Body GetBroadcastShareUrlRequest getBroadcastShareUrlRequest);

    @POST("/getBroadcastViewers")
    GetBroadcastViewersResponse getBroadcastViewers(@Body GetBroadcastViewersRequest getBroadcastViewersRequest);

    @POST("/getBroadcasts")
    List<PsBroadcast> getBroadcasts(@Body GetBroadcastsRequest getBroadcastsRequest);

    @POST("/getBroadcastsRankParameters")
    GetBroadcastRankParametersResponse getBroadcastsRankParameters(@Body GetBroadcastRankParametersRequest getBroadcastRankParametersRequest);

    @POST("/followers")
    List<PsUser> getFollowers(@Body GetFollowersRequest getFollowersRequest);

    @POST("/following")
    List<PsUser> getFollowing(@Body GetFollowingRequest getFollowingRequest);

    @POST("/mutualFollows")
    List<PsUser> getMutualFollows(@Body PsRequest psRequest);

    @POST("/getSettings")
    GetSettingsResponse getSettings(@Body GetSettingsRequest getSettingsRequest);

    @GET("/getCategoriesFeedPublic")
    List<TrendingLocations> getTrendingLocations();

    @POST("/user")
    GetUserResponse getUser(@Body GetUserRequest getUserRequest);

    @POST("/hello")
    HelloResponse hello(@Body HelloRequest helloRequest);

    @POST("/login")
    LoginResponse login(@Body LoginRequest loginRequest);

    @POST("/loginTwitter")
    TwitterLoginResponse login(@Body TwitterLoginRequest twitterLoginRequest);

    @POST("/mapGeoBroadcastFeed")
    List<PsBroadcast> mapGeoBroadcastFeed(@Body MapGeoBroadcastFeedRequest mapGeoBroadcastFeedRequest);

    @POST("/markAbuse")
    MarkAbuseResponse markAbuse(@Body MarkAbuseRequest markAbuseRequest);

    @POST("/mute")
    MuteResponse mute(@Body MuteRequest muteRequest);

    @POST("/persistBroadcast")
    PsResponse persistBroadcast(@Body PersistBroadcastRequest persistBroadcastRequest);

    @POST("/pingBroadcast")
    @Multipart
    PingBroadcastResponse pingBroadcast(@Part("cookie") String str, @Part("broadcast_id") String str2, @Part("log") TypedInput typedInput);

    @POST("/pingReplayViewed")
    PingReplayViewedResponse pingReplayViewed(@Body PingReplayViewedRequest pingReplayViewedRequest);

    @POST("/pingWatching")
    @Multipart
    PingWatchingResponse pingWatching(@Part("cookie") String str, @Part("session") String str2, @Part("n_hearts") String str3, @Part("n_comments") String str4, @Part("log") TypedInput typedInput);

    @POST("/playbackMeta")
    PlaybackMetaResponse playbackMeta(@Body PlaybackMetaRequest playbackMetaRequest);

    @POST("/publishBroadcast")
    PublishBroadcastResponse publishBroadcast(@Body PublishBroadcastRequest publishBroadcastRequest);

    @POST("/rankedBroadcastFeed")
    List<PsBroadcast> rankedBroadcastFeed(@Body RankedBroadcastsRequest rankedBroadcastsRequest);

    @POST("/replayThumbnailPlaylist")
    ThumbnailPlaylistResponse replayThumbnailPlayList(@Body ThumbnailPlaylistRequest thumbnailPlaylistRequest);

    @POST("/replayViewed")
    ReplayViewedResponse replayViewed(@Body ReplayViewedRequest replayViewedRequest);

    @POST("/setBroadcastsRankParameters")
    SetBroadcastRankParametersResponse setBroadcastsRankParameters(@Body SetBroadcastRankParametersRequest setBroadcastRankParametersRequest);

    @POST("/setSettings")
    SetSettingsResponse setSettings(@Body SetSettingsRequest setSettingsRequest);

    @POST("/shareBroadcast")
    ShareBroadcastResponse shareBroadcast(@Body ShareBroadcastRequest shareBroadcastRequest);

    @POST("/createBroadcast")
    CreateBroadcastResponse startBroadcast(@Body CreateBroadcastRequest createBroadcastRequest);

    @POST("/startWatching")
    StartWatchingResponse startWatching(@Body StartWatchingRequest startWatchingRequest);

    @POST("/suggestedPeople")
    SuggestedPeopleResponse suggestedPeople(@Body SuggestedPeopleRequest suggestedPeopleRequest);

    @POST("/supportedLanguages")
    String[] supportedLanguages(@Body String str);

    @POST("/unban")
    PsResponse unban(@Body PsRequest psRequest);

    @POST("/block/remove")
    BlockResponse unblock(@Body BlockRequest blockRequest);

    @POST("/unfollow")
    UnfollowResponse unfollow(@Body UnfollowRequest unfollowRequest);

    @POST("/unmute")
    UnMuteResponse unmute(@Body UnMuteRequest unMuteRequest);

    @POST("/updateDescription")
    UpdateDescriptionResponse updateDescription(@Body UpdateDescriptionRequest updateDescriptionRequest);

    @POST("/updateDisplayName")
    UpdateDisplayNameResponse updateDisplayName(@Body UpdateDisplayNameRequest updateDisplayNameRequest);

    @POST("/uploadProfileImage")
    @Multipart
    UploadProfileImageResponse uploadProfileImage(@Part("cookie") String str, @Part("image") TypedFile typedFile);

    @POST("/userBroadcasts")
    List<PsBroadcast> userBroadcasts(@Body UserBroadcastsRequest userBroadcastsRequest);

    @POST("/userSearch")
    List<PsUser> userSearch(@Body UserSearchRequest userSearchRequest);

    @POST("/validateUsername")
    ValidateUsernameResponse validateUsername(@Body ValidateUsernameRequest validateUsernameRequest);

    @POST("/verifyUsername")
    VerifyUsernameResponse verifyUsername(@Body VerifyUsernameRequest verifyUsernameRequest);
}
