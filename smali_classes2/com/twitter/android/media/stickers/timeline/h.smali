.class public Lcom/twitter/android/media/stickers/timeline/h;
.super Lave;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lave;-><init>(Landroid/content/Context;)V

    .line 19
    iput-wide p2, p0, Lcom/twitter/android/media/stickers/timeline/h;->a:J

    .line 20
    iput-wide p4, p0, Lcom/twitter/android/media/stickers/timeline/h;->b:J

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lavh;
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/timeline/h;->a:J

    .line 27
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    const-string/jumbo v1, "search_id=?"

    .line 28
    invoke-virtual {v0, v1}, Lavj;->a(Ljava/lang/String;)Lavj;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/twitter/android/media/stickers/timeline/h;->b:J

    .line 29
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lavj;->b([Ljava/lang/String;)Lavj;

    move-result-object v0

    sget-object v1, Lcha;->a:[Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 26
    return-object v0
.end method
