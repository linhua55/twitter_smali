.class public Lcom/twitter/android/media/stickers/data/i;
.super Lcom/twitter/android/media/stickers/data/h;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "stickers_featured_categories"

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/twitter/android/media/stickers/data/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected b()Lcom/twitter/library/service/e;
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Lcom/twitter/android/media/stickers/data/h;->b()Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "featured_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    return-object v0
.end method
