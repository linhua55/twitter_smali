package android.support.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService.Stub;

/* compiled from: Twttr */
public abstract class CustomTabsServiceConnection implements ServiceConnection {

    /* compiled from: Twttr */
    /* renamed from: android.support.customtabs.CustomTabsServiceConnection.1 */
    class AnonymousClass1 extends CustomTabsClient {
        AnonymousClass1(ICustomTabsService iCustomTabsService, ComponentName componentName) {
            super(iCustomTabsService, componentName);
        }
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient);

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new AnonymousClass1(Stub.asInterface(iBinder), componentName));
    }
}
