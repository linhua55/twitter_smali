package tv.periscope.android.api;

import android.os.Bundle;
import android.os.Process;
import de.greenrobot.event.c;
import defpackage.dcm;
import defpackage.dcv;
import defpackage.ddf;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.parceler.bu;
import retrofit.RetrofitError;
import retrofit.RetrofitError$Kind;
import retrofit.mime.TypedFile;
import retrofit.mime.TypedInput;
import tv.periscope.android.api.service.channels.ChannelsService;
import tv.periscope.android.api.service.channels.PsChannel;
import tv.periscope.android.api.service.channels.PsGetBroadcastsForChannelResponse.Bid;
import tv.periscope.android.api.service.safety.ActiveJurorRequest;
import tv.periscope.android.api.service.safety.ReportCommentRequest;
import tv.periscope.android.api.service.safety.SafetyService;
import tv.periscope.android.api.service.safety.VoteRequest;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.event.ApiEvent.Type;
import tv.periscope.android.event.RetryEvent;
import tv.periscope.android.event.b;
import tv.periscope.android.signer.SignerService;
import tv.periscope.model.p;
import tv.periscope.model.s;
import tv.periscope.model.x;

/* compiled from: Twttr */
public class ApiRunnable extends ddf<ApiEvent> {
    public static final int ACTION_CODE_ACCESS_CHAT = 66;
    public static final int ACTION_CODE_ACCESS_VIDEO = 65;
    public static final int ACTION_CODE_ACTIVE_JUROR = 75;
    public static final int ACTION_CODE_ADJUST_BROADCAST_RANK = 58;
    public static final int ACTION_CODE_AUTHORIZE_TOKEN = 71;
    public static final int ACTION_CODE_BATCH_FOLLOW = 21;
    public static final int ACTION_CODE_BLOCK = 35;
    public static final int ACTION_CODE_BROADCAST_META = 54;
    public static final int ACTION_CODE_BROADCAST_RANK = 51;
    public static final int ACTION_CODE_BROADCAST_SEARCH = 69;
    public static final int ACTION_CODE_BROADCAST_SUMMARY = 34;
    public static final int ACTION_CODE_CREATE_BROADCAST = 23;
    public static final int ACTION_CODE_CREATE_BROADCAST_PERSISTENT = 78;
    public static final int ACTION_CODE_DEACTIVATE_ACCOUNT = 79;
    public static final int ACTION_CODE_DELETE_BROADCAST = 43;
    public static final int ACTION_CODE_END_BROADCAST = 31;
    public static final int ACTION_CODE_END_REPLAY_VIEWED = 25;
    public static final int ACTION_CODE_END_WATCHING = 28;
    public static final int ACTION_CODE_FIND_FRIENDS = 14;
    public static final int ACTION_CODE_FOLLOW = 8;
    public static final int ACTION_CODE_GET_BLOCKED = 37;
    public static final int ACTION_CODE_GET_BROADCASTS = 19;
    public static final int ACTION_CODE_GET_BROADCASTS_FOR_CHANNEL = 76;
    public static final int ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT = 64;
    public static final int ACTION_CODE_GET_BROADCAST_ID_FROM_URL = 39;
    public static final int ACTION_CODE_GET_BROADCAST_SHARE_URL = 33;
    public static final int ACTION_CODE_GET_BROADCAST_VIEWERS = 20;
    public static final int ACTION_CODE_GET_FOLLOWERS = 6;
    public static final int ACTION_CODE_GET_FOLLOWERS_BY_ID = 12;
    public static final int ACTION_CODE_GET_FOLLOWING = 7;
    public static final int ACTION_CODE_GET_FOLLOWING_BY_ID = 11;
    public static final int ACTION_CODE_GET_GLOBAL_BROADCAST_FEED = 4;
    public static final int ACTION_CODE_GET_MUTUAL_FOLLOWS = 60;
    public static final int ACTION_CODE_GET_RANK_PARAMETERS = 49;
    public static final int ACTION_CODE_GET_SETTINGS = 30;
    public static final int ACTION_CODE_GET_SUGGESTED_CHANNELS = 70;
    public static final int ACTION_CODE_GET_TRENDING_LOCATIONS = 72;
    public static final int ACTION_CODE_GET_USER = 5;
    public static final int ACTION_CODE_GET_USER_BY_ID = 10;
    public static final int ACTION_CODE_GET_USER_BY_USERNAME = 61;
    public static final int ACTION_CODE_HELLO = 59;
    public static final int ACTION_CODE_MAIN_FEATURED = 18;
    public static final int ACTION_CODE_MAIN_FOLLOWING = 17;
    public static final int ACTION_CODE_MAIN_GLOBAL_MAP = 52;
    public static final int ACTION_CODE_MARK_BROADCAST_PERSISTENT = 77;
    public static final int ACTION_CODE_MUTE = 55;
    public static final int ACTION_CODE_PING_BROADCAST = 32;
    public static final int ACTION_CODE_PING_REPLAY_VIEWED = 68;
    public static final int ACTION_CODE_PING_WATCHING = 27;
    public static final int ACTION_CODE_PLAYBACK_META = 53;
    public static final int ACTION_CODE_PUBLIC_ACCESS_CHAT = 210;
    public static final int ACTION_CODE_PUBLIC_ACCESS_VIDEO = 209;
    public static final int ACTION_CODE_PUBLIC_BLOCK = 208;
    public static final int ACTION_CODE_PUBLIC_END_REPLAY_VIEWED = 205;
    public static final int ACTION_CODE_PUBLIC_END_WATCHING = 203;
    public static final int ACTION_CODE_PUBLIC_GET_BROADCASTS = 200;
    public static final int ACTION_CODE_PUBLIC_MARK_ABUSE = 207;
    public static final int ACTION_CODE_PUBLIC_PING_REPLAY_VIEWED = 212;
    public static final int ACTION_CODE_PUBLIC_PING_WATCHING = 202;
    public static final int ACTION_CODE_PUBLIC_REPLAY_THUMBNAIL_PLAYLIST = 206;
    public static final int ACTION_CODE_PUBLIC_REPLAY_VIEWED = 204;
    public static final int ACTION_CODE_PUBLIC_START_WATCHING = 211;
    public static final int ACTION_CODE_PUBLISH_BROADCAST = 26;
    public static final int ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST = 62;
    public static final int ACTION_CODE_REPLAY_VIEWED = 24;
    public static final int ACTION_CODE_REPORT_BROADCAST = 41;
    public static final int ACTION_CODE_REPORT_COMMENT = 73;
    public static final int ACTION_CODE_SET_RANK_PARAMETERS = 50;
    public static final int ACTION_CODE_SET_SETTINGS = 29;
    public static final int ACTION_CODE_SHARE_BROADCAST = 38;
    public static final int ACTION_CODE_START_WATCHING = 67;
    public static final int ACTION_CODE_SUPPORTED_LANGUAGES = 57;
    public static final int ACTION_CODE_TWITTER_LOGIN = 1;
    public static final int ACTION_CODE_UNBAN = 63;
    public static final int ACTION_CODE_UNBLOCK = 36;
    public static final int ACTION_CODE_UNFOLLOW = 9;
    public static final int ACTION_CODE_UNKNOWN = -1;
    public static final int ACTION_CODE_UNMUTE = 56;
    public static final int ACTION_CODE_UPDATE_PROFILE_DESCRIPTION = 46;
    public static final int ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME = 47;
    public static final int ACTION_CODE_UPLOAD_PROFILE_IMAGE = 45;
    public static final int ACTION_CODE_UPLOAD_TEST = 40;
    public static final int ACTION_CODE_USER_BROADCASTS = 44;
    public static final int ACTION_CODE_USER_SEARCH = 15;
    public static final int ACTION_CODE_VALIDATE_USERNAME = 2;
    public static final int ACTION_CODE_VERIFY_USERNAME = 3;
    public static final int ACTION_CODE_VOTE = 74;
    public static final long BACKOFF_INTERVAL_NONE = 0;
    public static final long DEFAULT_BACKOFF_MS = 1000;
    public static final int DEFAULT_RETRIES = 5;
    public static final String EXTRA_AUTHORIZE_SERVICE_NAME = "e_service_name";
    public static final String EXTRA_BACKGROUND = "e_background";
    public static final String EXTRA_BROADCAST_ID = "e_broadcast_id";
    public static final String EXTRA_CACHE_DIR = "e_cache_dir";
    public static final String EXTRA_CHANNEL = "e_channel";
    public static final String EXTRA_COMPLETION = "e_completion";
    public static final String EXTRA_COOKIE = "e_cookie";
    public static final String EXTRA_COUNT = "e_count";
    public static final String EXTRA_DECAY_COEFFICIENT = "e_rank_decay";
    public static final String EXTRA_DECAY_HALF_LIFE = "e_rank_decay_half_life";
    public static final String EXTRA_DECREASE_RANK = "e_decrease_rank";
    public static final String EXTRA_DESCRIPTION = "e_description";
    public static final String EXTRA_DISPLAY_NAME = "e_display_name";
    public static final String EXTRA_DURATION = "e_duration";
    public static final String EXTRA_EVENT_TYPE = "e_event_type";
    public static final String EXTRA_FILE_DIR = "e_file_dir";
    public static final String EXTRA_FOLLOWING_ONLY_CHAT = "e_following_only_chat";
    public static final String EXTRA_HAS_LOCATION = "e_has_loc";
    public static final String EXTRA_HAS_MODERATION = "e_has_moderation";
    public static final String EXTRA_HEIGHT = "extra_height";
    public static final String EXTRA_IDS = "extra_ids";
    public static final String EXTRA_INCREASE_RANK = "e_increase_rank";
    public static final String EXTRA_INSTALL_ID = "e_install_id";
    public static final String EXTRA_IS_AUTODELETE_BROADCAST_ENABLED = "e_autodelete_enabled";
    public static final String EXTRA_IS_AUTOSAVE_ENABLED = "e_autosave_enabled";
    public static final String EXTRA_IS_BROADCAST_MODERATION_ENABLED = "e_broadcast_moderation_enabled";
    public static final String EXTRA_IS_USER_FOLLOW_ENABLED = "e_user_follow_enabled";
    public static final String EXTRA_IS_VIEWER_MODERATION_ENABLED = "e_viewer_moderation_enabled";
    public static final String EXTRA_LANGUAGES = "e_languages";
    public static final String EXTRA_LAT = "e_lat";
    public static final String EXTRA_LOCALE = "e_locale";
    public static final String EXTRA_LOCKED_IDs = "e_locked_ids";
    public static final String EXTRA_LOGGER_NAME = "e_logger_name";
    public static final String EXTRA_LONG = "e_long";
    public static final String EXTRA_MY_USER_ID = "e_my_user_id";
    public static final String EXTRA_NUM_COMMENTS = "e_n_comments";
    public static final String EXTRA_NUM_HEARTS = "e_num_hearts";
    public static final String EXTRA_ONLY_PUBLIC_PUBLISH = "e_only_public_publish";
    public static final String EXTRA_PERSISTENT = "persistent";
    public static final String EXTRA_PHONE_NUMBER = "e_phone_number";
    public static final String EXTRA_POINT_1_LAT = "e_point_1_lat";
    public static final String EXTRA_POINT_1_LNG = "e_point_1_lng";
    public static final String EXTRA_POINT_2_LAT = "e_point_2_lat";
    public static final String EXTRA_POINT_2_LNG = "e_point_2_lng";
    public static final String EXTRA_QUERY = "extra_query";
    public static final String EXTRA_REASON = "e_reason";
    public static final String EXTRA_REGION = "e_region";
    public static final String EXTRA_REPORT_CORTEX_SCORE_COEFFICIENT = "e_rank_cortex_score";
    public static final String EXTRA_REPORT_HAS_LOCATION_COEFFICIENT = "e_rank_has_location";
    public static final String EXTRA_REPORT_RATIO_COEFFICIENT = "e_rank_report_ratio";
    public static final String EXTRA_REPORT_SHARES_COEFFICIENT = "e_rank_shares";
    public static final String EXTRA_SECRET_KEY = "e_secret_key";
    public static final String EXTRA_SECRET_TOKEN = "e_secret_token";
    public static final String EXTRA_SERVICE_AUTORIZATION_TOKEN = "e_service_auth_token";
    public static final String EXTRA_SERVICE_CHANNEL_ID = "e_service_channel_id";
    public static final String EXTRA_SESSION_ID = "e_session_id";
    public static final String EXTRA_SESSION_TYPE = "e_session_type";
    public static final String EXTRA_SIGN_UP = "e_sign_up";
    public static final String EXTRA_SINCE = "e_since";
    public static final String EXTRA_STATS = "e_stats";
    public static final String EXTRA_STICKINESS_COEFFICIENT = "e_rank_stickiness";
    public static final String EXTRA_TITLE = "e_title";
    public static final String EXTRA_TOKEN = "e_token";
    public static final String EXTRA_USERNAME = "e_username";
    public static final String EXTRA_USER_ID = "e_user_id";
    public static final String EXTRA_USER_IDS = "e_user_ids";
    public static final String EXTRA_VERIFIED_COEFFICIENT = "e_rank_verified";
    public static final String EXTRA_VIEWERS_COUNT_COEFFICIENT = "e_rank_viewers";
    public static final String EXTRA_VIEWER_MODERATION = "e_viewer_moderation";
    public static final String EXTRA_WIDTH = "extra_width";
    private static final long MAX_BACKOFF_MS = 30000;
    public static final int MAX_BATCH_FOLLOW = 100;
    public static final int MAX_GET_BROADCASTS = 100;
    public static final int NUM_RETRIES_NONE = 0;
    private static final String PROFILE_IMAGE_FILENAME = "image.jpeg";
    private static final String TAG = "PsApi";
    private static final int UPLOAD_TEST_SIZE = 250000;
    private final int mActionCode;
    private final Bundle mBundle;
    private final ChannelsService mChannelsService;
    private final c mEventBus;
    private final PublicApiService mPublicService;
    private final ApiRequest mRequest;
    private final String mRequestId;
    private final SafetyService mSafetyService;
    private final ApiService mService;
    private final SignerService mSigner;

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.ApiRunnable.1 */
    class AnonymousClass1 extends TypedFile {
        AnonymousClass1(String str, File file) {
            super(str, file);
        }

