.class final Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/squareup/okhttp/v_1_5_1/internal/okio/Sink;


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;J)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-wide p2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;JLcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$1;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    .line 269
    iget-wide v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;

    const/4 v1, 0x3

    # setter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->access$302(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;I)I

    goto :goto_0
.end method

.method public deadline(Lcom/squareup/okhttp/v_1_5_1/internal/okio/Deadline;)Lcom/squareup/okhttp/v_1_5_1/internal/okio/Sink;
    .locals 0

    .prologue
    .line 247
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->sink:Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;
    invoke-static {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->access$200(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;)Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;->flush()V

    goto :goto_0
.end method

.method public write(Lcom/squareup/okhttp/v_1_5_1/internal/okio/OkBuffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/v_1_5_1/internal/okio/OkBuffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/v_1_5_1/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 253
    iget-wide v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 254
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->sink:Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;
    invoke-static {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;->access$200(Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection;)Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/v_1_5_1/internal/okio/BufferedSink;->write(Lcom/squareup/okhttp/v_1_5_1/internal/okio/OkBuffer;J)V

    .line 258
    iget-wide v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 259
    return-void
.end method
