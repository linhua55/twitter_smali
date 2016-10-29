package tv.periscope.android.api;

import defpackage.dca;
import defpackage.dcb;
import defpackage.dcd;
import defpackage.u;
import java.io.File;
import tv.periscope.android.event.ApiEvent;

/* compiled from: Twttr */
abstract class ApiRequestWithLogs {
    private ApiEvent mApiEvent;
    private final dcb mLogManager;

    protected abstract ApiEvent doExecute(File[] fileArr);

    public ApiRequestWithLogs() {
        this(dcb.a());
    }

    public ApiRequestWithLogs(dcb dcb) {
        this.mLogManager = dcb;
    }

    public ApiEvent execute(String str) {
        if (str != null) {
            dcd a = this.mLogManager.a(str);
            if (a != null) {
                return execute(a);
            }
            u.a(new Exception("Failed to find logger with name " + str));
        }
        return doExecute(null);
    }

    private ApiEvent execute(dcd dcd) {
        dcd.a(new dca() {
            public boolean onReceive(File[] fileArr) {
                ApiRequestWithLogs.this.mApiEvent = ApiRequestWithLogs.this.doExecute(fileArr);
                return ApiRequestWithLogs.this.mApiEvent.a();
            }

            public void onError(Exception exception) {
                ApiRequestWithLogs.this.mApiEvent = ApiRequestWithLogs.this.doExecute(null);
            }
        });
        return this.mApiEvent;
    }
}
