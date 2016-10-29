package tv.periscope.android.api;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public enum BackendServiceName {
    CHANNELS("channels"),
    SAFETY("safety");
    
    private static final Map<String, BackendServiceName> mReverseLookupMap;
    private final String mServiceName;

    static {
        mReverseLookupMap = new HashMap();
        BackendServiceName[] values = values();
        int length = values.length;
        int i;
        while (i < length) {
            BackendServiceName backendServiceName = values[i];
            mReverseLookupMap.put(backendServiceName.getServiceName(), backendServiceName);
            i++;
        }
    }

    private BackendServiceName(String str) {
        this.mServiceName = str;
    }

    public static BackendServiceName toEnum(String str) {
        return (BackendServiceName) mReverseLookupMap.get(str);
    }

    public String getServiceName() {
        return this.mServiceName;
    }
}
