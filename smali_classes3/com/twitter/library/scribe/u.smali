.class public final Lcom/twitter/library/scribe/u;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/MomentScribeDetails$Transition;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 277
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 278
    iput-wide v0, p0, Lcom/twitter/library/scribe/u;->a:J

    .line 279
    iput-wide v0, p0, Lcom/twitter/library/scribe/u;->b:J

    .line 280
    iput-wide v0, p0, Lcom/twitter/library/scribe/u;->c:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/scribe/u;
    .locals 1

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/twitter/library/scribe/u;->a:J

    .line 287
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/scribe/u;
    .locals 0

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/twitter/library/scribe/u;->d:Z

    .line 305
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/scribe/u;
    .locals 1

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/twitter/library/scribe/u;->b:J

    .line 293
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/scribe/u;
    .locals 0

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/twitter/library/scribe/u;->e:Z

    .line 311
    return-object p0
.end method

.method public c(J)Lcom/twitter/library/scribe/u;
    .locals 1

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/twitter/library/scribe/u;->c:J

    .line 299
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/twitter/library/scribe/u;->e()Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/MomentScribeDetails$Transition;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;-><init>(Lcom/twitter/library/scribe/u;Lcom/twitter/library/scribe/n;)V

    return-object v0
.end method
