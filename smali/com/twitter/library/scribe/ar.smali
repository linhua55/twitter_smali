.class public Lcom/twitter/library/scribe/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/scribe/au;


# instance fields
.field private a:Lcom/twitter/model/account/OAuthToken;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Lcom/twitter/library/scribe/as;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/scribe/au;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Lcom/twitter/library/network/j;

    iget-object v1, p0, Lcom/twitter/library/scribe/ar;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/twitter/library/network/j;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 348
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/network/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/aa;

    iget-object v2, p0, Lcom/twitter/library/scribe/ar;->a:Lcom/twitter/model/account/OAuthToken;

    invoke-direct {v1, v2}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/network/j;

    move-result-object v0

    const-string/jumbo v1, "Scribing is never triggered by a user action."

    .line 350
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Ljava/lang/String;)Lcom/twitter/library/network/j;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/scribe/ar;->e:Lcom/twitter/library/scribe/as;

    .line 351
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/network/j;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/scribe/ar;->b:Ljava/util/List;

    .line 352
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Ljava/util/List;)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/twitter/library/network/j;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/library/scribe/ar;->f:Z

    .line 355
    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v0

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    iput v0, p0, Lcom/twitter/library/scribe/ar;->g:I

    .line 356
    return-object p0
.end method

.method public a(Lcom/twitter/model/account/OAuthToken;)Lcom/twitter/library/scribe/au;
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/twitter/library/scribe/ar;->a:Lcom/twitter/model/account/OAuthToken;

    .line 318
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/scribe/au;
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/twitter/library/scribe/ar;->d:Ljava/lang/String;

    .line 336
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/library/scribe/au;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lcom/twitter/library/scribe/au;"
        }
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lcom/twitter/library/scribe/ar;->b:Ljava/util/List;

    .line 330
    return-object p0
.end method

.method public a([B)Lcom/twitter/library/scribe/au;
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/twitter/library/scribe/ar;->c:[B

    .line 324
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ar;->f:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/twitter/library/scribe/ar;->g:I

    return v0
.end method

.method public b(Landroid/content/Context;)Lcom/twitter/library/scribe/au;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/twitter/library/network/j;

    iget-object v1, p0, Lcom/twitter/library/scribe/ar;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/twitter/library/network/j;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 362
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/network/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/aa;

    iget-object v2, p0, Lcom/twitter/library/scribe/ar;->a:Lcom/twitter/model/account/OAuthToken;

    invoke-direct {v1, v2}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/network/j;

    move-result-object v0

    const-string/jumbo v1, "Scribing is never triggered by a user action."

    .line 364
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Ljava/lang/String;)Lcom/twitter/library/network/j;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/scribe/ar;->e:Lcom/twitter/library/scribe/as;

    .line 365
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 366
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/twitter/library/scribe/ar;->c:[B

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 367
    const-string/jumbo v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lorg/apache/http/HttpEntity;)Lcom/twitter/library/network/j;

    .line 370
    invoke-virtual {v0}, Lcom/twitter/library/network/j;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/library/scribe/ar;->f:Z

    .line 372
    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v0

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    iput v0, p0, Lcom/twitter/library/scribe/ar;->g:I

    .line 373
    return-object p0
.end method
