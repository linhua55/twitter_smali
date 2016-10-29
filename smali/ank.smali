.class public Lank;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lane;


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lank;->a:Lazt;

    .line 23
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/dk;->t:Landroid/net/Uri;

    .line 28
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "user_groups_user_id"

    aput-object v3, v1, v2

    .line 30
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lank;->a:Lazt;

    invoke-interface {v1, v0}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lanl;

    invoke-direct {v1, p0}, Lanl;-><init>(Lank;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lank;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 44
    return-void
.end method
