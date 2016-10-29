package tv.periscope.android.api.service.safety;

import defpackage.op;
import tv.periscope.android.api.PsRequest;
import tv.periscope.model.chat.MessageType.ReportType;

/* compiled from: Twttr */
public class ReportCommentRequest extends PsRequest {
    public static final String EXTRA_REPORT_COMMENT_REQUEST = "tv.periscope.android.api.service.safety.EXTRA_REPORT_COMMENT_REQUEST";
    @op(a = "broadcast_id")
    public String broadcastID;
    @op(a = "message")
    public String message;
    @op(a = "report_type")
    public int reportType;

    public ReportCommentRequest(String str, String str2, ReportType reportType) {
        this.message = str;
        this.broadcastID = str2;
        this.reportType = reportType.value;
    }
}
