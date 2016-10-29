.class Lcom/twitter/android/mw;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private final b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lorg/apache/http/client/HttpClient;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/twitter/android/mw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 53
    iput-object p3, p0, Lcom/twitter/android/mw;->a:Lorg/apache/http/client/HttpClient;

    .line 54
    iput-object p4, p0, Lcom/twitter/android/mw;->b:Landroid/net/Uri;

    .line 55
    return-void
.end method

.method static a(JLjava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 74
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "app:url_interpreter:redirect_service:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 80
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    iget-object v1, p0, Lcom/twitter/android/mw;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    const-string/jumbo v2, "http.protocol.handle-redirects"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 64
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpHead;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/android/mw;->h()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    const-string/jumbo v1, "request"

    iget-object v4, p0, Lcom/twitter/android/mw;->b:Landroid/net/Uri;

    invoke-static {v2, v3, v1, v4}, Lcom/twitter/android/mw;->a(JLjava/lang/String;Landroid/net/Uri;)V

    .line 67
    iget-object v1, p0, Lcom/twitter/android/mw;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {p0}, Lcom/twitter/android/mw;->h()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/library/service/ab;->c:J

    const-string/jumbo v2, "error"

    iget-object v3, p0, Lcom/twitter/android/mw;->b:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/mw;->a(JLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
