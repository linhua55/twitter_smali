.class public final Lcom/twitter/library/scribe/l;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;",
        ">;"
    }
.end annotation


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 63
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/twitter/library/scribe/l;->a:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/scribe/l;
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/twitter/library/scribe/l;->a:J

    .line 68
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/twitter/library/scribe/l;->e()Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;-><init>(Lcom/twitter/library/scribe/l;Lcom/twitter/library/scribe/k;)V

    return-object v0
.end method
