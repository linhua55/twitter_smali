package android.support.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback.Stub;
import android.text.TextUtils;

/* compiled from: Twttr */
public class CustomTabsClient {
    private final ICustomTabsService mService;
    private final ComponentName mServiceComponentName;

    /* compiled from: Twttr */
    /* renamed from: android.support.customtabs.CustomTabsClient.1 */
    class AnonymousClass1 extends Stub {
        final /* synthetic */ CustomTabsCallback val$callback;

        AnonymousClass1(CustomTabsCallback customTabsCallback) {
            this.val$callback = customTabsCallback;
        }

        public void onNavigationEvent(int i, Bundle bundle) {
            if (this.val$callback != null) {
                this.val$callback.onNavigationEvent(i, bundle);
            }
        }

        public void extraCallback(String str, Bundle bundle) throws RemoteException {
            if (this.val$callback != null) {
                this.val$callback.extraCallback(str, bundle);
            }
        }
    }

    CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName) {
        this.mService = iCustomTabsService;
        this.mServiceComponentName = componentName;
    }

    public static boolean bindCustomTabsService(Context context, String str, CustomTabsServiceConnection customTabsServiceConnection) {
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 33);
    }

    public boolean warmup(long j) {
        try {
            return this.mService.warmup(j);
        } catch (RemoteException e) {
            return false;
        }
    }

    public CustomTabsSession newSession(CustomTabsCallback customTabsCallback) {
        ICustomTabsCallback anonymousClass1 = new AnonymousClass1(customTabsCallback);
        try {
            if (this.mService.newSession(anonymousClass1)) {
                return new CustomTabsSession(this.mService, anonymousClass1, this.mServiceComponentName);
            }
            return null;
        } catch (RemoteException e) {
            return null;
        }
    }

    public Bundle extraCommand(String str, Bundle bundle) {
        try {
            return this.mService.extraCommand(str, bundle);
        } catch (RemoteException e) {
            return null;
        }
    }
}
