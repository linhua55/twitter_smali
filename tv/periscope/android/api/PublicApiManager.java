package tv.periscope.android.api;

import android.content.Context;
import android.os.Bundle;
import de.greenrobot.event.c;
import defpackage.dcl;
import defpackage.ddg;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.concurrent.Executor;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.api.ApiRunnable.Builder;
import tv.periscope.android.event.a;
import tv.periscope.android.session.Session.Type;
import tv.periscope.android.signer.SignerService;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.VoteType;

/* compiled from: Twttr */
public abstract class PublicApiManager implements ApiManager {
    private static final String EMPTY_REQUEST_ID = "";
    private final ApiService mApiService;
    private final Context mAppContext;
    protected final c mEventBus;
    private final c mLocalEventBus;
    private final PublicApiService mPublicApiService;
    private final SignerService mSignerService;

    protected abstract String execute(ApiRunnable apiRunnable);

    public PublicApiManager(Context context, c cVar, Executor executor, boolean z) {
        this.mAppContext = context;
        this.mEventBus = cVar;
        this.mLocalEventBus = c.b().a(z).a();
        LogLevel logLevel = z ? LogLevel.BASIC : LogLevel.NONE;
        this.mApiService = (ApiService) new RestClient(context, executor, Constants.API_PROD_URL, ApiService.class, logLevel).getService();
        this.mPublicApiService = (PublicApiService) new RestClient(context, executor, Constants.API_PROD_URL, PublicApiService.class, logLevel).getService();
        this.mSignerService = (SignerService) new RestClient(context, executor, Constants.SIGNER_PROD_URL, SignerService.class, logLevel).getService();
    }

    public SignerService getSignerService() {
        return this.mSignerService;
    }

    protected void registerApiEventHandler(ApiEventHandler apiEventHandler) {
        this.mLocalEventBus.a((Object) apiEventHandler);
    }

