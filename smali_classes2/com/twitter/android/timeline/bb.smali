.class public Lcom/twitter/android/timeline/bb;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/as;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/twitter/model/moments/aw;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/moments/aw;Lcmf;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/timeline/bj;",
            "J",
            "Lcom/twitter/model/moments/aw;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/as;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p4, Lcom/twitter/model/moments/aw;->c:Lcom/twitter/model/timeline/al;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 23
    iput-object p5, p0, Lcom/twitter/android/timeline/bb;->a:Lcmf;

    .line 24
    iput-object p4, p0, Lcom/twitter/android/timeline/bb;->b:Lcom/twitter/model/moments/aw;

    .line 25
    iput-wide p6, p0, Lcom/twitter/android/timeline/bb;->c:J

    .line 26
    return-void
.end method


# virtual methods
.method public bc_()Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcmp;

    invoke-direct {v0}, Lcmp;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/timeline/bb;->a:Lcmf;

    .line 32
    invoke-virtual {v0, v1}, Lcmp;->a(Ljava/lang/Iterable;)Lcmp;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcmp;->a()Lcmo;

    move-result-object v0

    .line 31
    return-object v0
.end method
