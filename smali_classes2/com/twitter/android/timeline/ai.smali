.class public Lcom/twitter/android/timeline/ai;
.super Lcom/twitter/android/timeline/cn;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/bg;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;Lcom/twitter/model/moments/bg;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 18
    iput-object p6, p0, Lcom/twitter/android/timeline/ai;->a:Lcom/twitter/model/moments/bg;

    .line 19
    return-void
.end method
