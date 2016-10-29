.class public Lcom/twitter/library/api/upload/w;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/twitter/library/api/upload/w;->a:Landroid/content/Context;

    .line 182
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/twitter/media/model/MediaType;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/media/model/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/library/api/upload/w;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/media/model/MediaFile;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    invoke-static {v0}, Ldbz;->a(Lcom/twitter/util/concurrent/j;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
