.class public Lcom/twitter/library/api/upload/s;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/upload/i;

.field private final b:Lcom/twitter/library/api/upload/w;


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/upload/i;Lcom/twitter/library/api/upload/w;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/library/api/upload/s;->a:Lcom/twitter/library/api/upload/i;

    .line 38
    iput-object p2, p0, Lcom/twitter/library/api/upload/s;->b:Lcom/twitter/library/api/upload/w;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/twitter/media/model/MediaType;",
            "Lcom/twitter/library/api/upload/MediaUsage;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/library/api/upload/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/library/api/upload/s;->b:Lcom/twitter/library/api/upload/w;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/api/upload/w;->a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lrx/w;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lrx/w;->b()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/api/upload/t;

    invoke-direct {v1, p0, p3}, Lcom/twitter/library/api/upload/t;-><init>(Lcom/twitter/library/api/upload/s;Lcom/twitter/library/api/upload/MediaUsage;)V

    .line 59
    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/model/MediaFile;",
            "Lcom/twitter/library/api/upload/MediaUsage;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/library/api/upload/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/library/api/upload/x;

    iget-object v1, p0, Lcom/twitter/library/api/upload/s;->a:Lcom/twitter/library/api/upload/i;

    invoke-direct {v0, v1, p1, p2}, Lcom/twitter/library/api/upload/x;-><init>(Lcom/twitter/library/api/upload/i;Lcom/twitter/media/model/MediaFile;Lcom/twitter/library/api/upload/MediaUsage;)V

    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/twitter/media/model/MediaType;",
            "Lcom/twitter/library/api/upload/MediaUsage;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/upload/s;->a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/o;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/twitter/library/api/upload/v;

    invoke-direct {v1, p0}, Lcom/twitter/library/api/upload/v;-><init>(Lcom/twitter/library/api/upload/s;)V

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/api/upload/u;

    invoke-direct {v1, p0}, Lcom/twitter/library/api/upload/u;-><init>(Lcom/twitter/library/api/upload/s;)V

    .line 87
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 94
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ldcn;->a(Lrx/o;Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
