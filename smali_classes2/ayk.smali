.class Layk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Laxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Layj;


# direct methods
.method constructor <init>(Layj;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Layk;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laxy;Laxy;)I
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p1, Laxy;->f:J

    iget-wide v2, p2, Laxy;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Laxy;

    check-cast p2, Laxy;

    invoke-virtual {p0, p1, p2}, Layk;->a(Laxy;Laxy;)I

    move-result v0

    return v0
.end method
