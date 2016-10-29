.class public abstract Lcks;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/core/w;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/model/core/w;",
        "Ljava/lang/Comparable",
        "<",
        "Lcks;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method protected constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcks;->a:J

    .line 14
    iput-wide p3, p0, Lcks;->b:J

    .line 15
    iput-wide p5, p0, Lcks;->c:J

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcks;)I
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcks;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcks;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public abstract a()J
.end method

.method public abstract c()J
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcks;->a(Lcks;)I

    move-result v0

    return v0
.end method

.method public abstract d()J
.end method
