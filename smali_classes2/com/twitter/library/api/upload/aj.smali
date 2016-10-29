.class public Lcom/twitter/library/api/upload/aj;
.super Lcom/twitter/library/api/upload/q;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/twitter/library/api/upload/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/twitter/library/api/upload/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/aa;)V
    .locals 7

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/library/api/upload/aj;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->b:Lcom/twitter/media/model/MediaFile;

    if-nez v0, :cond_1

    .line 29
    const/16 v0, 0x19d

    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(I)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/twitter/library/api/upload/o;

    iget-object v1, p0, Lcom/twitter/library/api/upload/aj;->p:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/aj;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/api/upload/aj;->q:Lcom/twitter/library/network/at;

    const-string/jumbo v4, "update_profile_banner"

    const-string/jumbo v5, "banner"

    .line 37
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/aj;->t()Lcom/twitter/library/api/t;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/api/upload/o;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/library/network/at;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/internal/network/i;)V

    iput-object v0, p0, Lcom/twitter/library/api/upload/aj;->h:Lcom/twitter/library/api/upload/o;

    .line 38
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "return_user"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 40
    iget-object v0, p0, Lcom/twitter/library/api/upload/aj;->h:Lcom/twitter/library/api/upload/o;

    iget-object v1, p0, Lcom/twitter/library/api/upload/aj;->b:Lcom/twitter/library/client/az;

    iget-object v1, v1, Lcom/twitter/library/client/az;->b:Lcom/twitter/media/model/MediaFile;

    sget-object v3, Lcom/twitter/library/api/upload/MediaUsage;->c:Lcom/twitter/library/api/upload/MediaUsage;

    iget-object v4, p0, Lcom/twitter/library/api/upload/aj;->g:Lcom/twitter/internal/android/service/d;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/api/upload/o;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/upload/MediaUsage;Lcom/twitter/internal/android/service/d;Ljava/util/List;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/aj;->c(Lcom/twitter/library/service/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/twitter/library/api/upload/aj;->o:Landroid/os/Bundle;

    const-string/jumbo v1, "header_media"

    iget-object v2, p0, Lcom/twitter/library/api/upload/aj;->b:Lcom/twitter/library/client/az;

    iget-object v2, v2, Lcom/twitter/library/client/az;->b:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method
