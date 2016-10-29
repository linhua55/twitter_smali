package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.view.SupportActionModeWrapper.CallbackWrapper;
import android.util.Log;
import android.view.ActionMode;
import android.view.Window;
import android.view.Window.Callback;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class AppCompatDelegateImplV14 extends AppCompatDelegateImplV11 {
    private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
    private static TwilightManager sTwilightManager;
    private boolean mApplyDayNightCalled;
    private boolean mHandleNativeActionModes;
    private int mLocalNightMode;

    /* compiled from: Twttr */
    class AppCompatWindowCallbackV14 extends AppCompatWindowCallbackBase {
        AppCompatWindowCallbackV14(Callback callback) {
            super(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (AppCompatDelegateImplV14.this.isHandleNativeActionModesEnabled()) {
                return startAsSupportActionMode(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        final ActionMode startAsSupportActionMode(ActionMode.Callback callback) {
            Object callbackWrapper = new CallbackWrapper(AppCompatDelegateImplV14.this.mContext, callback);
            android.support.v7.view.ActionMode startSupportActionMode = AppCompatDelegateImplV14.this.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }
    }

    AppCompatDelegateImplV14(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.mLocalNightMode = -100;
        this.mHandleNativeActionModes = true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && this.mLocalNightMode == -100) {
            this.mLocalNightMode = bundle.getInt(KEY_LOCAL_NIGHT_MODE, -100);
        }
    }

    Callback wrapWindowCallback(Callback callback) {
        return new AppCompatWindowCallbackV14(callback);
    }

    public void setHandleNativeActionModesEnabled(boolean z) {
        this.mHandleNativeActionModes = z;
    }

    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    public boolean applyDayNight() {
        this.mApplyDayNightCalled = true;
        return updateConfigurationForNightMode(getNightModeToApply());
    }

    public void setLocalNightMode(int i) {
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.mLocalNightMode != i) {
                    this.mLocalNightMode = i;
                    if (this.mApplyDayNightCalled) {
                        applyDayNight();
                    }
                }
            default:
                Log.d("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
        }
    }

    private int mapNightModeToYesNo(int i) {
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
                switch (((UiModeManager) this.mContext.getSystemService("uimode")).getNightMode()) {
                    case mx.View_android_theme /*0*/:
                        return 0;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        return 2;
                    default:
                        return 1;
                }
            case mx.View_android_theme /*0*/:
                return getTwilightManager().isNight() ? 2 : 1;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 2;
            default:
                return 1;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mLocalNightMode != -100) {
            bundle.putInt(KEY_LOCAL_NIGHT_MODE, this.mLocalNightMode);
        }
    }

    private int getNightModeToApply() {
        return mapNightModeToYesNo(this.mLocalNightMode == -100 ? AppCompatDelegate.getDefaultNightMode() : this.mLocalNightMode);
    }

    private boolean updateConfigurationForNightMode(int i) {
        int i2;
        Resources resources = this.mContext.getResources();
        Configuration configuration = resources.getConfiguration();
        int i3 = configuration.uiMode & 48;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                i2 = 16;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i2 = 32;
                break;
            default:
                i2 = 0;
                break;
        }
        if (i3 == i2) {
            return false;
        }
        configuration.uiMode = (configuration.uiMode & -49) | i2;
        resources.updateConfiguration(configuration, null);
        return true;
    }

    private TwilightManager getTwilightManager() {
        if (sTwilightManager == null) {
            sTwilightManager = new TwilightManager(this.mContext.getApplicationContext());
        }
        return sTwilightManager;
    }
}
