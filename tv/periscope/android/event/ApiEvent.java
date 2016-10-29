package tv.periscope.android.event;

import retrofit.RetrofitError;
import tv.periscope.android.api.ApiRequest;

/* compiled from: Twttr */
public class ApiEvent {
    public final Type a;
    public final String b;
    public final ApiRequest c;
    public final Object d;
    public final RetrofitError e;
    public final boolean f;

    /* compiled from: Twttr */
    public enum Type {
        OnTwitterLoginComplete,
        OnAuthorizeTokenComplete,
        OnValidateUsernameComplete,
        OnVerifyUsernameComplete,
        OnHelloComplete,
        OnGetUserComplete,
        OnGetFollowersComplete,
        OnGetFollowingComplete,
        OnGetMutualFollowsComplete,
        OnFollowComplete,
        OnMuteComplete,
        OnUnMuteComplete,
        OnUnfollowComplete,
        OnUnbanComplete,
        OnDeactivateAccountComplete,
        OnAccessVideoComplete,
        OnAccessChatComplete,
        OnStartWatchingComplete,
        OnSuggestedUsersComplete,
        OnUserSearchComplete,
        OnBroadcastSearchComplete,
        OnMainFeaturedComplete,
        OnMainFollowingComplete,
        OnGetBroadcastsComplete,
        OnGetBroadcastsByPollingComplete,
        OnGetBroadcastShareUrlComplete,
        OnGetBroadcastViewersComplete,
        OnFollowAllComplete,
        OnGetGlobalBroadcastComplete,
        OnGetGlobalMapComplete,
        OnReplayThumbnailPlaylistComplete,
        OnCreateBroadcastComplete,
        OnPublishBroadcastComplete,
        OnDeleteBroadcastComplete,
        OnShareBroadcastComplete,
        OnReportBroadcastComplete,
        OnAdjustBroadcastRankComplete,
        OnPingWatchingComplete,
        OnStopWatchingComplete,
        OnGetSettingsComplete,
        OnGetBroadcastRankComplete,
        OnGetBroadcastRankParametersComplete,
        OnSetBroadcastRankParametersComplete,
        OnSupportedLanguagesComplete,
        OnSetSettingsComplete,
        OnEndBroadcastComplete,
        OnPingBroadcastComplete,
        OnBroadcastSummaryComplete,
        OnBlockComplete,
        OnUnblockComplete,
        OnGetBlockedComplete,
        OnGetBroadcastIdForTokenComplete,
        OnUploadTestComplete,
        OnGetUserBroadcastsComplete,
        OnUploadProfilePictureComplete,
        OnUpdateProfileDisplayNameComplete,
        OnUpdateProfileDescriptionComplete,
        OnPlayerMetaComplete,
        OnBroadcastMetaComplete,
        OnGetBroadcastForTeleportComplete,
        OnReplayViewedComplete,
        OnPingReplayComplete,
        OnEndReplayViewedComplete,
        OnGetSuggestedChannelsComplete,
        OnGetTrendingLocationComplete,
        OnReportCommentComplete,
        OnVoteComplete,
        OnActiveJurorComplete,
        OnGetBroadcastsForChannelComplete,
        OnMarkBroadcastPersistentComplete
    }

    public ApiEvent(Type type, String str, ApiRequest apiRequest, Object obj, boolean z) {
        this(type, str, apiRequest, obj, null, z);
    }

    public ApiEvent(Type type, String str, ApiRequest apiRequest, RetrofitError retrofitError, boolean z) {
        this(type, str, apiRequest, null, retrofitError, z);
    }

    public ApiEvent(Type type, String str, ApiRequest apiRequest, Object obj, RetrofitError retrofitError, boolean z) {
        this.a = type;
        this.b = str;
        this.c = apiRequest;
        this.e = retrofitError;
        this.d = obj;
        this.f = z;
    }

    public boolean a() {
        return this.e == null;
    }

    public String b() {
        if (this.e == null || this.e.getResponse() == null) {
            return null;
        }
        return this.e.getResponse().getReason();
    }

    public int c() {
        if (this.e == null || this.e.getResponse() == null) {
            return 520;
        }
        return this.e.getResponse().getStatus();
    }
}
