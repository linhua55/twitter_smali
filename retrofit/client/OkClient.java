package retrofit.client;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okio.i;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

/* compiled from: Twttr */
public class OkClient implements Client {
    private final OkHttpClient client;

    /* compiled from: Twttr */
    /* renamed from: retrofit.client.OkClient.1 */
    final class AnonymousClass1 extends RequestBody {
        final /* synthetic */ TypedOutput val$body;
        final /* synthetic */ MediaType val$mediaType;

        AnonymousClass1(MediaType mediaType, TypedOutput typedOutput) {
            this.val$mediaType = mediaType;
            this.val$body = typedOutput;
        }

        public MediaType contentType() {
            return this.val$mediaType;
        }

        public void writeTo(i iVar) throws IOException {
            this.val$body.writeTo(iVar.c());
        }

        public long contentLength() {
            return this.val$body.length();
        }
    }

    /* compiled from: Twttr */
    /* renamed from: retrofit.client.OkClient.2 */
    final class AnonymousClass2 implements TypedInput {
        final /* synthetic */ ResponseBody val$body;

        AnonymousClass2(ResponseBody responseBody) {
            this.val$body = responseBody;
        }

        public String mimeType() {
            MediaType contentType = this.val$body.contentType();
            return contentType == null ? null : contentType.toString();
        }

        public long length() {
            return this.val$body.contentLength();
        }

        public InputStream in() throws IOException {
            return this.val$body.byteStream();
        }
    }

    private static OkHttpClient generateDefaultOkHttp() {
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(15000, TimeUnit.MILLISECONDS);
        okHttpClient.setReadTimeout(20000, TimeUnit.MILLISECONDS);
        return okHttpClient;
    }

    public OkClient() {
        this(generateDefaultOkHttp());
    }

    public OkClient(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            throw new NullPointerException("client == null");
        }
        this.client = okHttpClient;
    }

    public Response execute(Request request) throws IOException {
        return parseResponse(this.client.newCall(createRequest(request)).execute());
    }

    static Request createRequest(Request request) {
        Builder method = new Builder().url(request.getUrl()).method(request.getMethod(), createRequestBody(request.getBody()));
        List headers = request.getHeaders();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            Header header = (Header) headers.get(i);
            String value = header.getValue();
            if (value == null) {
                value = "";
            }
            method.addHeader(header.getName(), value);
        }
        return method.build();
    }

    static Response parseResponse(Response response) {
        return new Response(response.request().urlString(), response.code(), response.message(), createHeaders(response.headers()), createResponseBody(response.body()));
    }

    private static RequestBody createRequestBody(TypedOutput typedOutput) {
        if (typedOutput == null) {
            return null;
        }
        return new AnonymousClass1(MediaType.parse(typedOutput.mimeType()), typedOutput);
    }

    private static TypedInput createResponseBody(ResponseBody responseBody) {
        if (responseBody.contentLength() == 0) {
            return null;
        }
        return new AnonymousClass2(responseBody);
    }

    private static List<Header> createHeaders(Headers headers) {
        int size = headers.size();
        List<Header> arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new Header(headers.name(i), headers.value(i)));
        }
        return arrayList;
    }
}
