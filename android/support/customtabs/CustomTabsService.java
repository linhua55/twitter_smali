package android.support.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsService.Stub;
import android.support.v4.util.ArrayMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
public abstract class CustomTabsService extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    private Stub mBinder;
    private final Map<IBinder, DeathRecipient> mDeathRecipientMap;

    protected abstract Bundle extraCommand(String str, Bundle bundle);

    protected abstract boolean mayLaunchUrl(CustomTabsSessionToken customTabsSessionToken, Uri uri, Bundle bundle, List<Bundle> list);

    protected abstract boolean newSession(CustomTabsSessionToken customTabsSessionToken);

    protected abstract boolean updateVisuals(CustomTabsSessionToken customTabsSessionToken, Bundle bundle);

    protected abstract boolean warmup(long j);

    public CustomTabsService() {
        this.mDeathRecipientMap = new ArrayMap();
        this.mBinder = new Stub() {

            /* compiled from: Twttr */
            /* renamed from: android.support.customtabs.CustomTabsService.1.1 */
            class AnonymousClass1 implements DeathRecipient {
                final /* synthetic */ CustomTabsSessionToken val$sessionToken;

                AnonymousClass1(CustomTabsSessionToken customTabsSessionToken) {
                    this.val$sessionToken = customTabsSessionToken;
                }

                public void binderDied() {
                    CustomTabsService.this.cleanUpSession(this.val$sessionToken);
                }
            }

            public boolean warmup(long j) {
                return CustomTabsService.this.warmup(j);
            }

            public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
                boolean z = false;
                CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback);
                try {
                    DeathRecipient anonymousClass1 = new AnonymousClass1(customTabsSessionToken);
                    synchronized (CustomTabsService.this.mDeathRecipientMap) {
                        iCustomTabsCallback.asBinder().linkToDeath(anonymousClass1, 0);
                        CustomTabsService.this.mDeathRecipientMap.put(iCustomTabsCallback.asBinder(), anonymousClass1);
                    }
                    z = CustomTabsService.this.newSession(customTabsSessionToken);
                } catch (RemoteException e) {
                }
                return z;
            }

            public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
                return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(iCustomTabsCallback), uri, bundle, list);
            }

            public Bundle extraCommand(String str, Bundle bundle) {
                return CustomTabsService.this.extraCommand(str, bundle);
            }

            public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
                return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(iCustomTabsCallback), bundle);
            }
        };
    }

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    protected boolean cleanUpSession(CustomTabsSessionToken customTabsSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                IBinder callbackBinder = customTabsSessionToken.getCallbackBinder();
                callbackBinder.unlinkToDeath((DeathRecipient) this.mDeathRecipientMap.get(callbackBinder), 0);
                this.mDeathRecipientMap.remove(callbackBinder);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }
}
