package android.support.v4.net;

import android.net.ConnectivityManager;

/* compiled from: Twttr */
class ConnectivityManagerCompatJellyBean {
    ConnectivityManagerCompatJellyBean() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return connectivityManager.isActiveNetworkMetered();
    }
}
