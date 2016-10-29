.class public Lawf;
.super Lave;
.source "Twttr"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lave;-><init>(Landroid/content/Context;)V

    .line 18
    iput-wide p2, p0, Lawf;->a:J

    .line 19
    return-void
.end method

.method public static a(J)Lavh;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/cq;->a:Landroid/net/Uri;

    .line 30
    invoke-static {v1, p0, p1}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    const-string/jumbo v1, "ads_type IN(\"tweet\",\"carousel\")"

    .line 31
    invoke-virtual {v0, v1}, Lavj;->a(Ljava/lang/String;)Lavj;

    move-result-object v0

    const-string/jumbo v1, "_id ASC"

    .line 33
    invoke-virtual {v0, v1}, Lavj;->b(Ljava/lang/String;)Lavj;

    move-result-object v0

    sget-object v1, Lcgl;->a:[Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 29
    return-object v0
.end method


# virtual methods
.method protected a()Lavh;
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lawf;->a:J

    invoke-static {v0, v1}, Lawf;->a(J)Lavh;

    move-result-object v0

    return-object v0
.end method
