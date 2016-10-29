.class public Lcom/twitter/android/timeline/ca;
.super Lcom/twitter/android/timeline/cn;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/timeline/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/cn;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/twitter/android/timeline/cn;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/android/timeline/cn;->n:J

    iget-object v4, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-object v5, p1, Lcom/twitter/android/timeline/cn;->o:Lcom/twitter/model/timeline/al;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 12
    iput-object p2, p0, Lcom/twitter/android/timeline/ca;->a:Ljava/lang/String;

    .line 13
    iput-wide p3, p0, Lcom/twitter/android/timeline/ca;->c:J

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/timeline/ca;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/twitter/android/timeline/ca;->c:J

    return-wide v0
.end method
