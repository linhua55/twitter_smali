package tv.periscope.android.api;

/* compiled from: Twttr */
public final class Constants {
    public static final String API_HEART_THEME_URL_FORMAT = "https://%s/public/heart_theme/android/%s/%s_%s.png";
    public static final String API_PROD_HOST = "api.periscope.tv";
    public static final String API_PROD_URL;
    public static final String CHANNELS_PROD_HOST = "channels.periscope.tv";
    public static final String CHANNELS_PROD_URL;
    public static final int CHANNELS_SERVICE_VERSION = 1;
    public static final String SAFETY_SERVICE_PROD_HOST = "safety.periscope.tv";
    public static final String SAFETY_SERVICE_PROD_URL;
    public static final int SAFETY_SERVICE_VERSION = 1;
    public static final String SIGNER_PROD_URL = "https://signer.periscope.tv";
    public static final int VALUE_BROADCAST_PERSISTENT = -1;
    public static final int VERSION = 2;

    static {
        API_PROD_URL = getApiUrl(API_PROD_HOST);
        CHANNELS_PROD_URL = getChannelsServiceUrl(CHANNELS_PROD_HOST);
        SAFETY_SERVICE_PROD_URL = getSafetyServiceUrl(SAFETY_SERVICE_PROD_HOST);
    }

    public static String getApiUrl(String str) {
        return "https://" + str + "/api/v" + VERSION;
    }

    public static String getChannelsServiceUrl(String str) {
        return "https://" + str + "/v" + SAFETY_SERVICE_VERSION;
    }

    public static String getSafetyServiceUrl(String str) {
        return "https://" + str + "/api/v" + SAFETY_SERVICE_VERSION;
    }
}
