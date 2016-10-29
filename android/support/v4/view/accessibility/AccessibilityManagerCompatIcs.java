package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener;
import java.util.List;

/* compiled from: Twttr */
class AccessibilityManagerCompatIcs {

    /* compiled from: Twttr */
    interface AccessibilityStateChangeListenerBridge {
        void onAccessibilityStateChanged(boolean z);
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompatIcs.1 */
    final class AnonymousClass1 implements AccessibilityStateChangeListener {
        final /* synthetic */ AccessibilityStateChangeListenerBridge val$bridge;

        AnonymousClass1(AccessibilityStateChangeListenerBridge accessibilityStateChangeListenerBridge) {
            this.val$bridge = accessibilityStateChangeListenerBridge;
        }

        public void onAccessibilityStateChanged(boolean z) {
            this.val$bridge.onAccessibilityStateChanged(z);
        }
    }

    AccessibilityManagerCompatIcs() {
    }

    public static Object newAccessibilityStateChangeListener(AccessibilityStateChangeListenerBridge accessibilityStateChangeListenerBridge) {
        return new AnonymousClass1(accessibilityStateChangeListenerBridge);
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, Object obj) {
        return accessibilityManager.addAccessibilityStateChangeListener((AccessibilityStateChangeListener) obj);
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, Object obj) {
        return accessibilityManager.removeAccessibilityStateChangeListener((AccessibilityStateChangeListener) obj);
    }

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i);
    }

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }
}
