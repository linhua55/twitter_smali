.class Ldai;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldah;

.field private b:I


# direct methods
.method constructor <init>(Ldah;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Ldai;->a:Ldah;

    invoke-direct {p0}, Lczl;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Ldai;->a:Ldah;

    iget-object v0, v0, Ldah;->a:[Ljava/lang/Object;

    iget v1, p0, Ldai;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldai;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Ldai;->b:I

    iget-object v1, p0, Ldai;->a:Ldah;

    iget-object v1, v1, Ldah;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
