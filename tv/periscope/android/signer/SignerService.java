package tv.periscope.android.signer;

import retrofit.http.Multipart;
import retrofit.http.POST;
import retrofit.http.Part;
import retrofit.mime.TypedFile;
import tv.periscope.android.api.UploadTestResponse;

/* compiled from: Twttr */
public interface SignerService {
    @POST("/upload")
    @Multipart
    UploadTestResponse uploadPadding(@Part("cookie") String str, @Part("padding") TypedFile typedFile);
}
