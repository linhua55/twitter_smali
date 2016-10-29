package tv.periscope.android.api;

import android.support.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import tv.periscope.android.event.a;
import tv.periscope.android.session.Session.Type;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.VoteType;

/* compiled from: Twttr */
public interface ApiManager {
    String activeJuror(String str);

    void bind();

    String block(String str, String str2, Message message);

    String broadcastMeta(String str, HashMap<String, Object> hashMap, HashMap<String, Object> hashMap2, @Nullable ChatStats chatStats);

    String broadcastSearch(String str);

    String createBroadcast(String str);

    void deactivateAccount();

    String decreaseBroadcastRank(String str);

    String deleteBroadcast(String str);

    String endBroadcast(String str, String str2);

    String endReplayViewed(String str, int i, int i2);

    String endWatching(String str, String str2, int i, int i2);

    String follow(String str);

    String followAll(Collection<String> collection);

    String getAccessChat(String str);

    String getAccessVideo(String str, String str2);

    String getAuthorizeTokenForBackendService(BackendServiceName backendServiceName);

    String getBlocked();

    String getBroadcastForTeleport();

    void getBroadcastIdForShareToken(String str);

    String getBroadcastMainGlobal();

    String getBroadcastRank(String str);

    String getBroadcastRankParameters();

    String getBroadcastShareUrl(String str);

    void getBroadcastSummary(String str);

    String getBroadcastViewers(String str, String str2);

    String getBroadcasts(ArrayList<String> arrayList);

    String getBroadcasts(ArrayList<String> arrayList, boolean z);

    String getBroadcastsByPolling(ArrayList<String> arrayList);

    String getBroadcastsForChannelId(String str);

    String getFollowers();

    String getFollowersById(String str);

    String getFollowing();

    String getFollowingById(String str);

    String getGlobalMap(float f, float f2, float f3, float f4);

    String getMutualFollows();

    void getMyUserBroadcasts();

    String getSettings();

    String getSuggestedChannels();

    String getSuggestedPeople();

    String getSuggestedPeopleForOnboarding();

    void getTrendingPlaces();

    String getUser();

    void getUserBroadcastsByUserId(String str);

    void getUserBroadcastsByUsername(String str);

    String getUserById(String str);

    String getUserByUsername(String str);

    String hello();

    String increaseBroadcastRank(String str);

    String login(String str, String str2, String str3, String str4, String str5, String str6, Type type);

    void logout(a aVar, boolean z);

    void markBroadcastPersistent(String str);

    String megaBroadcastCall();

    String mute(String str);

    void performUploadTest();

    String pingBroadcast(String str, String str2);

    String pingReplayViewed(String str, int i);

    String pingWatching(String str, String str2, int i, int i2);

    String playbackMeta(String str, HashMap<String, Object> hashMap, @Nullable ChatStats chatStats);

    String publishBroadcast(String str, String str2, ArrayList<String> arrayList, boolean z, float f, float f2, boolean z2);

    String replayThumbnailPlaylist(String str);

    String replayViewed(String str);

    String reportBroadcast(String str);

    String reportComment(Message message, String str, ReportType reportType);

    String setBroadcastRankParameters(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9);

    void setProfileImage(File file, File file2);

    String setSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5);

    String shareBroadcast(String str, ArrayList<String> arrayList);

    String startWatching(String str);

    String supportedLanguages();

    String unban();

    void unbind();

    String unblock(String str);

    String unfollow(String str);

    String unmute(String str);

    void updateProfileDescription(String str);

    void updateProfileDisplayName(String str);

    String userSearch(String str);

    String validateUsername(String str, String str2, String str3);

    String verifyUsername(String str, String str2, String str3, String str4);

    String vote(String str, VoteType voteType);
}
