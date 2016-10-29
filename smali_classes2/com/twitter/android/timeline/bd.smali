.class public Lcom/twitter/android/timeline/bd;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/android/timeline/bp;",
        ">",
        "Lcom/twitter/android/timeline/bp;"
    }
.end annotation


# instance fields
.field public final a:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<+",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/timeline/bj;",
            "J",
            "Lcom/twitter/model/timeline/al;",
            "Lcmf",
            "<+",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 16
    iput-object p5, p0, Lcom/twitter/android/timeline/bd;->a:Lcmf;

    .line 17
    return-void
.end method


# virtual methods
.method public bc_()Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<+",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/timeline/bd;->a:Lcmf;

    return-object v0
.end method
