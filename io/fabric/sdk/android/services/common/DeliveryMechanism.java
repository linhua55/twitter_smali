package io.fabric.sdk.android.services.common;

/* compiled from: Twttr */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    
    private final int id;

    private DeliveryMechanism(int i) {
        this.id = i;
    }

    public int a() {
        return this.id;
    }

    public String toString() {
        return Integer.toString(this.id);
    }

    public static DeliveryMechanism a(String str) {
        if ("io.crash.air".equals(str)) {
            return TEST_DISTRIBUTION;
        }
        if (str != null) {
            return APP_STORE;
        }
        return DEVELOPER;
    }
}
