.class public Lcom/twitter/android/widget/ex;
.super Lcom/twitter/android/timeline/as;
.source "Twttr"


# static fields
.field public static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/twitter/android/widget/ex;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/timeline/as;)V
    .locals 8

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/twitter/android/timeline/as;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    sget-wide v2, Lcom/twitter/android/widget/ex;->c:J

    iget-object v4, p1, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    iget-object v5, p1, Lcom/twitter/android/timeline/as;->o:Lcom/twitter/model/timeline/al;

    iget-wide v6, p1, Lcom/twitter/android/timeline/as;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/as;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/moments/ay;Lcom/twitter/model/timeline/al;J)V

    .line 61
    return-void
.end method
