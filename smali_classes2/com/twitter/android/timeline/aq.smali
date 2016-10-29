.class public Lcom/twitter/android/timeline/aq;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/ae;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;Lcom/twitter/model/timeline/ae;JLcom/twitter/model/timeline/al;J)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p6, p7, p5}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 17
    iput-object p2, p0, Lcom/twitter/android/timeline/aq;->a:Lcom/twitter/model/timeline/ae;

    .line 18
    iput-wide p3, p0, Lcom/twitter/android/timeline/aq;->b:J

    .line 19
    return-void
.end method
