.class public Laha;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 31
    iput-wide p1, p0, Laha;->a:J

    .line 32
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/moments/maker/s;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/library/api/moments/maker/s;

    iget-wide v2, p0, Laha;->a:J

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/twitter/library/api/moments/maker/s;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    return-object v0
.end method

.method a()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Laha;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
