.class Lcom/twitter/library/api/upload/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/media/model/MediaFile;",
        "Lrx/o",
        "<",
        "Lcom/twitter/library/api/upload/ab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/upload/MediaUsage;

.field final synthetic b:Lcom/twitter/library/api/upload/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/s;Lcom/twitter/library/api/upload/MediaUsage;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/library/api/upload/t;->b:Lcom/twitter/library/api/upload/s;

    iput-object p2, p0, Lcom/twitter/library/api/upload/t;->a:Lcom/twitter/library/api/upload/MediaUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lcom/twitter/media/model/MediaFile;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/t;->a(Lcom/twitter/media/model/MediaFile;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/media/model/MediaFile;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/model/MediaFile;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/library/api/upload/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/api/upload/t;->b:Lcom/twitter/library/api/upload/s;

    iget-object v1, p0, Lcom/twitter/library/api/upload/t;->a:Lcom/twitter/library/api/upload/MediaUsage;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/library/api/upload/s;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