    private Bundle newApiBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(ApiRunnable.EXTRA_INSTALL_ID, dcl.a(this.mAppContext));
        return bundle;
    }

    public String login(String str, String str2, String str3, String str4, String str5, String str6, Type type) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String validateUsername(String str, String str2, String str3) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String verifyUsername(String str, String str2, String str3, String str4) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String hello() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getAuthorizeTokenForBackendService(BackendServiceName backendServiceName) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastMainGlobal() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getUser() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getUserById(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getUserByUsername(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getFollowers() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getFollowing() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getMutualFollows() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String follow(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String unfollow(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String mute(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String unmute(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String unban() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String followAll(Collection<String> collection) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getFollowingById(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getFollowersById(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String block(String str, String str2, Message message) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String unblock(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBlocked() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    private static String newRequestId() {
        return ddg.a(6);
    }

    private String execute(int i, Bundle bundle) {
        String newRequestId = newRequestId();
        execute(new Builder().eventBus(this.mLocalEventBus).service(this.mApiService).publicService(this.mPublicApiService).signer(this.mSignerService).actionCode(i).requestId(newRequestId).bundle(bundle).build());
        return newRequestId;
    }

    public String shareBroadcast(String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String reportBroadcast(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String increaseBroadcastRank(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String decreaseBroadcastRank(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastShareUrl(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastViewers(String str, String str2) {
        return EMPTY_REQUEST_ID;
    }

    public String getSuggestedPeople() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getSuggestedPeopleForOnboarding() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String userSearch(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String broadcastSearch(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String megaBroadcastCall() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String createBroadcast(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getGlobalMap(float f, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastRank(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastRankParameters() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String setBroadcastRankParameters(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcasts(ArrayList<String> arrayList) {
        return getBroadcasts(arrayList, false);
    }

    public String getBroadcasts(ArrayList<String> arrayList, boolean z) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putStringArrayList(ApiRunnable.EXTRA_IDS, arrayList);
        newApiBundle.putBoolean(ApiRunnable.EXTRA_ONLY_PUBLIC_PUBLISH, z);
        return executeWithNoRetries(ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS, newApiBundle);
    }

    private String executeWithNoRetries(int i, Bundle bundle) {
        String newRequestId = newRequestId();
        execute(new Builder().eventBus(this.mLocalEventBus).service(this.mApiService).publicService(this.mPublicApiService).signer(this.mSignerService).actionCode(i).requestId(newRequestId).bundle(bundle).numRetries(0).backoffInterval(0).build());
        return newRequestId;
    }

    public String replayThumbnailPlaylist(String str) {
        return EMPTY_REQUEST_ID;
    }

    public String replayViewed(String str) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_TOKEN, str);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_REPLAY_VIEWED, newApiBundle);
    }

    public String endReplayViewed(String str, int i, int i2) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_SESSION_ID, str);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_HEARTS, i);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_COMMENTS, i2);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_END_REPLAY_VIEWED, newApiBundle);
    }

    public String publishBroadcast(String str, String str2, ArrayList<String> arrayList, boolean z, float f, float f2, boolean z2) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String endBroadcast(String str, String str2) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String deleteBroadcast(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String setSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getSettings() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String supportedLanguages() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String pingBroadcast(String str, String str2) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String startWatching(String str) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_TOKEN, str);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_START_WATCHING, newApiBundle);
    }

    public String pingWatching(String str, String str2, int i, int i2) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_SESSION_ID, str);
        newApiBundle.putString(ApiRunnable.EXTRA_LOGGER_NAME, str2);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_HEARTS, i);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_COMMENTS, i2);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_PING_WATCHING, newApiBundle);
    }

    public String endWatching(String str, String str2, int i, int i2) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_SESSION_ID, str);
        newApiBundle.putString(ApiRunnable.EXTRA_LOGGER_NAME, str2);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_HEARTS, i);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_COMMENTS, i2);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_END_WATCHING, newApiBundle);
    }

    public String pingReplayViewed(String str, int i) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_SESSION_ID, str);
        newApiBundle.putInt(ApiRunnable.EXTRA_NUM_HEARTS, i);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_PING_REPLAY_VIEWED, newApiBundle);
    }

    public String playbackMeta(String str, HashMap<String, Object> hashMap, ChatStats chatStats) {
        return EMPTY_REQUEST_ID;
    }

    public String broadcastMeta(String str, HashMap<String, Object> hashMap, HashMap<String, Object> hashMap2, ChatStats chatStats) {
        return EMPTY_REQUEST_ID;
    }

    public String getAccessVideo(String str, String str2) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_TOKEN, str);
        newApiBundle.putString(ApiRunnable.EXTRA_BROADCAST_ID, str2);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_ACCESS_VIDEO, newApiBundle);
    }

    public String getAccessChat(String str) {
        Bundle newApiBundle = newApiBundle();
        newApiBundle.putString(ApiRunnable.EXTRA_TOKEN, str);
        return execute(ApiRunnable.ACTION_CODE_PUBLIC_ACCESS_CHAT, newApiBundle);
    }

    public void logout(a aVar, boolean z) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getBroadcastSummary(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getBroadcastIdForShareToken(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void performUploadTest() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getMyUserBroadcasts() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getUserBroadcastsByUserId(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getUserBroadcastsByUsername(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void setProfileImage(File file, File file2) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void updateProfileDisplayName(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void updateProfileDescription(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastForTeleport() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getSuggestedChannels() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void getTrendingPlaces() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String reportComment(Message message, String str, ReportType reportType) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String vote(String str, VoteType voteType) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String activeJuror(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastsForChannelId(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public String getBroadcastsByPolling(ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void markBroadcastPersistent(String str) {
        throw new UnsupportedOperationException("not yet implemented");
    }

    public void deactivateAccount() {
        throw new UnsupportedOperationException("not yet implemented");
    }
}
