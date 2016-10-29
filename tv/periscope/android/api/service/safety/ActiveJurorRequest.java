package tv.periscope.android.api.service.safety;

import defpackage.op;
import tv.periscope.android.api.PsRequest;

/* compiled from: Twttr */
public class ActiveJurorRequest extends PsRequest {
    public static final String EXTRA_ACTIVE_JUROR_REQUEST = "tv.periscope.android.api.service.safety.EXTRA_ACTIVE_JUROR_REQUEST";
    @op(a = "message_uuid")
    public String messageUUID;

    public ActiveJurorRequest(String str) {
        this.messageUUID = str;
    }
}