        public String fileName() {
            return ApiRunnable.PROFILE_IMAGE_FILENAME;
        }
    }

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.ApiRunnable.2 */
    class AnonymousClass2 extends ApiRequestWithLogs {
        final /* synthetic */ boolean val$background;
        final /* synthetic */ String val$cookie;
        final /* synthetic */ String val$numComments;
        final /* synthetic */ String val$numHearts;
        final /* synthetic */ String val$session;

        AnonymousClass2(String str, String str2, String str3, String str4, boolean z) {
            this.val$cookie = str;
            this.val$session = str2;
            this.val$numHearts = str3;
            this.val$numComments = str4;
            this.val$background = z;
        }

        public ApiEvent doExecute(File[] fileArr) {
            try {
                dcv.e(ApiRunnable.TAG, "ping watching");
                Object pingWatching = ApiRunnable.this.mService.pingWatching(this.val$cookie, this.val$session, this.val$numHearts, this.val$numComments, ApiRunnable.this.newLogFileForUpload(fileArr));
                dcv.e(ApiRunnable.TAG, "pingWatching succeeded");
                return new ApiEvent(Type.OnPingWatchingComplete, ApiRunnable.this.mRequestId, null, pingWatching, this.val$background);
            } catch (RetrofitError e) {
                dcv.c(ApiRunnable.TAG, "pingWatching failed", e);
                return new ApiEvent(Type.OnPingWatchingComplete, ApiRunnable.this.mRequestId, null, e, this.val$background);
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.ApiRunnable.3 */
    class AnonymousClass3 extends ApiRequestWithLogs {
        final /* synthetic */ boolean val$background;
        final /* synthetic */ String val$cookie;
        final /* synthetic */ String val$numComments;
        final /* synthetic */ String val$numHearts;
        final /* synthetic */ String val$session;

        AnonymousClass3(String str, String str2, String str3, String str4, boolean z) {
            this.val$cookie = str;
            this.val$session = str2;
            this.val$numHearts = str3;
            this.val$numComments = str4;
            this.val$background = z;
        }

        public ApiEvent doExecute(File[] fileArr) {
            try {
                dcv.e(ApiRunnable.TAG, "end watching");
                Object endWatching = ApiRunnable.this.mService.endWatching(this.val$cookie, this.val$session, ApiRunnable.this.newLogFileForUpload(fileArr), this.val$numHearts, this.val$numComments);
                dcv.e(ApiRunnable.TAG, "endWatching succeeded");
                return new ApiEvent(Type.OnStopWatchingComplete, ApiRunnable.this.mRequestId, null, endWatching, this.val$background);
            } catch (RetrofitError e) {
                dcv.c(ApiRunnable.TAG, "endWatching failed", e);
                return new ApiEvent(Type.OnStopWatchingComplete, ApiRunnable.this.mRequestId, null, e, this.val$background);
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.ApiRunnable.4 */
    class AnonymousClass4 extends ApiRequestWithLogs {
        final /* synthetic */ boolean val$background;
        final /* synthetic */ String val$broadcastId;
        final /* synthetic */ String val$cookie;

        AnonymousClass4(String str, String str2, boolean z) {
            this.val$cookie = str;
            this.val$broadcastId = str2;
            this.val$background = z;
        }

        public ApiEvent doExecute(File[] fileArr) {
            try {
                dcv.e(ApiRunnable.TAG, "pinging broadcast");
                Object pingBroadcast = ApiRunnable.this.mService.pingBroadcast(this.val$cookie, this.val$broadcastId, ApiRunnable.this.newLogFileForUpload(fileArr));
                dcv.e(ApiRunnable.TAG, "pingBroadcast succeeded");
                return new ApiEvent(Type.OnPingBroadcastComplete, ApiRunnable.this.mRequestId, null, pingBroadcast, this.val$background);
            } catch (RetrofitError e) {
                dcv.c(ApiRunnable.TAG, "pingBroadcast failed", e);
                return new ApiEvent(Type.OnPingBroadcastComplete, ApiRunnable.this.mRequestId, null, e, this.val$background);
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.ApiRunnable.5 */
    class AnonymousClass5 extends ApiRequestWithLogs {
        final /* synthetic */ boolean val$background;
        final /* synthetic */ String val$broadcastId;
        final /* synthetic */ String val$cookie;

        AnonymousClass5(String str, String str2, boolean z) {
            this.val$cookie = str;
            this.val$broadcastId = str2;
            this.val$background = z;
        }

        public ApiEvent doExecute(File[] fileArr) {
            try {
                dcv.e(ApiRunnable.TAG, "ending broadcast");
                Object endBroadcast = ApiRunnable.this.mService.endBroadcast(this.val$cookie, this.val$broadcastId, ApiRunnable.this.newLogFileForUpload(fileArr));
                dcv.e(ApiRunnable.TAG, "endBroadcast succeeded");
                return new ApiEvent(Type.OnEndBroadcastComplete, ApiRunnable.this.mRequestId, null, endBroadcast, this.val$background);
            } catch (RetrofitError e) {
                dcv.c(ApiRunnable.TAG, "endBroadcast failed", e);
                return new ApiEvent(Type.OnEndBroadcastComplete, ApiRunnable.this.mRequestId, null, e, this.val$background);
            }
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private int mActionCode;
        private long mBackoffInterval;
        private Bundle mBundle;
        private ChannelsService mChannelService;
        private c mEventBus;
        private int mNumRetries;
        private PublicApiService mPublicService;
        private ApiRequest mRequest;
        private String mRequestId;
        private SafetyService mSafetyService;
        private ApiService mService;
        private SignerService mSigner;

        public Builder() {
            this.mActionCode = ApiRunnable.ACTION_CODE_UNKNOWN;
            this.mNumRetries = ApiRunnable.DEFAULT_RETRIES;
            this.mBackoffInterval = ApiRunnable.DEFAULT_BACKOFF_MS;
        }

        public Builder eventBus(c cVar) {
            this.mEventBus = cVar;
            return this;
        }

        public Builder service(ApiService apiService) {
            this.mService = apiService;
            return this;
        }

        public Builder publicService(PublicApiService publicApiService) {
            this.mPublicService = publicApiService;
            return this;
        }

        public Builder signer(SignerService signerService) {
            this.mSigner = signerService;
            return this;
        }

        public Builder channelService(ChannelsService channelsService) {
            this.mChannelService = channelsService;
            return this;
        }

        public Builder safetyService(SafetyService safetyService) {
            this.mSafetyService = safetyService;
            return this;
        }

        public Builder actionCode(int i) {
            this.mActionCode = i;
            return this;
        }

        public Builder requestId(String str) {
            this.mRequestId = str;
            return this;
        }

        public Builder request(ApiRequest apiRequest) {
            this.mRequest = apiRequest;
            return this;
        }

        public Builder bundle(Bundle bundle) {
            this.mBundle = bundle;
            return this;
        }

        public Builder numRetries(int i) {
            this.mNumRetries = i;
            return this;
        }

        public Builder backoffInterval(long j) {
            this.mBackoffInterval = j;
            return this;
        }

        public ApiRunnable build() {
            if (this.mRequestId != null) {
                return new ApiRunnable(this.mEventBus, this.mService, this.mPublicService, this.mSigner, this.mChannelService, this.mSafetyService, this.mActionCode, this.mRequestId, this.mRequest, this.mBundle, this.mNumRetries, this.mBackoffInterval);
            }
            throw new IllegalStateException("Request id is null!");
        }
    }

    ApiRunnable(c cVar, ApiService apiService, PublicApiService publicApiService, SignerService signerService, ChannelsService channelsService, SafetyService safetyService, int i, String str, ApiRequest apiRequest, Bundle bundle, int i2, long j) {
        super(i2, j, MAX_BACKOFF_MS);
        this.mEventBus = cVar;
        this.mService = apiService;
        this.mPublicService = publicApiService;
        this.mSigner = signerService;
        this.mChannelsService = channelsService;
        this.mSafetyService = safetyService;
        this.mActionCode = i;
        this.mRequestId = str;
        this.mRequest = apiRequest;
        this.mBundle = bundle;
    }

    public String getRequestId() {
        return this.mRequestId;
    }

    public void run() {
        Process.setThreadPriority(ACTION_CODE_GET_USER_BY_ID);
        super.run();
    }

    public void setAuthorizationHeader(String str) {
        this.mBundle.putString(EXTRA_SERVICE_AUTORIZATION_TOKEN, str);
    }

    protected boolean canRetry(ApiEvent apiEvent) {
        boolean z = (apiEvent == null || apiEvent.a() || (!is500Error(apiEvent.e) && !isTimeout(apiEvent.e))) ? false : true;
        if (z) {
            dcv.a(TAG, "A problem was detected for action code " + this.mActionCode + ". Retrying. Num retries left: " + numRetries() + ". Current backoff: " + currentBackoff());
        }
        return z;
    }

    private boolean is500Error(RetrofitError retrofitError) {
        if (retrofitError.getResponse() == null) {
            return false;
        }
        int status = retrofitError.getResponse().getStatus();
        if (status < 500 || status >= 600) {
            return false;
        }
        return true;
    }

    private boolean isTimeout(RetrofitError retrofitError) {
        Throwable cause = retrofitError.getCause();
        return retrofitError.getKind() == RetrofitError$Kind.NETWORK || (cause != null && ((cause instanceof UnknownHostException) || (cause instanceof ConnectException)));
    }

    protected void noRetriesLeft(ApiEvent apiEvent) {
        dcv.a(TAG, "No retries remaining for " + this.mActionCode + ". Posting error.");
        if (apiEvent != null) {
            this.mEventBus.c(apiEvent);
        }
    }

    protected void retry(ApiEvent apiEvent) {
        this.mEventBus.c(new RetryEvent(this));
    }

    protected void finish(ApiEvent apiEvent) {
        dcv.a(TAG, "No problems detected for action code: " + this.mActionCode + ". Num retries left: " + numRetries() + ". Current backoff: " + currentBackoff());
        if (apiEvent != null) {
            this.mEventBus.c(apiEvent);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected tv.periscope.android.event.ApiEvent execute() {
        /*
        r14 = this;
        r9 = 3;
        r10 = 0;
        r1 = 1;
        r8 = 0;
        r2 = 0;
        r4 = r14.mBundle;
        r0 = r14.mRequest;
        r3 = "e_background";
        r5 = r4.getBoolean(r3);
        r3 = r14.mActionCode;
        switch(r3) {
            case 1: goto L_0x0018;
            case 2: goto L_0x00af;
            case 3: goto L_0x010b;
            case 4: goto L_0x06fa;
            case 5: goto L_0x0176;
            case 6: goto L_0x01aa;
            case 7: goto L_0x01e3;
            case 8: goto L_0x0247;
            case 9: goto L_0x0341;
            case 10: goto L_0x03cd;
            case 11: goto L_0x046e;
            case 12: goto L_0x0435;
            case 13: goto L_0x0016;
            case 14: goto L_0x04a7;
            case 15: goto L_0x0518;
            case 16: goto L_0x0016;
            case 17: goto L_0x0552;
            case 18: goto L_0x0581;
            case 19: goto L_0x0638;
            case 20: goto L_0x06a0;
            case 21: goto L_0x02e9;
            case 22: goto L_0x0016;
            case 23: goto L_0x08d0;
            case 24: goto L_0x09d1;
            case 25: goto L_0x09d7;
            case 26: goto L_0x09dd;
            case 27: goto L_0x0a72;
            case 28: goto L_0x0a78;
            case 29: goto L_0x0a7e;
            case 30: goto L_0x0ae6;
            case 31: goto L_0x0b11;
            case 32: goto L_0x0b17;
            case 33: goto L_0x0b2f;
            case 34: goto L_0x0b35;
            case 35: goto L_0x0b6d;
            case 36: goto L_0x0b77;
            case 37: goto L_0x0b7d;
            case 38: goto L_0x0b1d;
            case 39: goto L_0x0b83;
            case 40: goto L_0x0bb7;
            case 41: goto L_0x0b23;
            case 42: goto L_0x0016;
            case 43: goto L_0x0a6c;
            case 44: goto L_0x0bbd;
            case 45: goto L_0x0c0c;
            case 46: goto L_0x0c4c;
            case 47: goto L_0x0c46;
            case 48: goto L_0x0016;
            case 49: goto L_0x0807;
            case 50: goto L_0x0832;
            case 51: goto L_0x07d3;
            case 52: goto L_0x07cd;
            case 53: goto L_0x0c52;
            case 54: goto L_0x0c72;
            case 55: goto L_0x027d;
            case 56: goto L_0x02b3;
            case 57: goto L_0x08ae;
            case 58: goto L_0x0b29;
            case 59: goto L_0x0170;
            case 60: goto L_0x021c;
            case 61: goto L_0x0401;
            case 62: goto L_0x09cb;
            case 63: goto L_0x0377;
            case 64: goto L_0x0754;
            case 65: goto L_0x0cc6;
            case 66: goto L_0x0ccc;
            case 67: goto L_0x0cd2;
            case 68: goto L_0x0cd8;
            case 69: goto L_0x054c;
            case 70: goto L_0x05b0;
            case 71: goto L_0x007b;
            case 72: goto L_0x07ae;
            case 73: goto L_0x0cde;
            case 74: goto L_0x0ce4;
            case 75: goto L_0x0cea;
            case 76: goto L_0x05ee;
            case 77: goto L_0x0c92;
            case 78: goto L_0x0949;
            case 79: goto L_0x03a2;
            case 80: goto L_0x0016;
            case 81: goto L_0x0016;
            case 82: goto L_0x0016;
            case 83: goto L_0x0016;
            case 84: goto L_0x0016;
            case 85: goto L_0x0016;
            case 86: goto L_0x0016;
            case 87: goto L_0x0016;
            case 88: goto L_0x0016;
            case 89: goto L_0x0016;
            case 90: goto L_0x0016;
            case 91: goto L_0x0016;
            case 92: goto L_0x0016;
            case 93: goto L_0x0016;
            case 94: goto L_0x0016;
            case 95: goto L_0x0016;
            case 96: goto L_0x0016;
            case 97: goto L_0x0016;
            case 98: goto L_0x0016;
            case 99: goto L_0x0016;
            case 100: goto L_0x0016;
            case 101: goto L_0x0016;
            case 102: goto L_0x0016;
            case 103: goto L_0x0016;
            case 104: goto L_0x0016;
            case 105: goto L_0x0016;
            case 106: goto L_0x0016;
            case 107: goto L_0x0016;
            case 108: goto L_0x0016;
            case 109: goto L_0x0016;
            case 110: goto L_0x0016;
            case 111: goto L_0x0016;
            case 112: goto L_0x0016;
            case 113: goto L_0x0016;
            case 114: goto L_0x0016;
            case 115: goto L_0x0016;
            case 116: goto L_0x0016;
            case 117: goto L_0x0016;
            case 118: goto L_0x0016;
            case 119: goto L_0x0016;
            case 120: goto L_0x0016;
            case 121: goto L_0x0016;
            case 122: goto L_0x0016;
            case 123: goto L_0x0016;
            case 124: goto L_0x0016;
            case 125: goto L_0x0016;
            case 126: goto L_0x0016;
            case 127: goto L_0x0016;
            case 128: goto L_0x0016;
            case 129: goto L_0x0016;
            case 130: goto L_0x0016;
            case 131: goto L_0x0016;
            case 132: goto L_0x0016;
            case 133: goto L_0x0016;
            case 134: goto L_0x0016;
            case 135: goto L_0x0016;
            case 136: goto L_0x0016;
            case 137: goto L_0x0016;
            case 138: goto L_0x0016;
            case 139: goto L_0x0016;
            case 140: goto L_0x0016;
            case 141: goto L_0x0016;
            case 142: goto L_0x0016;
            case 143: goto L_0x0016;
            case 144: goto L_0x0016;
            case 145: goto L_0x0016;
            case 146: goto L_0x0016;
            case 147: goto L_0x0016;
            case 148: goto L_0x0016;
            case 149: goto L_0x0016;
            case 150: goto L_0x0016;
            case 151: goto L_0x0016;
            case 152: goto L_0x0016;
            case 153: goto L_0x0016;
            case 154: goto L_0x0016;
            case 155: goto L_0x0016;
            case 156: goto L_0x0016;
            case 157: goto L_0x0016;
            case 158: goto L_0x0016;
            case 159: goto L_0x0016;
            case 160: goto L_0x0016;
            case 161: goto L_0x0016;
            case 162: goto L_0x0016;
            case 163: goto L_0x0016;
            case 164: goto L_0x0016;
            case 165: goto L_0x0016;
            case 166: goto L_0x0016;
            case 167: goto L_0x0016;
            case 168: goto L_0x0016;
            case 169: goto L_0x0016;
            case 170: goto L_0x0016;
            case 171: goto L_0x0016;
            case 172: goto L_0x0016;
            case 173: goto L_0x0016;
            case 174: goto L_0x0016;
            case 175: goto L_0x0016;
            case 176: goto L_0x0016;
            case 177: goto L_0x0016;
            case 178: goto L_0x0016;
            case 179: goto L_0x0016;
            case 180: goto L_0x0016;
            case 181: goto L_0x0016;
            case 182: goto L_0x0016;
            case 183: goto L_0x0016;
            case 184: goto L_0x0016;
            case 185: goto L_0x0016;
            case 186: goto L_0x0016;
            case 187: goto L_0x0016;
            case 188: goto L_0x0016;
            case 189: goto L_0x0016;
            case 190: goto L_0x0016;
            case 191: goto L_0x0016;
            case 192: goto L_0x0016;
            case 193: goto L_0x0016;
            case 194: goto L_0x0016;
            case 195: goto L_0x0016;
            case 196: goto L_0x0016;
            case 197: goto L_0x0016;
            case 198: goto L_0x0016;
            case 199: goto L_0x0016;
            case 200: goto L_0x0cf0;
            case 201: goto L_0x0016;
            case 202: goto L_0x0d08;
            case 203: goto L_0x0d0e;
            case 204: goto L_0x0d14;
            case 205: goto L_0x0d20;
            case 206: goto L_0x0d26;
            case 207: goto L_0x0d2c;
            case 208: goto L_0x0d32;
            case 209: goto L_0x0cf6;
            case 210: goto L_0x0cfc;
            case 211: goto L_0x0d02;
            case 212: goto L_0x0d1a;
            default: goto L_0x0016;
        };
    L_0x0016:
        r0 = r8;
    L_0x0017:
        return r0;
    L_0x0018:
        r0 = "e_secret_key";
        r0 = r4.getString(r0);
        r1 = "e_secret_token";
        r1 = r4.getString(r1);
        r2 = "e_username";
        r2 = r4.getString(r2);
        r3 = "e_user_id";
        r6 = r4.getString(r3);
        r3 = "e_phone_number";
        r7 = r4.getString(r3);
        r3 = "e_install_id";
        r8 = r4.getString(r3);
        r3 = "e_session_type";
        r9 = r4.getString(r3);
        r3 = new tv.periscope.android.api.TwitterLoginRequest;
        r3.<init>();
        r3.sessionKey = r1;
        r3.sessionSecret = r0;
        r3.userName = r2;
        r3.userId = r6;
        r3.phoneNumber = r7;
        r3.installId = r8;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0070 }
        r4 = r0.login(r3);	 Catch:{ RetrofitError -> 0x0070 }
        r0 = tv.periscope.android.session.Session.Type.valueOf(r9);	 Catch:{ RetrofitError -> 0x0070 }
        r4.sessionType = r0;	 Catch:{ RetrofitError -> 0x0070 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0070 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnTwitterLoginComplete;	 Catch:{ RetrofitError -> 0x0070 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0070 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0070 }
        goto L_0x0017;
    L_0x0070:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnTwitterLoginComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x007b:
        r3 = new tv.periscope.android.api.AuthorizeTokenRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_service_name";
        r0 = r4.getString(r0);
        r3.service = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x00a3 }
        r4 = r0.getAuthorizationTokenForService(r3);	 Catch:{ RetrofitError -> 0x00a3 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x00a3 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnAuthorizeTokenComplete;	 Catch:{ RetrofitError -> 0x00a3 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x00a3 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x00a3 }
        goto L_0x0017;
    L_0x00a3:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnAuthorizeTokenComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x00af:
        r3 = new tv.periscope.android.api.ValidateUsernameRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_username";
        r0 = r4.getString(r0);
        r3.username = r0;
        r0 = "e_secret_key";
        r0 = r4.getString(r0);
        r3.sessionKey = r0;
        r0 = "e_secret_token";
        r0 = r4.getString(r0);
        r3.sessionSecret = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x00e9 }
        r4 = r0.validateUsername(r3);	 Catch:{ RetrofitError -> 0x00e9 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x00e9 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnValidateUsernameComplete;	 Catch:{ RetrofitError -> 0x00e9 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x00e9 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x00e9 }
        goto L_0x0017;
    L_0x00e9:
        r11 = move-exception;
        r6 = new tv.periscope.android.event.ApiEvent;	 Catch:{ Throwable -> 0x00fe }
        r7 = tv.periscope.android.event.ApiEvent.Type.OnValidateUsernameComplete;	 Catch:{ Throwable -> 0x00fe }
        r8 = r14.mRequestId;	 Catch:{ Throwable -> 0x00fe }
        r0 = tv.periscope.android.api.ValidateUsernameError.class;
        r10 = r11.getBodyAs(r0);	 Catch:{ Throwable -> 0x00fe }
        r9 = r3;
        r12 = r5;
        r6.<init>(r7, r8, r9, r10, r11, r12);	 Catch:{ Throwable -> 0x00fe }
        r0 = r6;
        goto L_0x0017;
    L_0x00fe:
        r0 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnValidateUsernameComplete;
        r2 = r14.mRequestId;
        r4 = r11;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x010b:
        r3 = new tv.periscope.android.api.VerifyUsernameRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_username";
        r0 = r4.getString(r0);
        r3.username = r0;
        r0 = "e_display_name";
        r0 = r4.getString(r0);
        r3.displayName = r0;
        r0 = "e_secret_key";
        r0 = r4.getString(r0);
        r3.sessionKey = r0;
        r0 = "e_secret_token";
        r0 = r4.getString(r0);
        r3.sessionSecret = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x014e }
        r4 = r0.verifyUsername(r3);	 Catch:{ RetrofitError -> 0x014e }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x014e }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnVerifyUsernameComplete;	 Catch:{ RetrofitError -> 0x014e }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x014e }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x014e }
        goto L_0x0017;
    L_0x014e:
        r11 = move-exception;
        r6 = new tv.periscope.android.event.ApiEvent;	 Catch:{ Throwable -> 0x0163 }
        r7 = tv.periscope.android.event.ApiEvent.Type.OnVerifyUsernameComplete;	 Catch:{ Throwable -> 0x0163 }
        r8 = r14.mRequestId;	 Catch:{ Throwable -> 0x0163 }
        r0 = tv.periscope.android.api.ValidateUsernameError.class;
        r10 = r11.getBodyAs(r0);	 Catch:{ Throwable -> 0x0163 }
        r9 = r3;
        r12 = r5;
        r6.<init>(r7, r8, r9, r10, r11, r12);	 Catch:{ Throwable -> 0x0163 }
        r0 = r6;
        goto L_0x0017;
    L_0x0163:
        r0 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnVerifyUsernameComplete;
        r2 = r14.mRequestId;
        r4 = r11;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0170:
        r0 = r14.hello(r4);
        goto L_0x0017;
    L_0x0176:
        r3 = new tv.periscope.android.api.GetUserRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_my_user_id";
        r0 = r4.getString(r0);
        r3.userId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x019e }
        r4 = r0.getUser(r3);	 Catch:{ RetrofitError -> 0x019e }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x019e }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;	 Catch:{ RetrofitError -> 0x019e }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x019e }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x019e }
        goto L_0x0017;
    L_0x019e:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x01aa:
        r0 = "e_my_user_id";
        r6 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetFollowersRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r3.userId = r6;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x01d7 }
        r7 = r0.getFollowers(r3);	 Catch:{ RetrofitError -> 0x01d7 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x01d7 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowersComplete;	 Catch:{ RetrofitError -> 0x01d7 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x01d7 }
        r4 = new tv.periscope.android.api.FetchUsersResponse;	 Catch:{ RetrofitError -> 0x01d7 }
        r4.<init>(r6, r7);	 Catch:{ RetrofitError -> 0x01d7 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x01d7 }
        goto L_0x0017;
    L_0x01d7:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x01e3:
        r0 = "e_my_user_id";
        r6 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetFollowingRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r3.userId = r6;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0210 }
        r7 = r0.getFollowing(r3);	 Catch:{ RetrofitError -> 0x0210 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0210 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowingComplete;	 Catch:{ RetrofitError -> 0x0210 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0210 }
        r4 = new tv.periscope.android.api.FetchUsersResponse;	 Catch:{ RetrofitError -> 0x0210 }
        r4.<init>(r6, r7);	 Catch:{ RetrofitError -> 0x0210 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0210 }
        goto L_0x0017;
    L_0x0210:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowingComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x021c:
        r3 = new tv.periscope.android.api.PsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x023b }
        r4 = r0.getMutualFollows(r3);	 Catch:{ RetrofitError -> 0x023b }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x023b }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetMutualFollowsComplete;	 Catch:{ RetrofitError -> 0x023b }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x023b }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x023b }
        goto L_0x0017;
    L_0x023b:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetMutualFollowsComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0247:
        r0 = "e_user_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.FollowRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.userId = r0;
        r1 = r14.mService;	 Catch:{ RetrofitError -> 0x0271 }
        r4 = r1.follow(r3);	 Catch:{ RetrofitError -> 0x0271 }
        r4.userId = r0;	 Catch:{ RetrofitError -> 0x0271 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0271 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnFollowComplete;	 Catch:{ RetrofitError -> 0x0271 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0271 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0271 }
        goto L_0x0017;
    L_0x0271:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnFollowComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x027d:
        r0 = "e_user_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.MuteRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.userId = r0;
        r1 = r14.mService;	 Catch:{ RetrofitError -> 0x02a7 }
        r4 = r1.mute(r3);	 Catch:{ RetrofitError -> 0x02a7 }
        r4.userId = r0;	 Catch:{ RetrofitError -> 0x02a7 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x02a7 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMuteComplete;	 Catch:{ RetrofitError -> 0x02a7 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x02a7 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x02a7 }
        goto L_0x0017;
    L_0x02a7:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMuteComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x02b3:
        r0 = "e_user_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.UnMuteRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.userId = r0;
        r1 = r14.mService;	 Catch:{ RetrofitError -> 0x02dd }
        r4 = r1.unmute(r3);	 Catch:{ RetrofitError -> 0x02dd }
        r4.userId = r0;	 Catch:{ RetrofitError -> 0x02dd }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x02dd }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnMuteComplete;	 Catch:{ RetrofitError -> 0x02dd }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x02dd }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x02dd }
        goto L_0x0017;
    L_0x02dd:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnMuteComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x02e9:
        r0 = "extra_ids";
        r0 = r4.getStringArray(r0);
        r1 = r0.length;
        r3 = 100;
        if (r1 <= r3) goto L_0x0d38;
    L_0x02f5:
        r1 = 100;
        r0 = java.util.Arrays.copyOfRange(r0, r2, r1);
        r0 = (java.lang.String[]) r0;
        r6 = r0;
    L_0x02fe:
        r10 = r6.length;
        r0 = "e_cookie";
        r11 = r4.getString(r0);
        r12 = r6.length;
        r9 = r2;
        r7 = r2;
    L_0x0309:
        if (r9 >= r12) goto L_0x0016;
    L_0x030b:
        r0 = r6[r9];
        r3 = new tv.periscope.android.api.FollowRequest;
        r3.<init>();
        r3.cookie = r11;
        r3.userId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x032b }
        r4 = r0.follow(r3);	 Catch:{ RetrofitError -> 0x032b }
        r7 = r7 + 1;
        if (r7 != r10) goto L_0x033b;
    L_0x0320:
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x032b }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnFollowAllComplete;	 Catch:{ RetrofitError -> 0x032b }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x032b }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x032b }
        goto L_0x0017;
    L_0x032b:
        r4 = move-exception;
        r0 = r7 + 1;
        if (r0 != r10) goto L_0x033c;
    L_0x0330:
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnFollowAllComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x033b:
        r0 = r7;
    L_0x033c:
        r2 = r9 + 1;
        r9 = r2;
        r7 = r0;
        goto L_0x0309;
    L_0x0341:
        r0 = "e_user_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.UnfollowRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.userId = r0;
        r1 = r14.mService;	 Catch:{ RetrofitError -> 0x036b }
        r4 = r1.unfollow(r3);	 Catch:{ RetrofitError -> 0x036b }
        r4.userId = r0;	 Catch:{ RetrofitError -> 0x036b }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x036b }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnfollowComplete;	 Catch:{ RetrofitError -> 0x036b }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x036b }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x036b }
        goto L_0x0017;
    L_0x036b:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnfollowComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0377:
        r3 = new tv.periscope.android.api.PsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0396 }
        r4 = r0.unban(r3);	 Catch:{ RetrofitError -> 0x0396 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0396 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnbanComplete;	 Catch:{ RetrofitError -> 0x0396 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0396 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0396 }
        goto L_0x0017;
    L_0x0396:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUnbanComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x03a2:
        r3 = new tv.periscope.android.api.PsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x03c1 }
        r4 = r0.deactivateAccount(r3);	 Catch:{ RetrofitError -> 0x03c1 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x03c1 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnDeactivateAccountComplete;	 Catch:{ RetrofitError -> 0x03c1 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x03c1 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x03c1 }
        goto L_0x0017;
    L_0x03c1:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnDeactivateAccountComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x03cd:
        r0 = "e_user_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetUserRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.userId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x03f5 }
        r4 = r0.getUser(r3);	 Catch:{ RetrofitError -> 0x03f5 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x03f5 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;	 Catch:{ RetrofitError -> 0x03f5 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x03f5 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x03f5 }
        goto L_0x0017;
    L_0x03f5:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0401:
        r0 = "e_username";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetUserRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.username = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0429 }
        r4 = r0.getUser(r3);	 Catch:{ RetrofitError -> 0x0429 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0429 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;	 Catch:{ RetrofitError -> 0x0429 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0429 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0429 }
        goto L_0x0017;
    L_0x0429:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0435:
        r0 = "e_user_id";
        r6 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetFollowersRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r3.userId = r6;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0462 }
        r7 = r0.getFollowers(r3);	 Catch:{ RetrofitError -> 0x0462 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0462 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowersComplete;	 Catch:{ RetrofitError -> 0x0462 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0462 }
        r4 = new tv.periscope.android.api.FetchUsersResponse;	 Catch:{ RetrofitError -> 0x0462 }
        r4.<init>(r6, r7);	 Catch:{ RetrofitError -> 0x0462 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0462 }
        goto L_0x0017;
    L_0x0462:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x046e:
        r0 = "e_user_id";
        r6 = r4.getString(r0);
        r3 = new tv.periscope.android.api.GetFollowingRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r3.userId = r6;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x049b }
        r7 = r0.getFollowing(r3);	 Catch:{ RetrofitError -> 0x049b }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x049b }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowingComplete;	 Catch:{ RetrofitError -> 0x049b }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x049b }
        r4 = new tv.periscope.android.api.FetchUsersResponse;	 Catch:{ RetrofitError -> 0x049b }
        r4.<init>(r6, r7);	 Catch:{ RetrofitError -> 0x049b }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x049b }
        goto L_0x0017;
    L_0x049b:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetFollowingComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x04a7:
        r0 = "e_secret_key";
        r0 = r4.getString(r0);
        r3 = "e_secret_token";
        r6 = r4.getString(r3);
        r3 = "e_sign_up";
        r7 = r4.getBoolean(r3, r2);
        r3 = "e_languages";
        r8 = r4.getStringArrayList(r3);
        r3 = new tv.periscope.android.api.SuggestedPeopleRequest;
        r3.<init>();
        r9 = "e_cookie";
        r4 = r4.getString(r9);
        r3.cookie = r4;
        r3.twitterSessionKey = r0;
        r3.twitterSessionSecret = r6;
        r3.signup = r7;
        if (r8 == 0) goto L_0x0509;
    L_0x04d9:
        r0 = r8.isEmpty();
        if (r0 != 0) goto L_0x0509;
    L_0x04df:
        r0 = r8.size();
        r0 = new java.lang.String[r0];
        r3.languages = r0;
        r0 = r3.languages;
        r8.toArray(r0);
    L_0x04ec:
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x04fd }
        r4 = r0.suggestedPeople(r3);	 Catch:{ RetrofitError -> 0x04fd }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x04fd }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSuggestedUsersComplete;	 Catch:{ RetrofitError -> 0x04fd }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x04fd }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x04fd }
        goto L_0x0017;
    L_0x04fd:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSuggestedUsersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0509:
        r0 = new java.lang.String[r1];
        r1 = java.util.Locale.getDefault();
        r1 = r1.getLanguage();
        r0[r2] = r1;
        r3.languages = r0;
        goto L_0x04ec;
    L_0x0518:
        r0 = "extra_query";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.UserSearchRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.search = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0540 }
        r4 = r0.userSearch(r3);	 Catch:{ RetrofitError -> 0x0540 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0540 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUserSearchComplete;	 Catch:{ RetrofitError -> 0x0540 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0540 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0540 }
        goto L_0x0017;
    L_0x0540:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUserSearchComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x054c:
        r0 = r14.broadcastSearch(r4);
        goto L_0x0017;
    L_0x0552:
        r3 = new tv.periscope.android.api.MainBroadcastFollowingRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0575 }
        r4 = r0.followingBroadcastFeed(r3);	 Catch:{ RetrofitError -> 0x0575 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0575 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMainFollowingComplete;	 Catch:{ RetrofitError -> 0x0575 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0575 }
        r4 = r14.convert(r4);	 Catch:{ RetrofitError -> 0x0575 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0575 }
        goto L_0x0017;
    L_0x0575:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMainFollowingComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0581:
        r3 = new tv.periscope.android.api.MainBroadcastFeaturedRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x05a4 }
        r4 = r0.featuredBroadcastFeed(r3);	 Catch:{ RetrofitError -> 0x05a4 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x05a4 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMainFeaturedComplete;	 Catch:{ RetrofitError -> 0x05a4 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x05a4 }
        r4 = r14.convert(r4);	 Catch:{ RetrofitError -> 0x05a4 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x05a4 }
        goto L_0x0017;
    L_0x05a4:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMainFeaturedComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x05b0:
        r3 = new tv.periscope.android.api.service.channels.GetSuggestedChannelsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_service_auth_token";
        r0 = r4.getString(r0);
        r1 = r14.mChannelsService;	 Catch:{ RetrofitError -> 0x05dc }
        r4 = r1.getChannels(r0);	 Catch:{ RetrofitError -> 0x05dc }
        r0 = new tv.periscope.android.event.b;	 Catch:{ RetrofitError -> 0x05dc }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetSuggestedChannelsComplete;	 Catch:{ RetrofitError -> 0x05dc }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x05dc }
        r4 = r4.channels;	 Catch:{ RetrofitError -> 0x05dc }
        r4 = r14.convertPsChannels(r4);	 Catch:{ RetrofitError -> 0x05dc }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x05dc }
        goto L_0x0017;
    L_0x05dc:
        r11 = move-exception;
        r6 = new tv.periscope.android.event.b;
        r7 = tv.periscope.android.event.ApiEvent.Type.OnGetSuggestedChannelsComplete;
        r8 = r14.mRequestId;
        r10 = tv.periscope.android.api.BackendServiceName.CHANNELS;
        r9 = r3;
        r12 = r5;
        r13 = r14;
        r6.<init>(r7, r8, r9, r10, r11, r12, r13);
        r0 = r6;
        goto L_0x0017;
    L_0x05ee:
        r3 = new tv.periscope.android.api.service.channels.GetBroadcastsForChannelRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_service_auth_token";
        r0 = r4.getString(r0);
        r1 = "e_service_channel_id";
        r1 = r4.getString(r1);
        r2 = r14.mChannelsService;	 Catch:{ RetrofitError -> 0x0626 }
        r0 = r2.getBroadcastsForChannel(r0, r1);	 Catch:{ RetrofitError -> 0x0626 }
        r4 = new tv.periscope.android.api.service.channels.GetBroadcastsForChannelData;	 Catch:{ RetrofitError -> 0x0626 }
        r0 = r0.bids;	 Catch:{ RetrofitError -> 0x0626 }
        r0 = r14.convertBids(r0);	 Catch:{ RetrofitError -> 0x0626 }
        r4.<init>(r1, r0);	 Catch:{ RetrofitError -> 0x0626 }
        r0 = new tv.periscope.android.event.b;	 Catch:{ RetrofitError -> 0x0626 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastsForChannelComplete;	 Catch:{ RetrofitError -> 0x0626 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0626 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0626 }
        goto L_0x0017;
    L_0x0626:
        r11 = move-exception;
        r6 = new tv.periscope.android.event.b;
        r7 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastsForChannelComplete;
        r8 = r14.mRequestId;
        r10 = tv.periscope.android.api.BackendServiceName.CHANNELS;
        r9 = r3;
        r12 = r5;
        r13 = r14;
        r6.<init>(r7, r8, r9, r10, r11, r12, r13);
        r0 = r6;
        goto L_0x0017;
    L_0x0638:
        r0 = "extra_ids";
        r0 = r4.getStringArrayList(r0);
        r3 = new tv.periscope.android.api.GetBroadcastsRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.ids = r0;
        r0 = "e_only_public_publish";
        r0 = r4.getBoolean(r0);
        r3.onlyPublicPublish = r0;
        r0 = "e_event_type";
        r0 = r4.getString(r0);
        if (r0 == 0) goto L_0x069d;
    L_0x0661:
        r1 = tv.periscope.android.event.ApiEvent.Type.valueOf(r0);
    L_0x0665:
        r0 = "PsApi";
        r2 = "getting broadcasts";
        defpackage.dcv.e(r0, r2);	 Catch:{ RetrofitError -> 0x068a }
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x068a }
        r4 = r0.getBroadcasts(r3);	 Catch:{ RetrofitError -> 0x068a }
        r0 = "PsApi";
        r2 = "getBroadcasts succeeded";
        defpackage.dcv.e(r0, r2);	 Catch:{ RetrofitError -> 0x068a }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x068a }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x068a }
        r4 = r14.convert(r4);	 Catch:{ RetrofitError -> 0x068a }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x068a }
        goto L_0x0017;
    L_0x068a:
        r4 = move-exception;
        r0 = "PsApi";
        r2 = "getBroadcasts failed";
        defpackage.dcv.c(r0, r2, r4);
        r0 = new tv.periscope.android.event.ApiEvent;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x069d:
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastsComplete;
        goto L_0x0665;
    L_0x06a0:
        r0 = "e_broadcast_id";
        r0 = r4.getString(r0);
        r1 = "e_user_id";
        r1 = r4.getString(r1);
        r3 = new tv.periscope.android.api.GetBroadcastViewersRequest;
        r3.<init>();
        r2 = "e_cookie";
        r2 = r4.getString(r2);
        r3.cookie = r2;
        r3.id = r0;
        r2 = "PsApi";
        r4 = "getting broadcast viewers";
        defpackage.dcv.e(r2, r4);	 Catch:{ RetrofitError -> 0x06e5 }
        r2 = r14.mService;	 Catch:{ RetrofitError -> 0x06e5 }
        r4 = r2.getBroadcastViewers(r3);	 Catch:{ RetrofitError -> 0x06e5 }
        r2 = "PsApi";
        r6 = "getBroadcastViewers succeeded";
        defpackage.dcv.e(r2, r6);	 Catch:{ RetrofitError -> 0x06e5 }
        r4.broadcastId = r0;	 Catch:{ RetrofitError -> 0x06e5 }
        r4.broadcasterId = r1;	 Catch:{ RetrofitError -> 0x06e5 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x06e5 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastViewersComplete;	 Catch:{ RetrofitError -> 0x06e5 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x06e5 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x06e5 }
        goto L_0x0017;
    L_0x06e5:
        r4 = move-exception;
        r0 = "PsApi";
        r1 = "getBroadcastViewers failed";
        defpackage.dcv.c(r0, r1, r4);
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastViewersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x06fa:
        r3 = new tv.periscope.android.api.RankedBroadcastsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_languages";
        r0 = r4.getStringArrayList(r0);
        if (r0 == 0) goto L_0x0745;
    L_0x0711:
        r4 = r0.isEmpty();
        if (r4 != 0) goto L_0x0745;
    L_0x0717:
        r1 = r0.size();
        r1 = new java.lang.String[r1];
        r3.languages = r1;
        r1 = r3.languages;
        r0.toArray(r1);
    L_0x0724:
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0739 }
        r4 = r0.rankedBroadcastFeed(r3);	 Catch:{ RetrofitError -> 0x0739 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0739 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetGlobalBroadcastComplete;	 Catch:{ RetrofitError -> 0x0739 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0739 }
        r4 = r14.convert(r4);	 Catch:{ RetrofitError -> 0x0739 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0739 }
        goto L_0x0017;
    L_0x0739:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetGlobalBroadcastComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0745:
        r0 = new java.lang.String[r1];
        r1 = java.util.Locale.getDefault();
        r1 = r1.getLanguage();
        r0[r2] = r1;
        r3.languages = r0;
        goto L_0x0724;
    L_0x0754:
        r3 = new tv.periscope.android.api.RankedBroadcastsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_languages";
        r0 = r4.getStringArrayList(r0);
        if (r0 == 0) goto L_0x079f;
    L_0x076b:
        r4 = r0.isEmpty();
        if (r4 != 0) goto L_0x079f;
    L_0x0771:
        r1 = r0.size();
        r1 = new java.lang.String[r1];
        r3.languages = r1;
        r1 = r3.languages;
        r0.toArray(r1);
    L_0x077e:
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0793 }
        r4 = r0.rankedBroadcastFeed(r3);	 Catch:{ RetrofitError -> 0x0793 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0793 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastForTeleportComplete;	 Catch:{ RetrofitError -> 0x0793 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0793 }
        r4 = r14.convert(r4);	 Catch:{ RetrofitError -> 0x0793 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0793 }
        goto L_0x0017;
    L_0x0793:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastForTeleportComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x079f:
        r0 = new java.lang.String[r1];
        r1 = java.util.Locale.getDefault();
        r1 = r1.getLanguage();
        r0[r2] = r1;
        r3.languages = r0;
        goto L_0x077e;
    L_0x07ae:
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x07c0 }
        r4 = r0.getTrendingLocations();	 Catch:{ RetrofitError -> 0x07c0 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x07c0 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetTrendingLocationComplete;	 Catch:{ RetrofitError -> 0x07c0 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x07c0 }
        r3 = 0;
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x07c0 }
        goto L_0x0017;
    L_0x07c0:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetTrendingLocationComplete;
        r2 = r14.mRequestId;
        r3 = r8;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x07cd:
        r0 = r14.getMapBroadcastFeed(r4);
        goto L_0x0017;
    L_0x07d3:
        r3 = new tv.periscope.android.api.BroadcastRankRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_broadcast_id";
        r0 = r4.getString(r0);
        r3.broadcastId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x07fb }
        r4 = r0.getBroadcastRank(r3);	 Catch:{ RetrofitError -> 0x07fb }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x07fb }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastRankComplete;	 Catch:{ RetrofitError -> 0x07fb }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x07fb }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x07fb }
        goto L_0x0017;
    L_0x07fb:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastRankComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0807:
        r3 = new tv.periscope.android.api.GetBroadcastRankParametersRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0826 }
        r4 = r0.getBroadcastsRankParameters(r3);	 Catch:{ RetrofitError -> 0x0826 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0826 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastRankParametersComplete;	 Catch:{ RetrofitError -> 0x0826 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0826 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0826 }
        goto L_0x0017;
    L_0x0826:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastRankParametersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0832:
        r3 = new tv.periscope.android.api.SetBroadcastRankParametersRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_rank_stickiness";
        r0 = r4.getString(r0);
        r3.stickinessCoefficient = r0;
        r0 = "e_rank_verified";
        r0 = r4.getString(r0);
        r3.verifiedCoefficient = r0;
        r0 = "e_rank_viewers";
        r0 = r4.getString(r0);
        r3.viewersCountCoefficient = r0;
        r0 = "e_rank_report_ratio";
        r0 = r4.getString(r0);
        r3.reportRatioCoefficient = r0;
        r0 = "e_rank_has_location";
        r0 = r4.getString(r0);
        r3.hasLocationCoefficient = r0;
        r0 = "e_rank_shares";
        r0 = r4.getString(r0);
        r3.sharesCoefficient = r0;
        r0 = "e_rank_cortex_score";
        r0 = r4.getString(r0);
        r3.cortexScoreCoefficient = r0;
        r0 = "e_rank_decay";
        r0 = r4.getString(r0);
        r3.decayCoefficient = r0;
        r0 = "e_rank_decay_half_life";
        r0 = r4.getString(r0);
        r3.decayHalfLife = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x08a2 }
        r4 = r0.setBroadcastsRankParameters(r3);	 Catch:{ RetrofitError -> 0x08a2 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x08a2 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSetBroadcastRankParametersComplete;	 Catch:{ RetrofitError -> 0x08a2 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x08a2 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x08a2 }
        goto L_0x0017;
    L_0x08a2:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSetBroadcastRankParametersComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x08ae:
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x08c3 }
        r1 = "";
        r4 = r0.supportedLanguages(r1);	 Catch:{ RetrofitError -> 0x08c3 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x08c3 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSupportedLanguagesComplete;	 Catch:{ RetrofitError -> 0x08c3 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x08c3 }
        r3 = 0;
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x08c3 }
        goto L_0x0017;
    L_0x08c3:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSupportedLanguagesComplete;
        r2 = r14.mRequestId;
        r3 = r8;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x08d0:
        r0 = "extra_width";
        r0 = r4.getInt(r0);
        r1 = "extra_height";
        r1 = r4.getInt(r1);
        r2 = "e_region";
        r2 = r4.getString(r2);
        r3 = "e_has_moderation";
        r6 = r4.getBoolean(r3);
        r3 = new tv.periscope.android.api.CreateBroadcastRequest;
        r3.<init>();
        r7 = "e_cookie";
        r4 = r4.getString(r7);
        r3.cookie = r4;
        r3.lat = r10;
        r3.lng = r10;
        r3.width = r0;
        r3.height = r1;
        r3.region = r2;
        r0 = new int[r9];
        r0 = {1, 0, 0};
        r3.pspVersion = r0;
        r3.hasModeration = r6;
        r0 = "PsApi";
        r1 = "creating Broadcast";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x0934 }
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0934 }
        r4 = r0.startBroadcast(r3);	 Catch:{ RetrofitError -> 0x0934 }
        r0 = "PsApi";
        r1 = "createBroadcast succeeded";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x0934 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0934 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnCreateBroadcastComplete;	 Catch:{ RetrofitError -> 0x0934 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0934 }
        r4 = r4.create();	 Catch:{ RetrofitError -> 0x0934 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0934 }
        goto L_0x0017;
    L_0x0934:
        r4 = move-exception;
        r0 = "PsApi";
        r1 = "createBroadcast failed ";
        defpackage.dcv.c(r0, r1, r4);
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnCreateBroadcastComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0949:
        r0 = "extra_width";
        r0 = r4.getInt(r0);
        r1 = "extra_height";
        r1 = r4.getInt(r1);
        r2 = "e_region";
        r2 = r4.getString(r2);
        r3 = "persistent";
        r6 = r4.getBoolean(r3);
        r3 = "e_has_moderation";
        r7 = r4.getBoolean(r3);
        r3 = new tv.periscope.android.api.CreateBroadcastPersistenceRequest;
        r3.<init>();
        r8 = "e_cookie";
        r4 = r4.getString(r8);
        r3.cookie = r4;
        r3.lat = r10;
        r3.lng = r10;
        r3.width = r0;
        r3.height = r1;
        r3.region = r2;
        r3.persistent = r6;
        r0 = new int[r9];
        r0 = {1, 0, 0};
        r3.pspVersion = r0;
        r3.hasModeration = r7;
        r0 = "PsApi";
        r1 = "creating Broadcast with persistence";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x09b6 }
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x09b6 }
        r4 = r0.startBroadcast(r3);	 Catch:{ RetrofitError -> 0x09b6 }
        r0 = "PsApi";
        r1 = "createBroadcast with persistence succeeded";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x09b6 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x09b6 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnCreateBroadcastComplete;	 Catch:{ RetrofitError -> 0x09b6 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x09b6 }
        r4 = r4.create();	 Catch:{ RetrofitError -> 0x09b6 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x09b6 }
        goto L_0x0017;
    L_0x09b6:
        r4 = move-exception;
        r0 = "PsApi";
        r1 = "createBroadcast with persistence failed ";
        defpackage.dcv.c(r0, r1, r4);
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnCreateBroadcastComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x09cb:
        r0 = r14.replayThumbnailPlaylist(r4);
        goto L_0x0017;
    L_0x09d1:
        r0 = r14.replayViewed(r4);
        goto L_0x0017;
    L_0x09d7:
        r0 = r14.endReplayViewed(r4);
        goto L_0x0017;
    L_0x09dd:
        r0 = "e_broadcast_id";
        r0 = r4.getString(r0);
        r1 = "e_title";
        r1 = r4.getString(r1);
        r2 = "e_locked_ids";
        r2 = r4.getStringArrayList(r2);
        r3 = "e_has_loc";
        r6 = r4.getBoolean(r3);
        r3 = "e_lat";
        r7 = r4.getFloat(r3);
        r3 = "e_long";
        r8 = r4.getFloat(r3);
        r3 = "e_following_only_chat";
        r9 = r4.getBoolean(r3);
        r3 = new tv.periscope.android.api.PublishBroadcastRequest;
        r3.<init>();
        r10 = "e_cookie";
        r4 = r4.getString(r10);
        r3.cookie = r4;
        r3.broadcastId = r0;
        r3.title = r1;
        r3.lockIds = r2;
        r3.hasLocation = r6;
        r3.lat = r7;
        r3.lng = r8;
        r3.followingOnlyChat = r9;
        r0 = java.util.Locale.getDefault();
        r0 = r0.getLanguage();
        r3.locale = r0;
        r0 = "PsApi";
        r1 = "publishing broadcast";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x0a57 }
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0a57 }
        r4 = r0.publishBroadcast(r3);	 Catch:{ RetrofitError -> 0x0a57 }
        r0 = "PsApi";
        r1 = "publishBroadcast succeeded";
        defpackage.dcv.e(r0, r1);	 Catch:{ RetrofitError -> 0x0a57 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0a57 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnPublishBroadcastComplete;	 Catch:{ RetrofitError -> 0x0a57 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0a57 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0a57 }
        goto L_0x0017;
    L_0x0a57:
        r4 = move-exception;
        r0 = "PsApi";
        r1 = "publishBroadcast failed";
        defpackage.dcv.c(r0, r1, r4);
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnPublishBroadcastComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0a6c:
        r0 = r14.deleteBroadcast(r4);
        goto L_0x0017;
    L_0x0a72:
        r0 = r14.pingWatching(r4);
        goto L_0x0017;
    L_0x0a78:
        r0 = r14.endWatching(r4);
        goto L_0x0017;
    L_0x0a7e:
        r0 = "e_user_follow_enabled";
        r0 = r4.getBoolean(r0);
        r3 = "e_autosave_enabled";
        r6 = r4.getBoolean(r3);
        r3 = "e_autodelete_enabled";
        r7 = r4.getBoolean(r3);
        r3 = "e_viewer_moderation_enabled";
        r8 = r4.getBoolean(r3);
        r3 = "e_broadcast_moderation_enabled";
        r9 = r4.getBoolean(r3);
        r3 = new tv.periscope.android.api.SetSettingsRequest;
        r3.<init>();
        r10 = new tv.periscope.android.api.PsSettings;
        r10.<init>();
        r10.isUserFollowEnabled = r0;
        r10.isAutoSaveEnabled = r6;
        r10.isAutoDeleteEnabled = r7;
        if (r8 != 0) goto L_0x0ae2;
    L_0x0ab3:
        r0 = r1;
    L_0x0ab4:
        r10.isViewerModerationDisabled = r0;
        if (r9 != 0) goto L_0x0ae4;
    L_0x0ab8:
        r10.isBroadcastModerationDisabled = r1;
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r3.settings = r10;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0ad6 }
        r4 = r0.setSettings(r3);	 Catch:{ RetrofitError -> 0x0ad6 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0ad6 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSetSettingsComplete;	 Catch:{ RetrofitError -> 0x0ad6 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0ad6 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0ad6 }
        goto L_0x0017;
    L_0x0ad6:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnSetSettingsComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0ae2:
        r0 = r2;
        goto L_0x0ab4;
    L_0x0ae4:
        r1 = r2;
        goto L_0x0ab8;
    L_0x0ae6:
        r3 = new tv.periscope.android.api.GetSettingsRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0b05 }
        r4 = r0.getSettings(r3);	 Catch:{ RetrofitError -> 0x0b05 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0b05 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetSettingsComplete;	 Catch:{ RetrofitError -> 0x0b05 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0b05 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0b05 }
        goto L_0x0017;
    L_0x0b05:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetSettingsComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0b11:
        r0 = r14.endBroadcast(r4);
        goto L_0x0017;
    L_0x0b17:
        r0 = r14.pingBroadcast(r4);
        goto L_0x0017;
    L_0x0b1d:
        r0 = r14.shareBroadcast(r4);
        goto L_0x0017;
    L_0x0b23:
        r0 = r14.reportBroadcast(r4);
        goto L_0x0017;
    L_0x0b29:
        r0 = r14.adjustBroadcastRank(r4);
        goto L_0x0017;
    L_0x0b2f:
        r0 = r14.getBroadcastShareUrl(r4);
        goto L_0x0017;
    L_0x0b35:
        r0 = "e_broadcast_id";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.BroadcastSummaryRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.broadcastId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0b61 }
        r4 = r0.broadcastSummary(r3);	 Catch:{ RetrofitError -> 0x0b61 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0b61 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnBroadcastSummaryComplete;	 Catch:{ RetrofitError -> 0x0b61 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0b61 }
        r4 = r4.create();	 Catch:{ RetrofitError -> 0x0b61 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0b61 }
        goto L_0x0017;
    L_0x0b61:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnBroadcastSummaryComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0b6d:
        r1 = r14.mRequestId;
        r0 = (tv.periscope.android.api.BlockRequest) r0;
        r0 = r14.block(r1, r0, r5);
        goto L_0x0017;
    L_0x0b77:
        r0 = r14.unblock(r4);
        goto L_0x0017;
    L_0x0b7d:
        r0 = r14.getBlocked(r4);
        goto L_0x0017;
    L_0x0b83:
        r0 = "e_token";
        r0 = r4.getString(r0);
        r3 = new tv.periscope.android.api.BroadcastIdForTokenRequest;
        r3.<init>();
        r1 = "e_cookie";
        r1 = r4.getString(r1);
        r3.cookie = r1;
        r3.token = r0;
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0bab }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastIdForTokenComplete;	 Catch:{ RetrofitError -> 0x0bab }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0bab }
        r4 = r14.mService;	 Catch:{ RetrofitError -> 0x0bab }
        r4 = r4.getBroadcastIdForShareToken(r3);	 Catch:{ RetrofitError -> 0x0bab }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0bab }
        goto L_0x0017;
    L_0x0bab:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetBroadcastIdForTokenComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0bb7:
        r0 = r14.uploadToast(r4);
        goto L_0x0017;
    L_0x0bbd:
        r3 = r0;
        r3 = (tv.periscope.android.api.UserBroadcastsRequest) r3;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0be3 }
        r6 = r0.userBroadcasts(r3);	 Catch:{ RetrofitError -> 0x0be3 }
        r0 = r3.userId;	 Catch:{ RetrofitError -> 0x0be3 }
        r0 = defpackage.ddg.b(r0);	 Catch:{ RetrofitError -> 0x0be3 }
        if (r0 == 0) goto L_0x0bef;
    L_0x0bce:
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0be3 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserBroadcastsComplete;	 Catch:{ RetrofitError -> 0x0be3 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0be3 }
        r4 = r3.userId;	 Catch:{ RetrofitError -> 0x0be3 }
        r6 = r14.convert(r6);	 Catch:{ RetrofitError -> 0x0be3 }
        r4 = tv.periscope.model.ab.a(r4, r6);	 Catch:{ RetrofitError -> 0x0be3 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0be3 }
        goto L_0x0017;
    L_0x0be3:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserBroadcastsComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0bef:
        r0 = r3.username;	 Catch:{ RetrofitError -> 0x0be3 }
        r0 = defpackage.ddg.b(r0);	 Catch:{ RetrofitError -> 0x0be3 }
        if (r0 == 0) goto L_0x0c0c;
    L_0x0bf7:
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0be3 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnGetUserBroadcastsComplete;	 Catch:{ RetrofitError -> 0x0be3 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0be3 }
        r4 = r3.username;	 Catch:{ RetrofitError -> 0x0be3 }
        r6 = r14.convert(r6);	 Catch:{ RetrofitError -> 0x0be3 }
        r4 = tv.periscope.model.ab.b(r4, r6);	 Catch:{ RetrofitError -> 0x0be3 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0be3 }
        goto L_0x0017;
    L_0x0c0c:
        r0 = "e_file_dir";
        r0 = r4.getString(r0);
        r1 = new java.io.File;
        r1.<init>(r0);
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r2 = new tv.periscope.android.api.ApiRunnable$1;
        r3 = "image/jpeg";
        r2.<init>(r3, r1);
        r1 = r14.mService;	 Catch:{ RetrofitError -> 0x0c39 }
        r4 = r1.uploadProfileImage(r0, r2);	 Catch:{ RetrofitError -> 0x0c39 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0c39 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUploadProfilePictureComplete;	 Catch:{ RetrofitError -> 0x0c39 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0c39 }
        r3 = 0;
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0c39 }
        goto L_0x0017;
    L_0x0c39:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnUploadProfilePictureComplete;
        r2 = r14.mRequestId;
        r3 = r8;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0c46:
        r0 = r14.updateProfileDisplayName(r4);
        goto L_0x0017;
    L_0x0c4c:
        r0 = r14.updateProfileDescription(r4);
        goto L_0x0017;
    L_0x0c52:
        r3 = r0;
        r3 = (tv.periscope.android.api.PlaybackMetaRequest) r3;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0c66 }
        r4 = r0.playbackMeta(r3);	 Catch:{ RetrofitError -> 0x0c66 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0c66 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnPlayerMetaComplete;	 Catch:{ RetrofitError -> 0x0c66 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0c66 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0c66 }
        goto L_0x0017;
    L_0x0c66:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnPlayerMetaComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0c72:
        r3 = r0;
        r3 = (tv.periscope.android.api.BroadcastMetaRequest) r3;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0c86 }
        r4 = r0.broadcastMeta(r3);	 Catch:{ RetrofitError -> 0x0c86 }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0c86 }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnBroadcastMetaComplete;	 Catch:{ RetrofitError -> 0x0c86 }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0c86 }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0c86 }
        goto L_0x0017;
    L_0x0c86:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnBroadcastMetaComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0c92:
        r3 = new tv.periscope.android.api.PersistBroadcastRequest;
        r3.<init>();
        r0 = "e_cookie";
        r0 = r4.getString(r0);
        r3.cookie = r0;
        r0 = "e_broadcast_id";
        r0 = r4.getString(r0);
        r3.broadcastId = r0;
        r0 = r14.mService;	 Catch:{ RetrofitError -> 0x0cba }
        r4 = r0.persistBroadcast(r3);	 Catch:{ RetrofitError -> 0x0cba }
        r0 = new tv.periscope.android.event.ApiEvent;	 Catch:{ RetrofitError -> 0x0cba }
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMarkBroadcastPersistentComplete;	 Catch:{ RetrofitError -> 0x0cba }
        r2 = r14.mRequestId;	 Catch:{ RetrofitError -> 0x0cba }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ RetrofitError -> 0x0cba }
        goto L_0x0017;
    L_0x0cba:
        r4 = move-exception;
        r0 = new tv.periscope.android.event.ApiEvent;
        r1 = tv.periscope.android.event.ApiEvent.Type.OnMarkBroadcastPersistentComplete;
        r2 = r14.mRequestId;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0017;
    L_0x0cc6:
        r0 = r14.accessVideo(r4);
        goto L_0x0017;
    L_0x0ccc:
        r0 = r14.accessChat(r4);
        goto L_0x0017;
    L_0x0cd2:
        r0 = r14.startWatching(r4);
        goto L_0x0017;
    L_0x0cd8:
        r0 = r14.pingReplayViewed(r4);
        goto L_0x0017;
    L_0x0cde:
        r0 = r14.reportComment(r4);
        goto L_0x0017;
    L_0x0ce4:
        r0 = r14.vote(r4);
        goto L_0x0017;
    L_0x0cea:
        r0 = r14.activeJuror(r4);
        goto L_0x0017;
    L_0x0cf0:
        r0 = r14.getBroadcastsPublic(r4);
        goto L_0x0017;
    L_0x0cf6:
        r0 = r14.accessVideoPublic(r4);
        goto L_0x0017;
    L_0x0cfc:
        r0 = r14.accessChatPublic(r4);
        goto L_0x0017;
    L_0x0d02:
        r0 = r14.startWatchingPublic(r4);
        goto L_0x0017;
    L_0x0d08:
        r0 = r14.pingWatchingPublic(r4);
        goto L_0x0017;
    L_0x0d0e:
        r0 = r14.endWatchingPublic(r4);
        goto L_0x0017;
    L_0x0d14:
        r0 = r14.replayViewedPublic(r4);
        goto L_0x0017;
    L_0x0d1a:
        r0 = r14.pingReplayViewedPublic(r4);
        goto L_0x0017;
    L_0x0d20:
        r0 = r14.endReplayViewedPublic(r4);
        goto L_0x0017;
    L_0x0d26:
        r0 = r14.replayThumbnailPlaylistPublic(r4);
        goto L_0x0017;
    L_0x0d2c:
        r0 = r14.markAbusePublic(r4);
        goto L_0x0017;
    L_0x0d32:
        r0 = r14.blockPublic(r4);
        goto L_0x0017;
    L_0x0d38:
        r6 = r0;
        goto L_0x02fe;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.api.ApiRunnable.execute():tv.periscope.android.event.ApiEvent");
    }

    private List<String> convertBids(List<Bid> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        List<String> arrayList = new ArrayList(list.size());
        for (Bid bid : list) {
            arrayList.add(bid.bid);
        }
        return arrayList;
    }

    private ApiEvent broadcastSearch(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_QUERY);
        ApiRequest broadcastSearchRequest = new BroadcastSearchRequest();
        broadcastSearchRequest.cookie = bundle.getString(EXTRA_COOKIE);
        broadcastSearchRequest.query = string;
        broadcastSearchRequest.search = string;
        broadcastSearchRequest.includeReplay = true;
        try {
            return new ApiEvent(Type.OnBroadcastSearchComplete, this.mRequestId, broadcastSearchRequest, convert(this.mService.broadcastSearch(broadcastSearchRequest)), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnBroadcastSearchComplete, this.mRequestId, broadcastSearchRequest, e, z);
        }
    }

    private ApiEvent replayViewed(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_TOKEN);
        ApiRequest replayViewedRequest = new ReplayViewedRequest();
        replayViewedRequest.cookie = bundle.getString(EXTRA_COOKIE);
        replayViewedRequest.lifeCycleToken = string;
        try {
            dcv.a(TAG, "replayViewed");
            Object replayViewed = this.mService.replayViewed(replayViewedRequest);
            dcv.a(TAG, "replayViewed succeeded with returned session: " + replayViewed.session);
            return new ApiEvent(Type.OnReplayViewedComplete, this.mRequestId, replayViewedRequest, replayViewed, z);
        } catch (RetrofitError e) {
            dcv.a(TAG, "replayViewed Failed");
            return new ApiEvent(Type.OnReplayViewedComplete, this.mRequestId, replayViewedRequest, e, z);
        }
    }

    private ApiEvent accessVideo(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        String string2 = bundle.getString(EXTRA_TOKEN);
        ApiRequest accessVideoRequest = new AccessVideoRequest();
        accessVideoRequest.cookie = bundle.getString(EXTRA_COOKIE);
        accessVideoRequest.lifeCycleToken = string2;
        accessVideoRequest.broadcastId = string;
        try {
            dcv.e(TAG, "accessing video for " + string);
            AccessVideoResponse accessVideo = this.mService.accessVideo(accessVideoRequest);
            dcv.e(TAG, "accessVideo succeeded");
            return new ApiEvent(Type.OnAccessVideoComplete, this.mRequestId, accessVideoRequest, accessVideo.create(), z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "accessVideo failed", e);
            return new ApiEvent(Type.OnAccessVideoComplete, this.mRequestId, accessVideoRequest, e, z);
        }
    }

    private ApiEvent accessChat(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_TOKEN);
        boolean z2 = bundle.getBoolean(EXTRA_VIEWER_MODERATION);
        ApiRequest accessChatRequest = new AccessChatRequest();
        accessChatRequest.cookie = bundle.getString(EXTRA_COOKIE);
        accessChatRequest.chatToken = string;
        accessChatRequest.viewerModeration = z2;
        try {
            dcv.e(TAG, "accessing chat for " + string);
            AccessChatResponse accessChat = this.mService.accessChat(accessChatRequest);
            dcv.e(TAG, "accessChat succeeded");
            return new ApiEvent(Type.OnAccessChatComplete, this.mRequestId, accessChatRequest, accessChat.create(), z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "accessChat failed", e);
            return new ApiEvent(Type.OnAccessChatComplete, this.mRequestId, accessChatRequest, e, z);
        }
    }

    private ApiEvent startWatching(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_TOKEN);
        ApiRequest startWatchingRequest = new StartWatchingRequest();
        startWatchingRequest.cookie = bundle.getString(EXTRA_COOKIE);
        startWatchingRequest.lifeCycleToken = string;
        try {
            dcv.e(TAG, "start wathcing for " + string);
            Object startWatching = this.mService.startWatching(startWatchingRequest);
            dcv.e(TAG, "startWatching succeeded");
            return new ApiEvent(Type.OnStartWatchingComplete, this.mRequestId, startWatchingRequest, startWatching, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "startWatching failed", e);
            return new ApiEvent(Type.OnStartWatchingComplete, this.mRequestId, startWatchingRequest, e, z);
        }
    }

    private ApiEvent pingReplayViewed(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_SESSION_ID);
        ApiRequest pingReplayViewedRequest = new PingReplayViewedRequest();
        pingReplayViewedRequest.cookie = bundle.getString(EXTRA_COOKIE);
        pingReplayViewedRequest.session = string;
        try {
            dcv.e(TAG, "ping replay viewed for " + string);
            Object pingReplayViewed = this.mService.pingReplayViewed(pingReplayViewedRequest);
            dcv.e(TAG, "pingReplayViewed succeeded");
            return new ApiEvent(Type.OnPingReplayComplete, this.mRequestId, pingReplayViewedRequest, pingReplayViewed, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "pingReplayViewed failed", e);
            return new ApiEvent(Type.OnPingReplayComplete, this.mRequestId, pingReplayViewedRequest, e, z);
        }
    }

    private ApiEvent endReplayViewed(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_SESSION_ID);
        int i = bundle.getInt(EXTRA_NUM_HEARTS);
        ApiRequest endReplayViewedRequest = new EndReplayViewedRequest();
        endReplayViewedRequest.cookie = bundle.getString(EXTRA_COOKIE);
        endReplayViewedRequest.session = string;
        endReplayViewedRequest.numHearts = i;
        try {
            Object endReplayViewed = this.mService.endReplayViewed(endReplayViewedRequest);
            endReplayViewed.session = string;
            return new ApiEvent(Type.OnEndReplayViewedComplete, this.mRequestId, endReplayViewedRequest, endReplayViewed, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnEndReplayViewedComplete, this.mRequestId, endReplayViewedRequest, e, z);
        }
    }

    private ApiEvent uploadToast(Bundle bundle) {
        Object uploadPadding;
        ApiEvent apiEvent;
        Throwable th;
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        Closeable outputStreamWriter;
        try {
            File file = new File(bundle.getString(EXTRA_FILE_DIR), "padding.padding");
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
            try {
                outputStreamWriter.write(new char[UPLOAD_TEST_SIZE]);
                TypedFile typedFile = new TypedFile("multipart/form-data", file);
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    uploadPadding = this.mSigner.uploadPadding(bundle.getString(EXTRA_COOKIE), typedFile);
                    outputStreamWriter.flush();
                    uploadPadding.byteRateSeconds = 250000.0f / (((float) (System.currentTimeMillis() - currentTimeMillis)) / 1000.0f);
                    apiEvent = new ApiEvent(Type.OnUploadTestComplete, this.mRequestId, null, uploadPadding, z);
                    dcm.a(outputStreamWriter);
                } catch (RetrofitError e) {
                    apiEvent = new ApiEvent(Type.OnUploadTestComplete, this.mRequestId, null, e, z);
                    dcm.a(outputStreamWriter);
                }
            } catch (IOException e2) {
                uploadPadding = e2;
                try {
                    apiEvent = new ApiEvent(Type.OnUploadTestComplete, this.mRequestId, null, uploadPadding, z);
                    dcm.a(outputStreamWriter);
                    return apiEvent;
                } catch (Throwable th2) {
                    th = th2;
                    dcm.a(outputStreamWriter);
                    throw th;
                }
            }
        } catch (IOException e3) {
            uploadPadding = e3;
            outputStreamWriter = null;
            apiEvent = new ApiEvent(Type.OnUploadTestComplete, this.mRequestId, null, uploadPadding, z);
            dcm.a(outputStreamWriter);
            return apiEvent;
        } catch (Throwable th3) {
            outputStreamWriter = null;
            th = th3;
            dcm.a(outputStreamWriter);
            throw th;
        }
        return apiEvent;
    }

    private ApiEvent hello(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest helloRequest = new HelloRequest();
        helloRequest.cookie = bundle.getString(EXTRA_COOKIE);
        helloRequest.locale = bundle.getStringArrayList(EXTRA_LOCALE);
        try {
            return new ApiEvent(Type.OnHelloComplete, this.mRequestId, helloRequest, this.mService.hello(helloRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnHelloComplete, this.mRequestId, helloRequest, e, z);
        }
    }

    private ApiEvent getMapBroadcastFeed(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest mapGeoBroadcastFeedRequest = new MapGeoBroadcastFeedRequest();
        mapGeoBroadcastFeedRequest.cookie = bundle.getString(EXTRA_COOKIE);
        mapGeoBroadcastFeedRequest.p1Lat = bundle.getFloat(EXTRA_POINT_1_LAT);
        mapGeoBroadcastFeedRequest.p1Lng = bundle.getFloat(EXTRA_POINT_1_LNG);
        mapGeoBroadcastFeedRequest.p2Lat = bundle.getFloat(EXTRA_POINT_2_LAT);
        mapGeoBroadcastFeedRequest.p2Lng = bundle.getFloat(EXTRA_POINT_2_LNG);
        mapGeoBroadcastFeedRequest.includeReplay = true;
        try {
            return new ApiEvent(Type.OnGetGlobalMapComplete, this.mRequestId, mapGeoBroadcastFeedRequest, convert(this.mService.mapGeoBroadcastFeed(mapGeoBroadcastFeedRequest)), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnGetGlobalMapComplete, this.mRequestId, mapGeoBroadcastFeedRequest, e, z);
        }
    }

    private ApiEvent updateProfileDisplayName(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_DISPLAY_NAME);
        ApiRequest updateDisplayNameRequest = new UpdateDisplayNameRequest();
        updateDisplayNameRequest.cookie = bundle.getString(EXTRA_COOKIE);
        updateDisplayNameRequest.displayName = string;
        try {
            return new ApiEvent(Type.OnUpdateProfileDisplayNameComplete, this.mRequestId, updateDisplayNameRequest, this.mService.updateDisplayName(updateDisplayNameRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnUpdateProfileDisplayNameComplete, this.mRequestId, updateDisplayNameRequest, e, z);
        }
    }

    private ApiEvent updateProfileDescription(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_DESCRIPTION);
        ApiRequest updateDescriptionRequest = new UpdateDescriptionRequest();
        updateDescriptionRequest.cookie = bundle.getString(EXTRA_COOKIE);
        updateDescriptionRequest.description = string;
        try {
            return new ApiEvent(Type.OnUpdateProfileDescriptionComplete, this.mRequestId, updateDescriptionRequest, this.mService.updateDescription(updateDescriptionRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnUpdateProfileDescriptionComplete, this.mRequestId, updateDescriptionRequest, e, z);
        }
    }

    private ApiEvent pingWatching(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_SESSION_ID);
        return new AnonymousClass2(bundle.getString(EXTRA_COOKIE), string, String.valueOf(bundle.getInt(EXTRA_NUM_HEARTS)), String.valueOf(bundle.getInt(EXTRA_NUM_COMMENTS)), z).execute(bundle.getString(EXTRA_LOGGER_NAME));
    }

    private ApiEvent endWatching(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_SESSION_ID);
        return new AnonymousClass3(bundle.getString(EXTRA_COOKIE), string, String.valueOf(bundle.getInt(EXTRA_NUM_HEARTS)), String.valueOf(bundle.getInt(EXTRA_NUM_COMMENTS)), z).execute(bundle.getString(EXTRA_LOGGER_NAME));
    }

    private ApiEvent pingBroadcast(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        return new AnonymousClass4(bundle.getString(EXTRA_COOKIE), string, z).execute(bundle.getString(EXTRA_LOGGER_NAME));
    }

    private ApiEvent endBroadcast(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        return new AnonymousClass5(bundle.getString(EXTRA_COOKIE), string, z).execute(bundle.getString(EXTRA_LOGGER_NAME));
    }

    private TypedInput newLogFileForUpload(File[] fileArr) {
        if (fileArr != null) {
            return new TypedFiles(fileArr, "logs.txt");
        }
        return new TypedFileString("", "logs.txt");
    }

    private ApiEvent replayThumbnailPlaylist(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        ApiRequest thumbnailPlaylistRequest = new ThumbnailPlaylistRequest();
        thumbnailPlaylistRequest.cookie = bundle.getString(EXTRA_COOKIE);
        thumbnailPlaylistRequest.broadcastId = string;
        try {
            Object replayThumbnailPlayList = this.mService.replayThumbnailPlayList(thumbnailPlaylistRequest);
            replayThumbnailPlayList.broadcastId = string;
            return new ApiEvent(Type.OnReplayThumbnailPlaylistComplete, this.mRequestId, thumbnailPlaylistRequest, replayThumbnailPlayList, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnReplayThumbnailPlaylistComplete, this.mRequestId, thumbnailPlaylistRequest, e, z);
        }
    }

    private ApiEvent deleteBroadcast(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        ApiRequest deleteBroadcastRequest = new DeleteBroadcastRequest();
        deleteBroadcastRequest.cookie = bundle.getString(EXTRA_COOKIE);
        deleteBroadcastRequest.broadcastId = string;
        try {
            this.mService.deleteBroadcast(deleteBroadcastRequest);
            return new ApiEvent(Type.OnDeleteBroadcastComplete, this.mRequestId, deleteBroadcastRequest, x.a(string), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnDeleteBroadcastComplete, this.mRequestId, deleteBroadcastRequest, e, z);
        }
    }

    private ApiEvent shareBroadcast(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest shareBroadcastRequest = new ShareBroadcastRequest();
        shareBroadcastRequest.cookie = bundle.getString(EXTRA_COOKIE);
        shareBroadcastRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        shareBroadcastRequest.userIds = bundle.getStringArrayList(EXTRA_USER_IDS);
        try {
            dcv.e(TAG, "sharing broadcast");
            Object shareBroadcast = this.mService.shareBroadcast(shareBroadcastRequest);
            dcv.e(TAG, "shareBroadcast succeeded");
            return new ApiEvent(Type.OnShareBroadcastComplete, this.mRequestId, shareBroadcastRequest, shareBroadcast, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "shareBroadcast failed", e);
            return new ApiEvent(Type.OnShareBroadcastComplete, this.mRequestId, shareBroadcastRequest, e, z);
        }
    }

    private ApiEvent reportBroadcast(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest markAbuseRequest = new MarkAbuseRequest();
        markAbuseRequest.cookie = bundle.getString(EXTRA_COOKIE);
        markAbuseRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        try {
            dcv.e(TAG, "reporting broadcast");
            Object markAbuse = this.mService.markAbuse(markAbuseRequest);
            dcv.e(TAG, "report Broadcast succeeded");
            return new ApiEvent(Type.OnReportBroadcastComplete, this.mRequestId, markAbuseRequest, markAbuse, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "report Broadcast failed", e);
            return new ApiEvent(Type.OnReportBroadcastComplete, this.mRequestId, markAbuseRequest, e, z);
        }
    }

    private ApiEvent adjustBroadcastRank(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest adjustBroadcastRankRequest = new AdjustBroadcastRankRequest();
        adjustBroadcastRankRequest.cookie = bundle.getString(EXTRA_COOKIE);
        adjustBroadcastRankRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        adjustBroadcastRankRequest.increase = bundle.getBoolean(EXTRA_INCREASE_RANK);
        adjustBroadcastRankRequest.decrease = bundle.getBoolean(EXTRA_DECREASE_RANK);
        try {
            return new ApiEvent(Type.OnAdjustBroadcastRankComplete, this.mRequestId, adjustBroadcastRankRequest, this.mService.adjustBroadcastRank(adjustBroadcastRankRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnAdjustBroadcastRankComplete, this.mRequestId, adjustBroadcastRankRequest, e, z);
        }
    }

    private ApiEvent getBroadcastShareUrl(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest getBroadcastShareUrlRequest = new GetBroadcastShareUrlRequest();
        getBroadcastShareUrlRequest.cookie = bundle.getString(EXTRA_COOKIE);
        getBroadcastShareUrlRequest.id = bundle.getString(EXTRA_BROADCAST_ID);
        try {
            dcv.e(TAG, "getting broadcast share url");
            Object broadcastShareUrl = this.mService.getBroadcastShareUrl(getBroadcastShareUrlRequest);
            dcv.e(TAG, "getBroadcastShareUrl succeeded");
            broadcastShareUrl.id = getBroadcastShareUrlRequest.id;
            return new ApiEvent(Type.OnGetBroadcastShareUrlComplete, this.mRequestId, getBroadcastShareUrlRequest, broadcastShareUrl, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "getBroadcastShareUrl failed", e);
            return new ApiEvent(Type.OnGetBroadcastShareUrlComplete, this.mRequestId, getBroadcastShareUrlRequest, e, z);
        }
    }

    private ApiEvent block(String str, BlockRequest blockRequest, boolean z) {
        try {
            Object block = this.mService.block(blockRequest);
            block.userId = blockRequest.userId;
            return new ApiEvent(Type.OnBlockComplete, str, (ApiRequest) blockRequest, block, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnBlockComplete, str, (ApiRequest) blockRequest, e, z);
        }
    }

    private ApiEvent unblock(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_USER_ID);
        ApiRequest blockRequest = new BlockRequest();
        blockRequest.cookie = bundle.getString(EXTRA_COOKIE);
        blockRequest.userId = string;
        try {
            Object unblock = this.mService.unblock(blockRequest);
            unblock.userId = string;
            return new ApiEvent(Type.OnUnblockComplete, this.mRequestId, blockRequest, unblock, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnUnblockComplete, this.mRequestId, blockRequest, e, z);
        }
    }

    private List<p> convert(Collection<PsBroadcast> collection) {
        List arrayList = new ArrayList(collection.size());
        for (PsBroadcast create : collection) {
            arrayList.add(create.create());
        }
        return arrayList;
    }

    private List<s> convertPsChannels(Collection<PsChannel> collection) {
        List arrayList = new ArrayList(collection.size());
        for (PsChannel create : collection) {
            arrayList.add(create.create());
        }
        return arrayList;
    }

    private ApiEvent getBlocked(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest psRequest = new PsRequest();
        psRequest.cookie = bundle.getString(EXTRA_COOKIE);
        try {
            return new ApiEvent(Type.OnGetBlockedComplete, this.mRequestId, psRequest, this.mService.getBlocked(psRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnGetBlockedComplete, this.mRequestId, psRequest, e, z);
        }
    }

    private ApiEvent getBroadcastsPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ArrayList stringArrayList = bundle.getStringArrayList(EXTRA_IDS);
        ApiRequest getBroadcastsPublicRequest = new GetBroadcastsPublicRequest();
        getBroadcastsPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        getBroadcastsPublicRequest.ids = stringArrayList;
        try {
            dcv.e(TAG, "getting broadcasts");
            Collection broadcastsPublic = this.mPublicService.getBroadcastsPublic(getBroadcastsPublicRequest);
            dcv.e(TAG, "getBroadcasts succeeded");
            return new ApiEvent(Type.OnGetBroadcastsComplete, this.mRequestId, getBroadcastsPublicRequest, convert(broadcastsPublic), z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "getBroadcasts failed", e);
            return new ApiEvent(Type.OnGetBroadcastsComplete, this.mRequestId, getBroadcastsPublicRequest, e, z);
        }
    }

    private ApiEvent accessVideoPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        String string2 = bundle.getString(EXTRA_INSTALL_ID);
        ArrayList arrayList = new ArrayList();
        arrayList.add(string);
        GetBroadcastsPublicRequest getBroadcastsPublicRequest = new GetBroadcastsPublicRequest();
        getBroadcastsPublicRequest.installId = string2;
        getBroadcastsPublicRequest.ids = arrayList;
        ApiRequest accessVideoPublicRequest = new AccessVideoPublicRequest();
        accessVideoPublicRequest.installId = string2;
        accessVideoPublicRequest.broadcastId = string;
        try {
            List broadcastsPublic = this.mPublicService.getBroadcastsPublic(getBroadcastsPublicRequest);
            if (broadcastsPublic == null || broadcastsPublic.isEmpty()) {
                return new ApiEvent(Type.OnAccessVideoComplete, this.mRequestId, accessVideoPublicRequest, RetrofitError.unexpectedError("getBroadcastsPublic", new Exception("accessVideoPublic returned no results")), z);
            }
            dcv.e(TAG, "accessing public video  for " + string);
            AccessVideoResponse accessVideoPublic = this.mPublicService.getAccessVideoPublic(accessVideoPublicRequest);
            accessVideoPublic.broadcast = (PsBroadcast) broadcastsPublic.get(NUM_RETRIES_NONE);
            dcv.e(TAG, "accessVideoPublic succeeded");
            return new ApiEvent(Type.OnAccessVideoComplete, this.mRequestId, accessVideoPublicRequest, accessVideoPublic.create(), z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "accessVideoPublic failed", e);
            return new ApiEvent(Type.OnAccessVideoComplete, this.mRequestId, accessVideoPublicRequest, e, z);
        }
    }

    private ApiEvent accessChatPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest accessChatPublicRequest = new AccessChatPublicRequest();
        String string = bundle.getString(EXTRA_TOKEN);
        accessChatPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        accessChatPublicRequest.chatToken = string;
        try {
            dcv.e(TAG, "accessing public chat for " + string);
            AccessChatResponse accessChatPublic = this.mPublicService.getAccessChatPublic(accessChatPublicRequest);
            dcv.e(TAG, "accessChatPublic succeeded");
            return new ApiEvent(Type.OnAccessChatComplete, this.mRequestId, accessChatPublicRequest, accessChatPublic.create(), z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "accessChatPublic failed", e);
            return new ApiEvent(Type.OnAccessChatComplete, this.mRequestId, accessChatPublicRequest, e, z);
        }
    }

    private ApiEvent startWatchingPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest startWatchingPublicRequest = new StartWatchingPublicRequest();
        String string = bundle.getString(EXTRA_TOKEN);
        startWatchingPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        startWatchingPublicRequest.lifeCycleToken = string;
        try {
            dcv.e(TAG, "start watching for " + string);
            Object startWatchingPublic = this.mPublicService.startWatchingPublic(startWatchingPublicRequest);
            dcv.e(TAG, "startWatchingPublic succeeded");
            return new ApiEvent(Type.OnStartWatchingComplete, this.mRequestId, startWatchingPublicRequest, startWatchingPublic, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "startWatchingPublic failed", e);
            return new ApiEvent(Type.OnStartWatchingComplete, this.mRequestId, startWatchingPublicRequest, e, z);
        }
    }

    private ApiEvent pingWatchingPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest pingPublicRequest = new PingPublicRequest();
        pingPublicRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        pingPublicRequest.session = bundle.getString(EXTRA_SESSION_ID);
        pingPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            dcv.e(TAG, "ping watching");
            Object pingPublic = this.mPublicService.pingPublic(pingPublicRequest);
            dcv.e(TAG, "pingWatching succeeded");
            return new ApiEvent(Type.OnPingWatchingComplete, this.mRequestId, pingPublicRequest, pingPublic, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "pingWatching failed", e);
            return new ApiEvent(Type.OnPingWatchingComplete, this.mRequestId, pingPublicRequest, e, z);
        }
    }

    private ApiEvent endWatchingPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest endWatchingPublicRequest = new EndWatchingPublicRequest();
        endWatchingPublicRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        endWatchingPublicRequest.session = bundle.getString(EXTRA_SESSION_ID);
        endWatchingPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            dcv.e(TAG, "stop watching");
            Object endWatchingPublic = this.mPublicService.endWatchingPublic(endWatchingPublicRequest);
            dcv.e(TAG, "endWatching succeeded");
            return new ApiEvent(Type.OnStopWatchingComplete, this.mRequestId, endWatchingPublicRequest, endWatchingPublic, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "endWatching failed", e);
            return new ApiEvent(Type.OnStopWatchingComplete, this.mRequestId, endWatchingPublicRequest, e, z);
        }
    }

    private ApiEvent replayViewedPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest replayViewedPublicRequest = new ReplayViewedPublicRequest();
        replayViewedPublicRequest.lifeCycleToken = bundle.getString(EXTRA_TOKEN);
        replayViewedPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            dcv.e(TAG, "replayViewedPublic");
            Object replayViewedPublic = this.mPublicService.replayViewedPublic(replayViewedPublicRequest);
            dcv.e(TAG, "replayViewedPublic succeeded with returned session: " + replayViewedPublic.session);
            return new ApiEvent(Type.OnReplayViewedComplete, this.mRequestId, replayViewedPublicRequest, replayViewedPublic, z);
        } catch (RetrofitError e) {
            dcv.e(TAG, "replayViewedPublic Failed");
            return new ApiEvent(Type.OnReplayViewedComplete, this.mRequestId, replayViewedPublicRequest, e, z);
        }
    }

    private ApiEvent pingReplayViewedPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_SESSION_ID);
        ApiRequest pingReplayViewedPublicRequest = new PingReplayViewedPublicRequest();
        pingReplayViewedPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        pingReplayViewedPublicRequest.session = string;
        try {
            dcv.e(TAG, "ping replay viewed for " + string);
            Object pingReplayViewedPublic = this.mPublicService.pingReplayViewedPublic(pingReplayViewedPublicRequest);
            dcv.e(TAG, "pingReplayViewedPublic succeeded");
            return new ApiEvent(Type.OnPingReplayComplete, this.mRequestId, pingReplayViewedPublicRequest, pingReplayViewedPublic, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "pingReplayViewedPublic failed", e);
            return new ApiEvent(Type.OnPingReplayComplete, this.mRequestId, pingReplayViewedPublicRequest, e, z);
        }
    }

    private ApiEvent endReplayViewedPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest endReplayViewedPublicRequest = new EndReplayViewedPublicRequest();
        endReplayViewedPublicRequest.session = bundle.getString(EXTRA_SESSION_ID);
        endReplayViewedPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            dcv.e(TAG, "end replay viewed for " + endReplayViewedPublicRequest.session);
            Object endReplayViewedPublic = this.mPublicService.endReplayViewedPublic(endReplayViewedPublicRequest);
            endReplayViewedPublic.session = endReplayViewedPublicRequest.session;
            dcv.e(TAG, "endReplayViewedPublic succeeded");
            return new ApiEvent(Type.OnEndReplayViewedComplete, this.mRequestId, endReplayViewedPublicRequest, endReplayViewedPublic, z);
        } catch (RetrofitError e) {
            dcv.c(TAG, "endReplayViewedPublic failed", e);
            return new ApiEvent(Type.OnEndReplayViewedComplete, this.mRequestId, endReplayViewedPublicRequest, e, z);
        }
    }

    private ApiEvent replayThumbnailPlaylistPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        String string = bundle.getString(EXTRA_BROADCAST_ID);
        ApiRequest thumbnailPlaylistPublicRequest = new ThumbnailPlaylistPublicRequest();
        thumbnailPlaylistPublicRequest.broadcastId = string;
        thumbnailPlaylistPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            Object replayThumbnailPlaylistPublic = this.mPublicService.replayThumbnailPlaylistPublic(thumbnailPlaylistPublicRequest);
            replayThumbnailPlaylistPublic.broadcastId = string;
            return new ApiEvent(Type.OnReplayThumbnailPlaylistComplete, this.mRequestId, thumbnailPlaylistPublicRequest, replayThumbnailPlaylistPublic, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnReplayThumbnailPlaylistComplete, this.mRequestId, thumbnailPlaylistPublicRequest, e, z);
        }
    }

    private ApiEvent markAbusePublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest markAbusePublicRequest = new MarkAbusePublicRequest();
        markAbusePublicRequest.broadcastId = bundle.getString(EXTRA_BROADCAST_ID);
        markAbusePublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            return new ApiEvent(Type.OnReportBroadcastComplete, this.mRequestId, markAbusePublicRequest, this.mPublicService.markAbusePublic(markAbusePublicRequest), z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnReportBroadcastComplete, this.mRequestId, markAbusePublicRequest, e, z);
        }
    }

    private ApiEvent blockPublic(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ApiRequest blockPublicRequest = new BlockPublicRequest();
        blockPublicRequest.userId = bundle.getString(EXTRA_USER_ID);
        blockPublicRequest.session = bundle.getString(EXTRA_SESSION_ID);
        blockPublicRequest.installId = bundle.getString(EXTRA_INSTALL_ID);
        try {
            Object blockPublic = this.mPublicService.blockPublic(blockPublicRequest);
            blockPublic.userId = blockPublicRequest.userId;
            return new ApiEvent(Type.OnBlockComplete, this.mRequestId, blockPublicRequest, blockPublic, z);
        } catch (RetrofitError e) {
            return new ApiEvent(Type.OnBlockComplete, this.mRequestId, blockPublicRequest, e, z);
        }
    }

    private ApiEvent reportComment(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ReportCommentRequest reportCommentRequest = (ReportCommentRequest) bu.a(bundle.getParcelable("tv.periscope.android.api.service.safety.EXTRA_REPORT_COMMENT_REQUEST"));
        try {
            return new b(Type.OnReportCommentComplete, this.mRequestId, reportCommentRequest, this.mSafetyService.report(bundle.getString(EXTRA_SERVICE_AUTORIZATION_TOKEN), reportCommentRequest), z);
        } catch (RetrofitError e) {
            return new b(Type.OnReportCommentComplete, this.mRequestId, reportCommentRequest, BackendServiceName.SAFETY, e, z, this);
        }
    }

    private ApiEvent vote(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        VoteRequest voteRequest = (VoteRequest) bu.a(bundle.getParcelable("tv.periscope.android.api.service.safety.EXTRA_VOTE_REQUEST"));
        try {
            return new b(Type.OnVoteComplete, this.mRequestId, voteRequest, this.mSafetyService.vote(bundle.getString(EXTRA_SERVICE_AUTORIZATION_TOKEN), voteRequest), z);
        } catch (RetrofitError e) {
            return new b(Type.OnVoteComplete, this.mRequestId, voteRequest, BackendServiceName.SAFETY, e, z, this);
        }
    }

    private ApiEvent activeJuror(Bundle bundle) {
        boolean z = bundle.getBoolean(EXTRA_BACKGROUND);
        ActiveJurorRequest activeJurorRequest = (ActiveJurorRequest) bu.a(bundle.getParcelable("tv.periscope.android.api.service.safety.EXTRA_ACTIVE_JUROR_REQUEST"));
        try {
            return new b(Type.OnActiveJurorComplete, this.mRequestId, activeJurorRequest, this.mSafetyService.juror(bundle.getString(EXTRA_SERVICE_AUTORIZATION_TOKEN), activeJurorRequest), z);
        } catch (RetrofitError e) {
            return new b(Type.OnActiveJurorComplete, this.mRequestId, activeJurorRequest, BackendServiceName.SAFETY, e, z, this);
        }
    }
}
