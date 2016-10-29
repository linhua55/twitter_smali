package tv.periscope.android.api.service.safety;

import retrofit.http.Body;
import retrofit.http.Header;
import retrofit.http.PUT;

/* compiled from: Twttr */
public interface SafetyService {
    @PUT("/juror")
    ActiveJurorResponse juror(@Header("Authorization") String str, @Body ActiveJurorRequest activeJurorRequest);

    @PUT("/report")
    ReportCommentResponse report(@Header("Authorization") String str, @Body ReportCommentRequest reportCommentRequest);

    @PUT("/vote")
    VoteResponse vote(@Header("Authorization") String str, @Body VoteRequest voteRequest);
}
